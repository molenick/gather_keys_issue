# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :gather_keys_issue,
  ecto_repos: [GatherKeysIssue.Repo]

# Configures the endpoint
config :gather_keys_issue, GatherKeysIssueWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JDd5P8o5Pb195x6azvuIhuQiWRKl6eiQUlYsZtp2cHQl6cnAoYrDtkVkTaI+TYAe",
  render_errors: [view: GatherKeysIssueWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GatherKeysIssue.PubSub,
  live_view: [signing_salt: "FPnLk0e+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
