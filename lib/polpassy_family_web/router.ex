defmodule PolpassyFamilyWeb.Router do
  use PolpassyFamilyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug :fetch_session
  end

  scope "/api", PolpassyFamilyWeb do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
    post "/users/sign-in", UserController, :sign_in
  end
end
