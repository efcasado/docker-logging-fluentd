defmodule DummyApp.Logger.Formatter do
  def format(level, message, timestamp, metadata) do
    __format__(level, message, timestamp, metadata)
  rescue
    _ ->
      __format__(level, "#{inspect message}", timestamp, metadata)
  end

  defp __format__(level, message, timestamp, metadata) do
    %{
      level: level,
      timestamp: timestamp,
      metadata: metadata,
      message: message
    }
    |> JSON.encode!
    |> new_line()
  end

  defp new_line(str), do: "#{str}\n"
end
