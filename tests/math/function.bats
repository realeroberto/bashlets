#!/usr/bin/env bats

source bashlet math/function

@test "math/function: roughly estimate a square root" {
  result="$(bash$$ function rough_sqrt 50)"
  expected=8
  [[ $result -eq $expected ]]
}

@test "math/function: calculate a square root" {
  result="$(bash$$ function sqrt 64)"
  expected=8
  [[ $result -eq $expected ]]
}
