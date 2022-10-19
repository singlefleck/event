defmodule Event.EventSchema do
  import Ecto.Query, warn: false

  alias Event.Repo
  alias Event.EventSchema.Event

  def list_all_events do
    Repo.all(Event)
  end

  def create_event(attrs) do
    %Event{}
    |> Event.changeset(attrs)
    |> Repo.insert()
  end

  # attrs as string
  def get_event_by_titile(attrs) do
    Repo.get_by(Event, event_title: attrs)
  end

  def delete_event_title(attrs) do
    data = get_event_by_titile(attrs)
    Repo.delete(data)
  end

  def update_event_by_title(title, new_title) do
    event = get_event_by_titile(title)
    IO.inspect(event)

    new_map = %{
      event_title: "ram"
    }

    event
    |> Event.changeset(new_map)
    |> IO.inspect()
    |> Repo.update()
  end

  def get_event_by_host do
  end

  def get_event_by do
  end
end
