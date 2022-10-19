defmodule Event.EventSchema.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "event" do
    field :event_discription, :string
    field :event_title, :string
    field :event_host, :string
    field :event_location, :string
    field :event_type, :string
    field :event_time, :utc_datetime
    field :event_attendees, :string
    field :event_duration, :utc_datetime
    timestamps()
  end

  def changeset(event, attrs) do
    event
    |> cast(attrs, [
      :event_discription,
      :event_title,
      :event_location,
      :event_host,
      :event_type,
      :event_time,
      :event_attendees,
      :event_duration
    ])
  end
end
