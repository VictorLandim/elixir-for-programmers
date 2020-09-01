defmodule Cli.MixProject do
  use Mix.Project

  def project do
    [
      app: :cli,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      included_applications: [:hangman],
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:hangman, path: "../hangman"}
    ]
  end
end