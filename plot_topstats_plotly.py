import csv
import plotly
import plotly.graph_objects as go
from plotly.subplots import make_subplots
from datetime import datetime
from config import CONFIG

tstamp = datetime.now().strftime("%Y-%m-%d")

def func(x, pos):  # format function takes tick label and tick position
    s = '%d' % x
    groups = []
    while s and s[-1].isdigit():
        groups.append(s[-3:])
        s = s[:-3]
    return s + ','.join(reversed(groups))

array = []


def plot_topstats(infile, proc):

    with open(infile, 'r') as csvfile:

        for line in csvfile.readlines():
            # get number of columns
            # print(line)
            array = line.split(',')
            first_item = array[0]

        # num_columns = len(array)
        csvfile.seek(0)

        reader = csv.reader(csvfile, delimiter=',')
        ttime = [0]
        res = [6]
        share = [7]
        cpu = [9]
        memp = [10]
        x = []
        y1 = []
        y2 = []
        y3 = []
        y4 = []

        count = 0

        for row in reader:
            if count == 0:
                count += 1
            else:
                content = list(row[i] for i in res)
                y1.append(float(content[0].strip())/1000/1000)

                content = list(row[i] for i in share)
                y2.append(float(content[0].strip())/1000/1000)

                content = list(row[i] for i in cpu)
                y3.append(content[0].strip())

                content = list(row[i] for i in memp)
                y4.append(content[0].strip())

                content = list(row[i] for i in ttime)
                try:
                    x.append(datetime.strptime(content[0].strip(), "%m-%d-%Y %H:%M:%S"))
                except Exception as e:
                    x.append(datetime.strptime(content[0].strip(), "%Y-%m-%d %H:%M:%S"))

        fig = make_subplots(rows=2, cols=1,
                            subplot_titles=("Memory (GiB)","% CPU Usage"))
        fig.add_trace(go.Scatter(x=x, y=y1, mode='lines', name='Reserved'), row=1, col=1)
        fig.add_trace(go.Scatter(x=x, y=y2, mode='lines', name='Shared'), row=1, col=1)
        fig.add_trace(go.Scatter(x=x, y=y3, mode='lines', name='% CPU Used'), row=2, col=1)
        fig.add_trace(go.Scatter(x=x, y=y4, mode='lines', name='% Memory Used'), row=2, col=1)

        fig.update_yaxes(title_text="Memory (GiB)", row=1, col=1)
        fig.update_yaxes(title_text="% CPU Used", row=2, col=1)

        fig.update_layout(
            title_text='%s: %s Memory Usage (GiB)' % (host, proc),
            font=dict(
                family="Courier New, monospace",
                size=15,
                color="#7f7f7f"),
            height=800,
            width=1000
                        )

        plotly.offline.plot(fig, filename="results/memory/%s_%s_%s.html" % (host, proc, tstamp), auto_open=False)


# plot_topstats(infile='results/memory/%s-mysqld.csv' % CONFIG.graphhost[0], proc='mysqld')

for host in CONFIG.graphhost:

    print(host)
    csvfiles = [['./results/memory/%s-mysqld.csv' % host, 'mysqld'],
                ['./results/memory/%s-solr.csv' % host, 'solr'],
                ['./results/memory/%s-systemd-journald.csv' % host, 'systemd-journald'],
                ['./results/memory/%s-dynamo.csv' % host, 'dynamo'],
                ['./results/memory/%s-tqcontroller.csv' % host, 'tqcontroller'],
                ['./results/memory/%s-tq-supervisord.csv' % host, 'tq-supervisor'],
                ['./results/memory/%s-httpd.csv' % host, 'httpd'],
                ['./results/memory/%s-worker.csv' % host, 'worker'],
                ['./results/memory/%s-memcached.csv' % host, 'memcached'],
                ['./results/memory/%s-11211.csv' % host, 'container_11211'],
                ['./results/memory/%s-5672.csv' % host, 'container_5672']
                ]

    for process in csvfiles:
        try:
            #print(process[0], process[1])
            plot_topstats(infile=process[0], proc=process[1])
        except Exception as e:
            # print("There was an error generating: %s " % process[0])
            print(e)
