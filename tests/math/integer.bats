#!/usr/bin/env bats

source bashlet math/integer

@test "math/integer: absolute value of an integer" {
  result="$(bash$$ integer abs -1)"
  expected=1
  [[ $result -eq $expected ]]
}

@test "math/integer: sign of an integer" {
  result="$(bash$$ integer sign -1)"
  expected=-1
  [[ $result -eq $expected ]]
}

@test "math/integer: factor an integer into unique factors" {
  result="$(bash$$ integer get_unique_factors 64)"
  expected="6 2"
  [[ $result =~ $expected ]]
}

@test "math/integer: calculate the modular power of an integer" {
  result="$(bash$$ integer modular_pow 7 256 13)"
  expected=9
  [[ $result -eq $expected ]]
}
