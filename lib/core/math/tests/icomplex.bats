#!/usr/bin/env bats

source bashlets core::math::icomplex

w=$(bash$$ icomplex create 0 1)

@test "math/icomplex: extract real part" {
  result="$(bash$$ icomplex to_real $w)"
  expected=0
  [[ $result -eq $expected ]]
}

@test "math/icomplex: extract imaginary part" {
  result="$(bash$$ icomplex to_img $w)"
  expected=1
  [[ $result -eq $expected ]]
}

@test "math/icomplex: icomplex to string" {
  result="$(bash$$ icomplex to_s $w)"
  expected="0 + 1i"
  [[ $result == $expected ]]
}

@test "math/icomplex: compare two icomplex numbers" {
  (
    z=$(bash$$ icomplex create 0 1)
    bash$$ icomplex compare $w $z
  )
  [[ $status -eq 0 ]]
}

@test "math/icomplex: is an icomplex zero?" {
  (
    z=$(bash$$ icomplex create 0 0)
    result=$(bash$$ icomplex is_zero $z)
    bash$$ icomplex compare $result $expected
  )
  [[ $status -eq 0 ]]
}

@test "math/icomplex: negate an icomplex" {
  (
    result=$(bash$$ icomplex negate $w)
    expected=$(bash$$ icomplex create 0 -1)
    bash$$ icomplex compare $result $expected
  )
  [[ $status -eq 0 ]]
}

@test "math/icomplex: conjugate an icomplex" {
  (
    result=$(bash$$ icomplex conjugate $w)
    expected=$(bash$$ icomplex create 0 -1)
    bash$$ icomplex compare $result $expected
  )
  [[ $status -eq 0 ]]
}

@test "math/icomplex: square norm of an icomplex" {
  result="$(bash$$ icomplex norm2 $w)"
  expected=1
  [[ $result -eq $expected ]]
}

@test "math/icomplex: add two icomplex numbers" {
  (
    z=$(bash$$ icomplex create 1 0)
    result=$(bash$$ icomplex add $w $z)
    expected=$(bash$$ icomplex create 1 1)
    bash$$ icomplex compare $result $expected
  )
  [[ $status -eq 0 ]]
}

@test "math/icomplex: subtract two icomplex numbers" {
  (
    result=$(bash$$ icomplex subtract $w $w)
    bash$$ icomplex is_zero $result
  )
  [[ $status -eq 0 ]]
}

@test "math/icomplex: multiply two icomplex numbers" {
  (
    result=$(bash$$ icomplex multiply $w $w)
    expected=$(bash$$ icomplex create -1 0)
    bash$$ icomplex compare $result $expected
  )
  [[ $status -eq 0 ]]
}

@test "math/icomplex: calculate the square of an icomplex" {
  (
    result=$(bash$$ icomplex square $w)
    expected=$(bash$$ icomplex create -1 0)
    bash$$ icomplex compare $result $expected
  )
  [[ $status -eq 0 ]]
}
