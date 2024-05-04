defmodule Salty.Mixfile do
  use Mix.Project

  @source_url "https://github.com/ianleeclark/libsalty2"
  @version "0.3.0"

  def project do
    [
      app: :libsalty2,
      version: @version,
      elixir: "~> 1.9",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      compilers: [:elixir_make] ++ Mix.compilers(),
      make_clean: ["clean"],
      package: package(),
      deps: deps(),
      docs: docs()
    ]
  end

  # Configuration for the OTP application
  def application do
    [mod: {Salty.Application, []}]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:elixir_make, "~> 0.8", runtime: false}
    ]
  end

  defp package do
    [
      description:
        "An Elixir wrapper around the libsodium cryptographic library." <>
          "Based on erlang-nif.",
      name: "libsalty2",
      files: ["config", "src", "lib", "mix.exs", "Makefile", "LICENSE*", "README*"],
      maintainers: ["ian@ianleeclark.com"],
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => @source_url
      }
    ]
  end

  defp docs do
    [
      extras: [
        LICENSE: [title: "License"],
        "README.md": [title: "Overview"]
      ],
      main: "readme",
      source_url: @source_url,
      source_ref: "v#{@version}",
      formatters: ["html"]
    ]
  end
end
