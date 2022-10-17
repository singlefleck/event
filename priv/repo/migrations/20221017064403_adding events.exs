defmodule :"Elixir.Event.Repo.Migrations.Adding events" do
  use Ecto.Migration

  def change do
    create table"event" do

      add :event_discription, :string
      add :event_duration, :utc_datetime
      add :event_title, :string
      add :event_host, :string
      add :event_location, :string
      add :event_type, :string
      add :event_time, :utc_datetime
      add :event_attendees, :string
      
      timestamps
    end

    alter table"user" do
      timestamps default: "2016-01-01 00:00:01", null: false
    end


  end
end
