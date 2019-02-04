#!/usr/local/bin/python3.4

import sys
import os
import argparse
import subprocess
import shutil

import re
from enum import Enum

class Color(Enum):
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

class Commands(Enum):
    whereis = "whereis"
    install = "make install clean"
    cd = "cd"
    config = "make config"
    rconfig = "make config-recursive"
    portmaster = "portmaster"

class Path(Enum):
    ports = "/usr/ports"
    stderr = "/dev/stderr"
    null = "/dev/null"

class Externarg(Enum):
    whereis_source_flag = " -as"

class Warnings(Enum):
    duplicate_names = """
    !! Warning !!\n
    duplicated software name found! Please choose between the following options or restart the software and specify \"subdir/software name\"
    """

class Errors(Enum):
    dependency_issue = "could not be executed, are you sure it is installed?"

def colorize_commands(command):
    return

def argparser():
    parser = argparse.ArgumentParser(description="Makes install ports easier by using whereis(1) and portmaster(1)")
    parser.add_argument("software", metavar='software name', type=str, nargs='+',
                    help="name of the FreeBSD port you wish to install")
    args = parser.parse_args()
    return args.ports


class check():
    def portmaster():
        return shutil.which(Commands.portmaster.value)
    def portexist():
        return os.path

class parse():
    def ports(port):
        path = re.match(r"(/usr/ports/)", port)
        if path:
            return re.sub(r"(/usr/ports/)", "", port)
    def path(path):
        cpath =  re.findall(r"(/usr/ports[^ ]*)", path)
        if cpath:
            return cpath
class construct():
    def command(software, args):
        return software + args + ' '


def get_portpath(port):
    whereis = construct.command(Commands.whereis.value, Externarg.whereis_source_flag.value)
    return subprocess.check_output('{} | tee /dev/stderr'.format(whereis + port), shell = True)

def install_ports(softwares):
    portmaster = Commands.portmaster.value
    ports = []
    for software in softwares:
        path = get_portpath(software).decode("UTF-8")
        path = parse.path(path)
        if len(path) >= 2:
            print(Warnings.duplicate_names.value)

        port = parse.ports(path)
        ports.append(port)
    subprocess.call([portmaster, ' '.join(ports)])


def init():
    if check.portexist() == False:
        exit()
    if check.portmaster() == None:
        print(Commands.portmaster.value, Errors.dependency_issue.value)
        exit()
    ports = argparser()

init()
