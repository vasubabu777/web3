
import makepy
from makepy.tasks import build, install
import os
import re
import sys
import shutil

def get_files_for_dir(dir_path=None,rm_prefix=None):

    delete_prefix = rm_prefix or ''
    if not dir_path:
        dir_path = os.getcwd()

    ret_array = []
    for root, dirs, files in os.walk(dir_path):
        ret_array.extend(
            [ re.sub(delete_prefix,'',os.path.join(root,x)) for x in files ])
    return ret_array

def get_regexp_l_match(path_list,re_str_list):
    re_list = [ re.compile(x) for x in re_str_list]
    ret_array = []
    for path in path_list:
        for current_re in re_list:
            if current_re.search(path):
                ret_array.append(path)
                break
    return ret_array


def rm_matching(match_list,path_list=None,dry_run=None):
    if not path_list:
        path_list = get_files_for_dir()

    for current_path in get_regexp_l_match(path_list,match_list):
        print "removing: %s" % current_path
        if not dry_run:
            os.remove(current_path)

def copy_to_prefix(src_path,dest_path,permissions=0644):
    full_dest = os.path.join(sys.prefix,dest_path)
    full_dest_dir = os.path.dirname(full_dest)
    if not os.path.isdir(full_dest_dir):
        print "making dest dir: %s" % full_dest_dir
        os.makedirs(full_dest_dir)
    print "copying %s to %s" % ( src_path, full_dest)
    shutil.copy(src_path,full_dest)
    print "setting permissions of %s to %o" % (full_dest, permissions)
    os.chmod(full_dest,permissions)

def recursive_copy(
    base_dir=None,
    rm_prefix=None,
    dest_sub_dir=None,
    re_str_list=None,
    permissions=0644
    ):
    for rel_path in  get_regexp_l_match(
        get_files_for_dir(base_dir,rm_prefix),
        re_str_list
        ):
        src_path = rel_path
        if rm_prefix:
            src_path = rm_prefix + src_path
        dest_path = os.path.join(dest_sub_dir,rel_path)
        copy_to_prefix(src_path,dest_path,permissions)



@makepy.task
def clean():
    rm_matching([ r'~$' ])

@makepy.task
def install():
    recursive_copy(
        base_dir='lib',
        rm_prefix='lib/',
        dest_sub_dir='lib/python2.5/site-packages',
        re_str_list=['.py$']
        )
