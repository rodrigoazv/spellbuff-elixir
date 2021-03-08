defmodule Spellbuff.Repo do
  use Ecto.Repo,
    otp_app: :spellbuff,
    adapter: Ecto.Adapters.Postgres
end
