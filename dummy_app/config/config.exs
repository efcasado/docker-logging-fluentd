use Mix.Config

config :logger,
  backends: [:console],
  utc_log: true,
  handle_otp_reports: true,
  handle_sasl_reports: true

config :logger, :console,
  format: {DummyApp.Logger.Formatter, :format}
