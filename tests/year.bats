#!/usr/bin/env bats

source bashlets core/time/year

@test "time/year: is a given year a leap year?" {
  (bash$$ year is_leap 2000)
  [[ $status -eq 0 ]]
}
