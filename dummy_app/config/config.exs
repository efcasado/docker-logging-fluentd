use Mix.Config

config :logger, backends: [Ink]
config :logger, Ink,
  name: "dummy_app",
  level: :info
