defmodule DummyApp.Logger.Formatter do
  def format(level, message, timestamp, metadata) do
    %{
      level: level,
      timestamp: timestamp,
      metadata: metadata,
      message: message
    } |> JSON.encode!
  end
end
