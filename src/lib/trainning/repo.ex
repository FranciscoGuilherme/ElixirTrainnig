defmodule Trainning.Repo do
  use Ecto.Repo,
    otp_app: :trainning,
    adapter: Ecto.Adapters.Postgres
end
