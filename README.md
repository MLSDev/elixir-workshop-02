# HolidayApp

Internal MLSDev Elixir Workshop #02 - Holidays and Workdays management.

## Up and running

* Clone project
* Setup `config/*.exs` files
* `mix deps.get`
* `mix ecto.setup` # create, migrate and seed database
* `mix test`
* `iex -S mix phx.server`
* Open [http://localhost:4000](http://localhost:4000) in your browser

## Docs

* `mix docs`
* `open doc/index.html`

## Coverage

* `mix test --cover`

HTML output:
* `mix coveralls.html`
* `open cover/excoveralls.html`

## Seeds

Check `priv/repo/seeds.exs` file

## Commits

1. [Initial commit](https://github.com/MLSDev/elixir-workshop-02/tree/80efe5c4cfd37a795ff2f210cc1f0c4b6077970a)
   - Empty Phoenix project generated
   - Run `mix help phx.new` for more info
1. [Config setup](https://github.com/MLSDev/elixir-workshop-02/tree/8fd4234ca24e2cf793e6e83f1e3205a071ef976f)
   - see `config/*.secret.example.exs` files
1. [Cleanup. Removed Phoenix-generated stuff](https://github.com/MLSDev/elixir-workshop-02/tree/6491dfacf180e739232c35a67677eb1bbed632a1)
   - now this is a real initial commit
1. [Holidays context and web layer generated](https://github.com/MLSDev/elixir-workshop-02/tree/1a7fa64dd785040f431d4a8f0cf8a92704bcd6fe)
   - using Phoenix generator
   - check `mix help phx.gen.html` for more info
1. [ExMachina added for test factories](https://github.com/MLSDev/elixir-workshop-02/tree/8f48bbe495bbcfde27cca382c668631ebff57287)
   - [ExMachina](https://github.com/thoughtbot/ex_machina) is a [FactoryBot](https://github.com/thoughtbot/factory_bot) in Elixir/Phoenix world
   - in other words, it is a test data factory package
1. [Using ExMachina for tests](https://github.com/MLSDev/elixir-workshop-02/tree/45bf5948d85c2c7623f6f5782060600aee749c3e)
   - generated tests changed
   - check `test/support/conn_case.ex` and `test/support/data_case.ex` changes
1. [Default sort order added](https://github.com/MLSDev/elixir-workshop-02/tree/2f1004e7acbaecea1f2abb26ea86aca1a0b604e1)
   - holidays/workdays now sorted by date
1. [Validation added to Holiday](https://github.com/MLSDev/elixir-workshop-02/tree/9a99ca7c2f4f25883b1f1f8ba3a5a73e19f8c033)
   - check `changeset/2` function of `Holiday` module
1. [Holiday form updated](https://github.com/MLSDev/elixir-workshop-02/tree/d98cc5055e79cd4a25c33fe6c413b80e5312d038)
   - select holiday kind (holiday, workday) from dropdown list
1. [Holidays.list_holidays now works with date ranges](https://github.com/MLSDev/elixir-workshop-02/tree/793ba42273688c02cb0ecb66555db2b120ab59c6)
   - check `Holidays.list_holidays(start_date, end_date)` function
1. [HolidayController updated. Date range form added to :index](https://github.com/MLSDev/elixir-workshop-02/tree/6261ddfdf8e900ef0686ffeff89e5476332413ab)
   - now filtering holidays by date range
1. [FallbackController added](https://github.com/MLSDev/elixir-workshop-02/tree/594afb22d5c602874155c724ed04d6f3d7d194e3)
   - handle errors with ease
1. [ExCoveralls added](https://github.com/MLSDev/elixir-workshop-02/tree/7570f45b940839dc6d63d7bf43251b7c389b5b4a)
   - how to add code coverage to your project
1. [ExDoc added](https://github.com/MLSDev/elixir-workshop-02/tree/fe31009f43f8fbb236059ec2a526116c055468ad)
   - how to add doc generating capabilities
1. [Seeds added](https://github.com/MLSDev/elixir-workshop-02/tree/401e614c7fcea2bf11fb7d2bde52528075feaf81)
   - how to add initial data to db
   - `mix run priv/repo/seeds.exs`
