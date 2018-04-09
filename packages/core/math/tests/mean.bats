#!/usr/bin/env bats

source bashlets core::math::mean

@test "math/mean: calculate the arithmetic-geometric mean of two numbers" {
  result="$(bash$$ mean agm 2 3)"
  expected="2.47468"
  [[ $result == $expected ]]
}
