defmodule Events.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string, null: false
      add :email, :string, null: false
      add :photo_hash, :text, null: false, default: ""

      timestamps()
    end

  end
end
