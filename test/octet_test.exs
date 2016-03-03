defmodule OctetTest do
  use ExUnit.Case
  doctest Octet

  test "string to bin" do
    assert Octet.string_to_bin("0001020304")  == <<0, 1, 2, 3, 4>>
  end

  test "bin to string" do
    assert Octet.bin_to_string(<<0, 1, 2, 3, 4>>) == "0001020304"
  end
end
