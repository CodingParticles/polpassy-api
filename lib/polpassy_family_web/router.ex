defmodule PolpassyFamilyWeb.Router do
  use PolpassyFamilyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PolpassyFamilyWeb do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
  end
end
