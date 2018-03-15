#!/usr/bin/env bats

source bashlets core/time/date

@test "time/date: get a random date" {
  result="$(bash$$ date get_random)"
  expected="[0-9]{4}-[0-9]{2}-[0-9]{2}"
  [[ $result =~ $expected ]]
}
