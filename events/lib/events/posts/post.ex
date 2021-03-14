defmodule Events.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :date, :string
    field :title, :string
    field :body, :string
    belongs_to :user, Events.Users.User
    has_many :comments, Events.Comments.Comment
    has_many :invitations, Events.Invitations.Invitation

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:date, :title, :body, :user_id])
    |> validate_required([:date, :title, :user_id])
  end
end
