defmodule ListLengthTest do
  use ExUnit.Case

  describe "call/1" do
    test "count odd elements" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]

      assert FilterAndCountOdd.call(list1) == 3
    end

    test "passing an empty list" do
      list = []

      assert FilterAndCountOdd.call(list) == 0
    end
  end
end
