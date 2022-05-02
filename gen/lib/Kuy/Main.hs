{-# LANGUAGE ApplicativeDo #-}
{-# LANGUAGE MultiWayIf #-}

module Kuy.Main where

import Control.Concurrent
import Control.Concurrent.MVar qualified as MVar
import Data.Hashable
import Data.List qualified as List
import Data.Set qualified as Set
import Development.Shake
import GHC.IO.Encoding qualified as Encoding
import Kuy.Build.Info
import Kuy.Build.Oracle qualified as Oracle
import Kuy.Build.Rule qualified as Rule
import Kuy.Command.Generate qualified as Command
import Kuy.Prelude
import Options.Applicative (Parser, ParserInfo, ReadM)
import Options.Applicative qualified as Options
import System.Console.ANSI
import System.Environment qualified as Environment
import System.IO qualified as IO
import UnliftIO.Directory qualified as Directory

-- title/progress:
-- [current build message]

main :: IO ()
main = do
  -- when verbose $
  --   putStrLn "Starting..."

  let info :: BuildInfo
      info = defaultBuildInfo

      options :: ShakeOptions
      options =
        shakeOptions
          { shakeChange = ChangeDigest,
            shakeFiles = info.buildRoot </> ".shake",
            shakeVerbosity = Info,
            shakeThreads = 0,
            shakeTimings = False,
            -- shakeReport = [info.buildRoot </> "report.html"],
            shakeColor = True,
            shakeSymlink = True,
            shakeExtra = addShakeExtra info mempty,
            shakeLineBuffering = True
            -- , shakeProgress = if verbose then progressSimple else progressDisplay 0.5 putStrLn
          }

      rules :: Rules ()
      rules = do
        Oracle.oracleRules
        Rule.discoveryRules

  -- Set the default locale encoding for all file handles to UTF-8.
  Encoding.setLocaleEncoding Encoding.utf8

  -- Parse our custom command-line arguments prior to running shakeArgsWith.
  command <- Options.customExecParser (Options.prefs Options.showHelpOnError) program

  -- Figure out the top-level of the repository containing the .git directory.
  StdoutTrim repoRoot <- cmd ["git", "rev-parse", "--show-toplevel" :: String]

  -- Change the working directory to the repository root, to support running via:
  --
  -- cabal run kuy -- build compute
  -- GHCi @withArgs ["build", "compute"] main@.
  -- Running the raw binary.
  --
  Directory.withCurrentDirectory repoRoot $
    -- Wipe any command-line arguments we just parsed via optparse-applicative.
    Environment.withArgs [] $
      -- Run shake using withoutActions to setup the rules without running them,
      -- prior to running the action we parsed above.
      shakeArgsWith options [] $ \_args _files ->
        pure $ Just $ withoutActions rules *> action command

program :: ParserInfo (Action ())
program =
  Options.info (Options.helper <*> commands) $
    Options.progDesc "Haskell Google SDK Code Generator"
      <> Options.fullDesc

commands :: Parser (Action ())
commands =
  Options.hsubparser $
    Options.command "generate" generate
      -- <> Options.command "clean" clean

generate :: ParserInfo (Action ())
generate =
  Options.progDesc "Generate the specified API packages"
    & Options.info
      ( do
          targets <-
            Options.many . Options.argument targetReader $
              Options.help "API service name and optional version"
                <> Options.metavar "SERVICE[:VERSION]"

          pure (Command.generate (Set.fromList targets))
          -- for_ (Set.fromList targets) $ \(name, mversion) -> do
          --     description <- Rules.getDiscoveryDescription name mversion
          --     liftIO (print description.id)
      )

-- clean :: ParserInfo (Action ())
-- clean =
--   Options.progDesc "Clean the specified API packages"
--     & Options.info
--       ( do
--           full <-
--             Options.switch $
--               Options.help "Completely remove all cached artefacts"
--                 <> Options.long "full"

--           pure (Rules.clean full)
--       )

targetReader :: ReadM Command.Target
targetReader =
  Options.eitherReader (pure . parse)
  where
    parse = bimap fromString strip . List.break (== ':')
    strip = \case
      "" -> Nothing
      vs -> Just (fromString (List.drop 1 vs))
