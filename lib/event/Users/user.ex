defmodule Event.UserSchema.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user" do
    field :name, :string
    field :age, :integer
  end

  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:name, :age])
  end
end
