import std/tables
from std/sequtils import zip

type
  Planet* = enum
    Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune

var earthYear = 31557600.0

var planets = [Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune]
var rotations = [
  0.2408467 * earthYear,
  0.61519726 * earthYear,
  earthYear,
  1.8808158 * earthYear,
  11.862615 * earthYear,
  29.447498 * earthYear,
  84.016846 * earthYear,
  164.79132 * earthYear,
]

var planetYearDurations = initTable[Planet, float64]()

for pairs in zip(planets, rotations):
  let (planet, rotation) = pairs
  planetYearDurations[planet] = rotation

proc age*(planet: Planet, seconds: int64): float =
  return float64(seconds)/planetYearDurations[planet]
