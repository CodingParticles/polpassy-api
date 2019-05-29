defmodule PolpassyFamily.Repo do
  use Ecto.Repo,
    otp_app: :polpassy_family,
    adapter: Ecto.Adapters.Postgres
end
