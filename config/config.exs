# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :polpassy_family,
  ecto_repos: [PolpassyFamily.Repo]

# Configures the endpoint
config :polpassy_family, PolpassyFamilyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SH03HQlOtGDart1+KoMPPPd+N2Sh5c6EREXAbZa3GXD2vTQ7SxuLRj/ibdPRS4VL",
  render_errors: [view: PolpassyFamilyWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PolpassyFamily.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
