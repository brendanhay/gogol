{-# LANGUAGE ApplicativeDo #-}

module Kuy.Main where

import Data.List qualified as List
import Data.Set qualified as Set
import GHC.IO.Encoding qualified as Encoding
import Kuy.Command.Generate qualified as Command (generate)
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
    Options.command "generate" generate

generate :: ParserInfo (IO ())
generate =
  Options.progDesc "Generate the specified API packages"
    & Options.info
      ( do
          output <-
            Options.strOption $
              Options.help "Directory where generated output will be written"
                <> Options.long "output"
                <> Options.metavar "PATH"
                <> Options.value "tmp"
                <> Options.showDefaultWith id

          targets <-
            Options.many . Options.argument targetReader $
              Options.help "API service name and optional version"
                <> Options.metavar "SERVICE[:VERSION]"

          pure (Command.generate output (Set.fromList targets))
      )

targetReader :: ReadM (ServiceName, Maybe ServiceVersion)
targetReader =
  Options.eitherReader (pure . parse)
  where
    parse = bimap fromString strip . List.break (== ':')
    strip = \case
      "" -> Nothing
      vs -> Just (fromString (List.drop 1 vs))
