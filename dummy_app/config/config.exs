use Mix.Config

config :logger,
  backends: [:console],
  format: {DummyApp.Logger.Formatter, :format},
  utc_log: true,
  handle_otp_reports: true,
  handle_sasl_reports: true
