defmodule FirstModulesTest do
  use ExUnit.Case
  doctest FirstModules

  test "sum" do
    assert FirstModules.sum([1,2,3]) == 6
  end

  test "uppercase doesn't change the first word" do
    assert(FirstModules.uppercase("foo") == "foo")
  end

  test "uppercase converts the second word to uppercase" do
    assert(FirstModules.uppercase("foo bar") == "foo BAR")
  end

  test "uppercase converts every other word to uppercase" do
    assert(FirstModules.uppercase("foo bar baz whee") == "foo BAR baz WHEE")
  end

end
