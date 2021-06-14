defmodule Trainning.Management do
  @moduledoc """
  The Management context.
  """

  import Ecto.Query, warn: false
  alias Trainning.Repo

  alias Trainning.Management.Project
  alias Trainning.Management.Document

  @doc false
  def list_projetcs do
    Repo.all(Project)
  end

  @doc false
  def get_project!(id), do: Repo.get!(Project, id)

  @doc false
  def create_project(attrs \\ %{}) do
    %Project{}
    |> Project.changeset(attrs)
    |> Repo.insert()
  end

  @doc false
  def update_project(%Project{} = project, attrs) do
    project
    |> Project.changeset(attrs)
    |> Repo.update()
  end

  @doc false
  def delete_project(%Project{} = project) do
    Repo.delete(project)
  end

  @doc false
  def change_project(%Project{} = project, attrs \\ %{}) do
    Project.changeset(project, attrs)
  end

  alias Trainning.Management.Document

  @doc false
  def list_documents do
    Repo.all(Document)
  end

  @doc false
  def get_document!(id), do: Repo.get!(Document, id)

  @doc false
  def create_document(attrs \\ %{}) do
    %Document{}
    |> Document.changeset(attrs)
    |> Repo.insert()
  end

  @doc false
  def update_document(%Document{} = document, attrs) do
    document
    |> Document.changeset(attrs)
    |> Repo.update()
  end

  @doc false
  def delete_document(%Document{} = document) do
    Repo.delete(document)
  end

  @doc false
  def change_document(%Document{} = document, attrs \\ %{}) do
    Document.changeset(document, attrs)
  end
end
