defmodule Events.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :email, :string
    field :photo_hash, :string
    has_many :posts, Events.Posts.Post
    has_many :comments, Events.Comments.Comment
    has_many :invitations, Events.Invitations.Invitation

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :photo_hash, :email])
    |> validate_required([:name, :email])
  end
end
