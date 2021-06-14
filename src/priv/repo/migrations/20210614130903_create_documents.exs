defmodule Trainning.Repo.Migrations.CreateDocuments do
  use Ecto.Migration

  def change do
    create table(:documents) do
      add :project_id, references(:projetcs)
      add :name, :string
      add :content, :text
      add :view_content, :integer
      add :published, :boolean, default: false

      timestamps()
    end

  end
end
