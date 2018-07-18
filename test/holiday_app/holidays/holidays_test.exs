defmodule HolidayApp.HolidaysTest do
  use HolidayApp.DataCase

  alias HolidayApp.Holidays

  describe "holidays" do
    alias HolidayApp.Holidays.Holiday

    test "list_holidays/0 returns all holidays" do
      holiday = insert(:holiday)
      assert Holidays.list_holidays() == [holiday]
    end

    test "list_holidays/0 sorts all holidays by date, ascending" do
      insert(:holiday, %{date: ~D[2018-12-25]})
      insert(:holiday, %{date: ~D[2018-01-07]})

      [xmas1, xmas2] = Holidays.list_holidays()
      assert xmas1.date == ~D[2018-01-07]
      assert xmas2.date == ~D[2018-12-25]
    end

    test "get_holiday!/1 returns the holiday with given id" do
      holiday = insert(:holiday)
      assert Holidays.get_holiday!(holiday.id) == holiday
    end

    test "create_holiday/1 with valid data creates a holiday" do
      attrs = params_for(:holiday)
      assert {:ok, %Holiday{} = holiday} = Holidays.create_holiday(attrs)
      assert holiday.date == attrs[:date]
      assert holiday.kind == attrs[:kind]
      assert holiday.title == attrs[:title]
    end

    test "create_holiday/1 with invalid data returns error changeset" do
      attrs = %{kind: nil}
      assert {:error, %Ecto.Changeset{}} = Holidays.create_holiday(attrs)
    end

    test "update_holiday/2 with valid data updates the holiday" do
      holiday = insert(:holiday, kind: "holiday")
      attrs = %{kind: "workday"}
      assert {:ok, holiday} = Holidays.update_holiday(holiday, attrs)
      assert %Holiday{} = holiday
      assert holiday.kind == "workday"
    end

    test "update_holiday/2 with invalid data returns error changeset" do
      holiday = insert(:holiday)
      attrs = %{kind: nil}
      assert {:error, %Ecto.Changeset{}} = Holidays.update_holiday(holiday, attrs)
      assert holiday == Holidays.get_holiday!(holiday.id)
    end

    test "delete_holiday/1 deletes the holiday" do
      holiday = insert(:holiday)
      assert {:ok, %Holiday{}} = Holidays.delete_holiday(holiday)
      assert_raise Ecto.NoResultsError, fn -> Holidays.get_holiday!(holiday.id) end
    end

    test "change_holiday/1 returns a holiday changeset" do
      holiday = insert(:holiday)
      assert %Ecto.Changeset{} = Holidays.change_holiday(holiday)
    end
  end
end
