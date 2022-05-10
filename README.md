# EarmarkReversal

Convert an [Earmark AST](https://hex.pm/packages/earmark_parser) back to a Markdown string. All the code in this package has been ripped out of the [Livebook](https://github.com/livebook-dev/livebook) project (specifically the https://github.com/livebook-dev/livebook/blob/main/lib/livebook/live_markdown/markdown_helpers.ex) so it can be used as a standalone helper.  No original code has been written for this package, so all credit should go to the original Livebook author [Jonatan Kłosko](https://github.com/jonatanklosko) :clap:

## Usage

```elixir
{:ok, ast, []} = EarmarkParser.as_ast("I just love **bold text**.")
EarmarkReversal.markdown_from_ast(ast)
"I just love **bold text**."
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `earmark_reversal` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:earmark_reversal, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/earmark_reversal>.

# LICENSE

Same as Livebook (and Elixir), which is Apache License v2.0. Please refer to [LICENSE](LICENSE) for details.
