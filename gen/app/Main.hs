module Main where

import GHC.IO.Encoding qualified as Encoding
import Kuy.Command (Target)
import Kuy.Command qualified as Command
import Kuy.Prelude
import Options.Applicative

data Command
  = Build (Set Target)
  | Clean Bool
  | Query
  deriving stock (Show)

commandParser :: Parser Command
commandParser =
  foldr (<|>) empty $
    [ subcommand "build" "Build the designated API packages." build,
      subcommand "query" "Query the available API packages." query,
      subcommand "clean" "Delete build artefacts." clean
    ]
  where
    build =
      fmap Build $
        ( manyUniqueArguments targetReader $
            metavar "API[:VERSION]"
              <> help "API name with an optional version suffix, in discovery API ID format."
        )

    query =
      pure Query

    clean =
      fmap Clean $
        ( switch $
            long "full"
              <> help "Delete all addressable content from the store"
        )

    subcommand name help parser =
      hsubparser $
        command name (info parser (fullDesc <> progDesc help))
          <> metavar name

    manyUniqueArguments reader =
      fmap fromList . many . argument reader

    targetReader =
      eitherReader (pure . Command.parseTarget)

optionsParser :: ParserInfo Command
optionsParser =
  info (helper <*> commandParser) $
    header "gogol-gen"
      <> progDesc "TODO"
      <> fullDesc

main :: IO ()
main = do
  Encoding.setLocaleEncoding Encoding.utf8

  customExecParser (prefs showHelpOnError) optionsParser >>= \case
    Build targets ->
      Command.build targets
    Clean full ->
      Command.clean full
    Query ->
      Command.query
