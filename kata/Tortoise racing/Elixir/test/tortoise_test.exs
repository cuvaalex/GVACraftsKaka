defmodule TortoiseTest do
  use ExUnit.Case

  alias Tortoise

  @moduletag :capture_log

  doctest Tortoise

  test "if the tortoise 1 speed is faster than tortoise 2, then return nil" do
    v1 = 10
    v2 = 5
    lead = 0

    assert(Tortoise.race(v1, v2, lead) == nil)
  end

  test "if both tortoise speed are same, then return nil" do
    v1 = 1
    v2 = 1
    lead = 0

    assert(Tortoise.race(v1, v2, lead) == nil)
  end

  test "result less than a min: if v1=1 and v2=361 with a lead of 1, then should return [0, 0, 10]" do
    v1 = 1
    v2 = 361
    lead = 1

    assert(Tortoise.race(v1, v2, lead) == [0, 0, 10])
  end

  test "result less than an hour: if v1=100 and v2=130 with a lead of 1, then should return [0, 2, 0]" do
    v1 = 100
    v2 = 130
    lead = 1

    assert(Tortoise.race(v1, v2, lead) == [0, 2, 0])
  end

  test "result an hour: if v1=10 and v2=11 with a lead of 1, then should return [1, 0, 0]" do
    v1 = 10
    v2 = 11
    lead = 1

    assert(Tortoise.race(v1, v2, lead) == [1, 0, 0])
  end

  test "result mix: if v1=720 and v2=850 with a lead of 70, then should return [0, 32, 18]" do
    v1 = 720
    v2 = 850
    lead = 70

    assert(Tortoise.race(v1, v2, lead) == [0, 32, 18])
  end


end
