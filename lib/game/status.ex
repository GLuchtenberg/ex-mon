defmodule ExMon.Game.Status do
  def print_round_message(%{status: :started} = info) do
    IO.puts("\n========= Game On =========\n")
    IO.inspect(info)
    IO.puts("--------------------\n")
  end

  def print_round_message(%{status: :continue, turn: player} = info) do
    IO.puts("\n========= It's #{player} turn. =========\n")
    IO.inspect(info)
    IO.puts("--------------------\n")
  end

  def print_round_message(%{status: :game_over} = info) do
    IO.puts("\n========= The game is over. =========\n")
    IO.inspect(info)
    IO.puts("--------------------\n")
  end

  def print_wrong_move_message(move), do: IO.puts("Invalid move #{move}\n")

  def print_move_message(:computer, :attack, damage) do
    IO.puts("The player has attacked the computer dealing #{damage} points of damage \n")
  end

  def print_move_message(:player, :attack, damage) do
    IO.puts("The computer has attacked the player dealing #{damage} points of damage \n")
  end

  def print_move_message(player, :heal, points) do
    IO.puts("The #{player} has healed himself to #{points} points of life \n")
  end
end
