defmodule TrainningWeb.ProjectView do
  use TrainningWeb, :view
  alias TrainningWeb.ProjectView

  def render("index.json", %{projetcs: projetcs}) do
    %{data: render_many(projetcs, ProjectView, "project.json")}
  end

  def render("show.json", %{project: project}) do
    %{data: render_one(project, ProjectView, "project.json")}
  end

  def render("project.json", %{project: project}) do
    %{id: project.id,
      title: project.title,
      description: project.description}
  end
end
