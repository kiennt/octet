defmodule PatternMatchingBench do
  use Benchfella
  require Octet

  @test_string "0085b9495339e483c5837f0085b8824e5a4b839d29af0088b83b5339ec327d7f88f439ce75c875fa570084b958d33f8163"
  @test_bin <<0, 133, 185, 73, 83, 57, 228, 131, 197, 131, 127, 0, 133, 184, 130, 78, 90, 75, 131, 157, 41, 175, 0, 136, 184, 59, 83, 57, 236, 50, 125, 127, 136, 244, 57, 206, 117, 200, 117, 250, 87, 0, 132, 185, 88, 211, 63, 129, 99>>

  bench "octet string to bin" do
    Octet.string_to_bin(@test_string)
  end

  bench "octet bin to string" do
    Octet.bin_to_string(@test_bin)
  end
end
