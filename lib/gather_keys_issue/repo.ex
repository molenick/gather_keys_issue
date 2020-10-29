defmodule GatherKeysIssue.Repo do
  use Ecto.Repo,
    otp_app: :gather_keys_issue,
    adapter: Ecto.Adapters.Postgres
end
