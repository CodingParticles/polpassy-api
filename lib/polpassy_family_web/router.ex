defmodule PolpassyFamilyWeb.Router do
  use PolpassyFamilyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PolpassyFamilyWeb do
    pipe_through :api
  end
end
