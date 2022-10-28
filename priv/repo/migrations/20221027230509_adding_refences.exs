defmodule Event.Repo.Migrations.AddingRefences do
  use Ecto.Migration

  def change do
    alter table(:event,primary_key: false) do
      add :event_id, :uuid,primary_key: true, null: false
      add :user_id, reference(:user,:user_id)

  end

  alter table(:user, primary_key: false) do
    add :user_id, :uuid, primary_key: true, null: false 
  end
end
