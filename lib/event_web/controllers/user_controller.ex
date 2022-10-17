defmodule EventWeb.UserController do
  use EventWeb, :controller

  alias Event.UserSchema

  def create_user(conn, attrs) do
    {:ok, data} = UserSchema.create_user(attrs)
    final = Map.drop(data, [:__meta__, :__struct__])
    json(conn, final)
  end

  def delete_user(conn, attrs) do
    IO.inspect(attrs)
    %{"name" => name} = attrs

    {:ok, data} = UserSchema.delete_user_by_name(name)
    final = Map.drop(data, [:__meta__, :__struct__])
    json(conn, final)
  end
end
