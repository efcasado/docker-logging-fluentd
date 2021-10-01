defmodule DummyApp.Router do
  use Plug.Router
  require Logger

  plug Plug.Logger, log: :debug
  plug :match
  plug :dispatch

  get "/hello" do
    Logger.info("Hello, world!")
    send_resp(conn, 200, "Hello, world!")
  end

  get "/hello/:name" do
    Logger.info("Hello, #{name}!")
    send_resp(conn, 200, "Hello, #{name}!")
  end

  match _ do
    Logger.info("Oops!")
    send_resp(conn, 404, "Oops!")
  end
end
