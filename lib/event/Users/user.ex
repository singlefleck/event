defmodule Event.UsersSchema.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user" do
    field :user_name, :string

    timestamps()
  end

  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:user_name])
  end
end
