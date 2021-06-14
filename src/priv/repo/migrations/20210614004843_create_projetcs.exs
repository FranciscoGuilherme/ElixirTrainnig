defmodule Trainning.Repo.Migrations.CreateProjetcs do
  use Ecto.Migration

  def change do
    create table(:projetcs) do
      add :title, :string
      add :description, :text

      timestamps()
    end

  end
end
