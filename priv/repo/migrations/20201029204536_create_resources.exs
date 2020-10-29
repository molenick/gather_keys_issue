defmodule GatherKeysIssue.Repo.Migrations.CreateResources do
  use Ecto.Migration

  def change do
    create table(:resources) do
      add :description, :string

      timestamps()
    end

  end
end
