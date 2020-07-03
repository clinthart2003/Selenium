#!/usr/bin/env python

import subprocess

def sum_priocesses (cmd):

    csv = []

    # print cmd

    processes = subprocess.Popen(cmd,
                                 shell=True,
                                 stdout=subprocess.PIPE,
                               )
    stdout_list = processes.communicate()[0].split('\n')

    for line in stdout_list:
        csv.append(','.join(line.split()))

    # for line in csv:
        # print line

    virt = 0
    rss = 0
    sha = 0
    cpu = float(0.0)
    memp = float(0.0)

    # sum 4, 5, 6, 8, 9
    for proc in csv:
        # print proc
        if proc:
            virt = virt + int(proc.split(',')[4])
            rss = rss + int(proc.split(',')[5])
            sha = sha + int(proc.split(',')[6])
            cpu = cpu + float(proc.split(',')[8])
            memp = memp + float (proc.split(',')[9])

    # print virt, rss, sha, cpu, memp

    if "php" in cmd:

        out = "proc,artisan,20,0,%d,%d,%d,R,%.1f,%.1f,0:20.23,worker" % (virt, rss, sha, cpu, memp)

    else:

        out = "proc,apache,20,0,%d,%d,%d,R,%.1f,%.1f,0:20.23,httpd" % (virt, rss, sha, cpu, memp)

    return out


commands= [
           ["top -b -n 1 -u apache | grep apache", 0],
           ["top -b -n 1 | grep php", 0]
          ]

for cmd in commands:

    out = ''

    try:

        out = sum_priocesses(cmd[0])

        print (out)

    except Exception as e:

        print (e)

