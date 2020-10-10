defmodule ExMon do
  alias ExMon.{Player, Game}
  alias ExMon.Game.Status

  @computer_name "Robot"
  @default_user "Gabriel"

  def create_player(name, move_avg, move_rnd, move_heal) do
    Player.build(name, move_avg, move_rnd, move_heal)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:punch, :kick, :heal)
    |> Game.start(player)

    Status.print_round_message()
  end

  def test_game do
    computer =
      @computer_name
      |> create_player(:punch, :kick, :heal)

    player =
      @default_user
      |> create_player(:punch, :kick, :heal)

    Game.start(computer, player)

    Status.print_round_message()
  end
end
