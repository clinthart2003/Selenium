import csv
import simplejson as json
import pprint

import io
try:
    to_unicode = unicode
except NameError:
    to_unicode = str

filename = r'te-13321-solr-05-13-2018_14-16'

csvfile = open('results/memory/%s.csv' % filename, 'r')
jsonfile = 'results/memory/%s.json' % filename


data = []
data.insert(0, filename + ':')
for row in csv.DictReader(csvfile):
    data.append (row)

json_data = json.dumps(data)

#print json_data
pprint.pprint(json.loads(json_data))

with io.open(jsonfile, 'w', encoding='utf-8') as outfile:
    outfile.write (json.dumps(data, ensure_ascii=False))