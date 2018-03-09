#!/usr/bin/env bats

source bashlet time/month

@test "time/month: count days in month" {
  result="$(bash$$ month count_days 1)"
  expected=31
  [[ $result -eq $expected ]]
}
