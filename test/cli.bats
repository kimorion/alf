#!/usr/bin/env bats
load test_helper
export ALF_SUPRESS_RUN=false

@test "cli without args, shows usage" {
  run ./alf
  [ "$status" -eq 0 ]
  [ ${lines[0]} = "Usage:" ]
}

@test "cli --help, shows detailed usage" {
  run ./alf --help
  [ "$status" -eq 0 ]
  [ ${lines[0]} =~ "Your Little Bash Alias Friend" ]
}
