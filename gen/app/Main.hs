module Main where

import qualified Data.IORef as IORef
import qualified Data.List as List
import qualified Data.Text as Text
import Gen.AST
import Gen.Formatting
import Gen.IO
import Gen.JSON
import Gen.Prelude
import qualified Gen.Tree as Tree
import Gen.Types hiding (info)
import qualified Options.Applicative as Options
import qualified System.Directory as Directory

data Options = Options
  { optionOutput :: FilePath,
    optionModels :: [FilePath],
    optionServices :: FilePath,
    optionTemplates :: FilePath,
    optionAssets :: FilePath,
    optionVersion :: Version
  }
  deriving stock (Show)

parser :: Options.Parser Options
parser =
  Options
    <$> Options.strOption
      ( Options.long "out"
          <> Options.metavar "DIR"
          <> Options.help "Directory to place the generated library."
      )
    <*> Options.some
      ( Options.strOption
          ( Options.long "model"
              <> Options.metavar "DIR"
              <> Options.help "Directory for service models."
          )
      )
    <*> Options.strOption
      ( Options.long "services"
          <> Options.metavar "DIR"
          <> Options.help "Directory containing model configurations."
      )
    <*> Options.strOption
      ( Options.long "templates"
          <> Options.metavar "DIR"
          <> Options.help "Directory containing ED-E templates."
      )
    <*> Options.strOption
      ( Options.long "assets"
          <> Options.metavar "DIR"
          <> Options.help "Directory containing static files to copy to generated libraries."
      )
    <*> Options.option
      version
      ( Options.long "version"
          <> Options.metavar "VER"
          <> Options.help "Version of the library to generate."
      )

version :: Options.ReadM Version
version = Options.eitherReader (Right . Version . Text.pack)

info :: Options.ParserInfo Options
info = Options.info (Options.helper <*> parser) Options.fullDesc

prefs :: Options.ParserPrefs
prefs = Options.prefs Options.showHelpOnError

main :: IO ()
main = do
  Options {..} <- Options.customExecParser prefs info

  let models = List.nub . List.sort . map modelFromPath $ optionModels

      modelCount = length models
      modelTotal = length optionModels

  print models

  skipped <- IORef.newIORef []

  title "Initialising..."

  let load = readTemplate optionTemplates
      skip = IORef.modifyIORef skipped . (:)

  title ("Loading templates from " % string) optionTemplates
 
  templates <-
    Templates
      <$> load "cabal.ede"
      <*> load "toc.ede"
      <*> load "readme.ede"
      <*> load "types.ede"
      <*> load "prod.ede"
      <*> load "sum.ede"
      <*> load "action.ede"
      <* done

  title "Selecting new service models..."

  say ("Found " % int % " model specifications.") modelTotal
  say ("Selected " % int % " newest models.") modelCount

  done

  for_ (zip [1 :: Int ..] models) $ \(n, Model {..}) -> do
    let configPath = optionServices </> Text.unpack modelName <.> "json"

    configured <- Directory.doesFileExist configPath

    if not configured
      then skip modelName
      else do
        title ("[" % int % "/" % int % "] model:" % stext) n modelCount modelName

        definition <-
          sequence [loadObject configPath, loadObject modelPath]
            >>= parseObject . jsonMerge

        say ("Successfully parsed '" % stext % "' API definition.") modelName

        library <-
          either (error . Text.unpack) pure $
            runAST optionVersion definition

        say ("Creating " % stext % " package.") (library ^. dTitle)

        tree <-
          either (error . Text.unpack) pure (Tree.populate optionOutput templates library)
            >>= Tree.fold createDir writeOrTouch

        say
          ("Successfully rendered " % stext % "-" % fver % " package")
          (library ^. dName)
          (library ^. lVersion)

        copyDir optionAssets (Tree.root tree)

    done

  names <- IORef.readIORef skipped

  unless (null names) $ do
    let count = length names

    title
      ("Skipped " % int % " models due to missing configuration(s):\n " % list stext)
      count
      names

    done

  title ("Successfully processed " % int % " configured models.") modelCount
