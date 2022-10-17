defmodule Event.EventSchema do
  import Ecto.Query

  alias Event.Repo
  alias Event.EventSchema.Event

  def list_all_events do
    Repo.all(Event)
  end

  def create_event(attrs \\ %{}) do
    %Event{}
    |> Event.changeset(attrs)
    |> Repo.insert()
  end
end
