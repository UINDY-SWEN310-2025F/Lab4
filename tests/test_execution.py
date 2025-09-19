import pytest
import os
from pathlib import Path
import filecmp


def test_pc_pid_output1():
  cwd = os.getcwd()
  stdout_file = cwd + "/tests/pc_pid_out"
  f = open(stdout_file)
  stdout_file_content = f.read()
  f.close()

  substring = "Parent Process"
  count = stdout_file_content.count(substring)

  if count >= 11:
    assert True
  else:
    assert False

def test_myfork_output1():
  cwd = os.getcwd()
  stdout_file = cwd + "/tests/myfork_out"
  f = open(stdout_file)
  stdout_file_content = f.read()
  f.close()
  print("-----")
  print(stdout_file)
  substring = "here"
  count = stdout_file_content.count(substring)

  if count > 5:
    assert True
  else:
    assert False


def test_exec_output1():
  cwd = os.getcwd()
  stdout_file = cwd + "/tests/exec_out1"
  f = open(stdout_file)
  stdout_file_content = f.read()
  f.close()
  print("-----")
  print(stdout_file)
  substring = "Hello, Alex"
  count = stdout_file_content.count(substring)

  if count == 1:
    assert True
  else:
    assert False

def test_exec_output2():
  cwd = os.getcwd()
  stdout_file = cwd + "/tests/exec_out2"
  f = open(stdout_file)
  stdout_file_content = f.read()
  f.close()
  print("-----")
  print(stdout_file)
  substring = "Hello,"
  count = stdout_file_content.count(substring)

  if count == 1:
    assert True
  else:
    assert False