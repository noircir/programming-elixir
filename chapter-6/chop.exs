defmodule Chop do
  def guess(actual, range) do
    IO.puts "Is it #{midway(range)} ?"
    go_guess(actual, midway(range), range)
  end

  defp go_guess(actual, guess, _) when actual == guess do
    IO.puts guess
  end

  defp go_guess(actual, guess, _..upper) when actual > guess do
    guess(actual, (guess + 1)..upper)
  end

  defp go_guess(actual, guess, lower.._) when actual < guess do
    guess(actual, lower..(guess - 1))
  end

  defp midway(lower..upper) do
    lower + div(upper - lower, 2)
  end
end