defmodule PhoenixLiveViewDropzone.MixProject do
  use Mix.Project

  @version "0.0.12"

  def project do
    [
      app: :phoenix_live_view_dropzone,
      description: "A Phoenix LiveView compatible file dropzone.",
      elixir: "~> 1.10",
      version: @version,
      deps: deps(),
      docs: docs(),
      package: package(),
      compilers: [:phoenix] ++ Mix.compilers()
    ]
  end

  def application, do: []

  defp deps do
    [
      {:ex_doc, "~> 0.23.0", only: :dev},
      {:jason, "~> 1.2.0", only: :test},
      {:phoenix_live_view,
       "~> 0.11.0 or ~> 0.12.0 or ~> 0.13.0 or ~> 0.14.0 or ~> 0.15.0 or ~> 0.16.0 or ~> 0.17.0 or ~> 0.18.0 or ~> 0.19.0 or ~> 0.20.0"}
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md"],
      source_ref: "v#{@version}",
      source_url: "https://github.com/JonRowe/phoenix_live_view_dropzone"
    ]
  end

  defp package do
    [
      maintainers: ["Jon Rowe"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/JonRowe/phoenix_live_view_dropzone"},
      files: ~w(lib priv) ++ ~w(mix.exs package.json README.md)
    ]
  end
end
