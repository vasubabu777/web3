import os
import re
from pprint import pprint as pp


def match_walk_gen(search_re,base_dir=None):
    base_dir = base_dir or os.getcwd()
    for root, dirs, files in os.walk(base_dir):
        for file_name in files:
            path = os.path.join(root,file_name)
            if search_re.search(path):
                yield path


search_re = re.compile(r'(\.pl$)|(\.conf$)|(/FullBaseInstallDirArray)|(template$)|(capfile)')

file_list = []

for path in match_walk_gen(search_re):
    file_list.append(path)

pp(file_list)
