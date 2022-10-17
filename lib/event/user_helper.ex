defmodule Event.UserSchema do
  import Ecto.Query

  alias Event.UserSchema.User
  alias Event.Repo

  def all_users do
    Repo.all(User)
  end

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def get_user_by_name(name) do
    Repo.get_by(User, name: name)
  end
end
