# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :trainning,
  ecto_repos: [Trainning.Repo]

# Configures the endpoint
config :trainning, TrainningWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "A0LcB7FL3mcrvHQ+bPVRTwfYPa9xKLaF7seWKNqnX3evSojSfB1q5GfKJZhW1m93",
  render_errors: [view: TrainningWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Trainning.PubSub,
  live_view: [signing_salt: "nlQhiYaj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
