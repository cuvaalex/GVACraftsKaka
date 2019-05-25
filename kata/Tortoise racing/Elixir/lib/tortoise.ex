defmodule Tortoise do
  @moduledoc false

  def race(v1, v2, _g) when v1 >= v2, do: nil
  def race(v1, v2, g), do: Tuple.to_list(calculate(v1, v2, g))

  defp calculate(v1, v2, g) do
    gapSpeed = v2 - v1

    t = div (g * 3600), gapSpeed
    {m, s} = {div(t, 60), rem(t, 60)}
    {h, m} = {div(m, 60), rem(m, 60)}
    {h, m, s}
  end
end
