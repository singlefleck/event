defmodule Event.UsersSchema.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user" do
    field :name, :string
    filed(:age, :integer, default: 0)

    timestamps()
  end

  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:name, :age])
  end
end
