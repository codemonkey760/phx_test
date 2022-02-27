import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_test, PhxTestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "95tTUEbxPLZvR4OStv5Cr/8td0WmBhxCxyZ4V6QlPNi498c8yaj4dC1r+93HKwoM",
  server: false

# In test we don't send emails.
config :phx_test, PhxTest.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
