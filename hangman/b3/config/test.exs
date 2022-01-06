import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :b3, B3Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "9qJruZZeDssvyuUuqRDvjnGU/iUWvhNp4FF1PyfEi9sQ4lQ6yfCWfc02BB639Wa0",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
