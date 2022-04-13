{-# LANGUAGE ApplicativeDo #-}

module Kuy.Main where

import Data.List qualified as List
import Data.Set qualified as Set
import GHC.IO.Encoding qualified as Encoding
import Kuy.Command.Build qualified as Command (build)
import Kuy.Command.Clean qualified as Command (clean)
import Kuy.Discovery
import Kuy.Prelude
import Options.Applicative (Parser, ParserInfo, ReadM)
import Options.Applicative qualified as Options

main :: IO ()
main =
  Encoding.setLocaleEncoding Encoding.utf8
    *> join (Options.customExecParser (Options.prefs Options.showHelpOnError) program)

program :: ParserInfo (IO ())
program =
  Options.info (Options.helper <*> commands) $
    Options.progDesc "Haskell Google SDK Code Generator"
      <> Options.fullDesc

commands :: Parser (IO ())
commands =
  Options.hsubparser $
    Options.command "build" build
      <> Options.command "clean" clean

build :: ParserInfo (IO ())
build =
  Options.progDesc "Build the specified API packages"
    & Options.info
      ( do
          targets <-
            Options.many . Options.argument targetReader $
              Options.help "API service name and optional version"
                <> Options.metavar "SERVICE[:VERSION]"

          pure (Command.build (Set.fromList targets))
      )

clean :: ParserInfo (IO ())
clean =
  Options.progDesc "Clean the specified API packages"
    & Options.info
      ( do
          full <-
            Options.switch $
              Options.help "Completely remove all cached artefacts"
                <> Options.long "full"

          pure (Command.clean full)
      )

targetReader :: ReadM (ServiceName, Maybe ServiceVersion)
targetReader =
  Options.eitherReader (pure . parse)
  where
    parse = bimap fromString strip . List.break (== ':')
    strip = \case
      "" -> Nothing
      vs -> Just (fromString (List.drop 1 vs))
