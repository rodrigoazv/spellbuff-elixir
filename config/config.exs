# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :spellbuff,
  ecto_repos: [Spellbuff.Repo]

# Configures the endpoint
config :spellbuff, SpellbuffWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/zMPNJVlrs5o/VvMDGry9LvyWsEXvl55LRSTP2/VDlLFER4bkYKOKdzz35mSKjVE",
  render_errors: [view: SpellbuffWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Spellbuff.PubSub,
  live_view: [signing_salt: "fTtBklsS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
