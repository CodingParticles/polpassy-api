use Mix.Config

# Configure your database
config :polpassy_family, PolpassyFamily.Repo,
  username: "postgres",
  password: "postgres",
  database: "polpassy_family_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :polpassy_family, PolpassyFamilyWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
