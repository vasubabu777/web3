import os
import shutil
from string import Template
import re


def replace_dict_for_filename(file_name,repl_dict):
    search_list = repl_dict.keys()
    search_list.sort()
    search_list.reverse()
    for search_str in search_list:
        current_match = re.search(search_str,file_name)
        if current_match:
            file_name = re.sub(search_str,repl_dict[search_str],file_name)
    return file_name


def mv_repl(repl_dict,base_dir=None):
    base_dir = base_dir or os.getcwd()
    for root, dirs, files in os.walk(base_dir):
        for current_file in files:
            new_file = replace_dict_for_filename(current_file,repl_dict)
            old_full_path = os.path.join(base_dir,root,current_file)
            new_full_path = os.path.join(base_dir,root,new_file)
            if  old_full_path != new_full_path:
                print "moving %s to %s" % ( old_full_path, new_full_path)
                shutil.move(old_full_path, new_full_path)


if __name__ == '__main__':
    sub_dict = {
        'aas_2012_1' : 'aas_2012_1_1'}
    mv_repl(sub_dict)
