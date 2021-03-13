defmodule Events.Repo.Migrations.CreateInvitations do
  use Ecto.Migration

  def change do
    create table(:invitations) do
      add :response, :text, null: false, default: "No Response"
      add :post_id, references(:posts, on_delete: :nothing), null: false
      add :user_id, references(:users, on_delete: :nothing), null: false

      timestamps()
    end

    create index(:invitations, [:post_id])
    create index(:invitations, [:user_id])
  end
end
