import os

html_list = []
lable_list = []



def create_list():
    files = os.listdir('results/memory')

    for f in sorted(files):

        # filter and sort the list of files
        if ('html' in f) and ('View' not in f) and ('blank' not in f):

            html_list.append(f)
            i = f.split('.html')[0]
            lable_list.append(i)

    with open('results/memory/graphList.csv', 'w') as f:
        f.write('value,label' + '\n')
        f.write('blank.html,' + '\"--Select a file--\"' + '\n')
        for i, j in zip(html_list, lable_list):
            f.write(str(i).strip() + ',' + '\"' + str(j).strip() + '\"' + '\n')
    f.close()



create_list()
