defmodule PolpassyFamilyWeb.Router do
  use PolpassyFamilyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug :fetch_session
  end

  pipeline :api_auth do
    plug :ensure_authenticated
  end

  scope "api", PolpassyFamilyWeb do
    pipe_through :api

    post "/users/sign-in", UserController, :sign_in
  end

  scope "/api", PolpassyFamilyWeb do
    pipe_through [:api, :api_auth]

    resources "/users", UserController, except: [:new, :edit]
  end

  # plug function
  defp ensure_authenticated(conn, _opts) do
    current_user_id = get_session(conn, :current_user_id)

    if current_user_id do
      conn
    else
      conn
      |> put_status(:unauthorized)
      |> render(PolpassyFamilyWeb.ErrorView, "401.json", message: "Unauthenticated user")
      |> halt()
    end
  end
end
