defmodule EventWeb.UserController do
  use EventWeb, :controller

  alias Event.UserSchema

  def create_user(conn, attrs) do
    IO.inspect(attrs)
    {:ok, data} = UserSchema.create_user(attrs)
    final = Map.drop(data, [:__meta__, :__struct__])
    json(conn, final)
  end

  def delete_user(conn, attrs) do
    %{"name" => name} = attrs

    {:ok, data} = UserSchema.delete_user_by_name(name)
    final = Map.drop(data, [:__meta__, :__struct__])
    json(conn, final)
  end

  def get_user(conn, attrs) do
    IO.inspect(attrs)
    %{"name" => name} = attrs
    {:ok, data} = UserSchema.get_user_by_name(name)

    final = Map.drop(data, [:__meta__, :__struct__])
    json(conn, final)
  end

  def all_users(conn, _params) do
    data = UserSchema.all_users()
    IO.puts("start timer")

    spawn(fn ->
      IO.puts("start child time process")
      :timer.sleep(100_000)
      IO.puts("ends child time process")
    end)

    IO.puts("end timer")
    final = Enum.map(data, &Map.drop(&1, [:__meta__, :__struct__]))
    json(conn, final)
  end

  def test(conn, _params) do
    IO.puts("test route trigger")
    a = "string"
    json(conn, a)
  end
end
