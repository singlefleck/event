defmodule :"Elixir.Event.Repo.Migrations.Adding user" do
  use Ecto.Migration

  def change do
    create table("user") do
      add :name, :string
      add :age, :integer
    end

  end
end
  