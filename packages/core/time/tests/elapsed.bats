#!/usr/bin/env bats

source bashlets core::time::elapsed

@test "time/elapsed: format a number of seconds" {
  result="$(bash$$ elapsed seconds_to_formatted 86400)"
  expected="01:00:00:00"
  [[ $result == $expected ]]
}

@test "time/elapsed: describe a number of seconds" {
  result="$(bash$$ elapsed seconds_to_description 86400)"
  expected="1 day(s), 0 hour(s), 0 minute(s), 0 second(s)"
  [[ $result == $expected ]]
}
