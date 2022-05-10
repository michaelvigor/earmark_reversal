defmodule EarmarkReversal.MixProject do
  use Mix.Project

  @version "0.1.0"
  @description "Convert an Earmark AST back to Markdown. Extracted from the Livebook project."

  def project do
    [
      app: :earmark_reversal,
      version: @version,
      description: @description,
      name: "EarmarkReversal",
      elixir: "~> 1.13",
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:earmark_parser, "~> 1.4", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      main: "EarmarkReversal",
      source_url: "https://github.com/michaelvigor/earmark_reversal",
      source_ref: "v#{@version}"
    ]
  end

  def package do
    [
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => "https://github.com/michaelvigor/earmark_reversal"
      }
    ]
  end
end
