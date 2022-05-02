module Kuy.Build.Console where

import Development.Shake
import Kuy.Prelude

-- -- FIXME: use System.Console.ANSI

-- | ANSI terminal colours.
data Colour
  = -- | 8-bit ANSI colours.
    Dull Colour
  | -- | 16-bit vivid ANSI colours.
    Vivid Colour
  | -- | ANSI code: 30
    Black
  | -- | 31
    Red
  | -- | 32
    Green
  | -- | 33
    Yellow
  | -- | 34
    Blue
  | -- | 35
    Magenta
  | -- | 36
    Cyan
  | -- | 37
    White

-- | Convert ANSI colour names into their associated codes.
colourCode :: Colour -> String
colourCode = \case
  Dull c -> colourCode c
  Vivid c -> colourCode c ++ ";1"
  Black -> "30"
  Red -> "31"
  Green -> "32"
  Yellow -> "33"
  Blue -> "34"
  Magenta -> "35"
  Cyan -> "36"
  White -> "37"

-- | A coloured version of Shake's 'putInfo'.
putColoured :: Colour -> String -> Action ()
putColoured colour msg = do
  useColour <- shakeColor <$> getShakeOptions

  if useColour
    then putInfo $ concat ["\ESC[", colourCode colour, "m", msg, "\ESC[0m"]
    else putInfo msg

-- | Print a build progress message (e.g. executing a system command).
putProgress :: String -> Action ()
putProgress = putColoured (Dull Blue)

-- | Print an action build progress message.
putAction :: String -> FilePath -> Maybe FilePath -> Action ()
putAction what input moutput =
  putProgress $
    unwords (what : input : maybe [] (\s -> ["=>", s]) moutput)

-- | Print a success message (e.g. a package was generated successfully).
putSuccess :: String -> Action ()
putSuccess = putColoured (Dull Green)

-- | Print a failure message (e.g. a precondition was not met).
putFailure :: String -> Action ()
putFailure = putColoured (Dull Red)
