defmodule HolidayApp.Holidays.Holiday do
  use Ecto.Schema
  import Ecto.Changeset


  schema "holidays" do
    field :date, :date
    field :kind, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(holiday, attrs) do
    holiday
    |> cast(attrs, [:title, :date, :kind])
    |> validate_required([:title, :date, :kind])
  end
end
