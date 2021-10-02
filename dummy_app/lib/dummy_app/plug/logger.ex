defmodule DummyApp.Plug.Logger do
  require Logger
  alias Plug.Conn
  @behaviour Plug

  @impl true
  def init(opts) do
    Keyword.get(opts, :log, :info)
  end

  @impl true
  def call(conn, level) do
    req =
      %{
        method: conn.method,
        path: conn.request_path,
        query_string: conn.query_string,
        headers: conn.req_headers,
        remote_ip: conn.remote_ip
      }
    Logger.log(level, req)

    Conn.register_before_send(conn, fn conn ->
      res =
      %{
        status: conn.status,
        body: conn.resp_body,
        headers: conn.resp_headers
      }

      Logger.log(level, res)
      conn
    end)
  end
end
