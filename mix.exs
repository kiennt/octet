defmodule Octet.Mixfile do
  use Mix.Project

  def project do
    [app: :octet,
     version: "0.0.1",
     elixir: "~> 1.2",
     description: description,
     package: package,
     deps: deps]
  end

  defp description do
    "Octet string converter"
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Kien Nguyen Trung"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/kiennt/octet",
      }
    ]
  end

  defp deps do
    [
      {:benchfella, "~> 0.3.0", only: [:dev]},
      {:ex_doc, only: [:dev]},
      {:markdown, github: "devinus/markdown", only: [:dev]}
    ]
  end
end
