defmodule Events.Invitations.Invitation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "invitations" do
    field :response, :string
    field :post_id, :id
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(invitation, attrs) do
    invitation
    |> cast(attrs, [:response])
    |> validate_required([:response])
  end
end
