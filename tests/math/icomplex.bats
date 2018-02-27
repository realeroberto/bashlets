#!/usr/bin/env bats

source bashlet math/icomplex

@test "math/icomplex: extract real part" {
  result="$(
    w=$(bash$$ icomplex create 0 1)
    bash$$ icomplex to_real $w
  )"
  expected=0
  [[ $result -eq $expected ]]
}

@test "math/icomplex: extract imaginary part" {
  result="$(
    w=$(bash$$ icomplex create 0 1)
    bash$$ icomplex to_img $w
  )"
  expected=1
  [[ $result -eq $expected ]]
}
