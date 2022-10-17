defmodule Event.UserSchema do
  import Ecto.Query, warn: false

  alias Event.UserSchema.User
  alias Event.Repo

  def all_users do
    Repo.all(User)
  end

  def create_user(attrs) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def get_user_by_name(name) do
    Repo.get_by(User, name: name)
  end

  def delete_user_by_name(name) do
    user_data = get_user_by_name(name)

    Repo.delete(user_data)
  end
end
