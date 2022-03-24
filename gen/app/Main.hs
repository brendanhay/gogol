module Main where

import Control.Exception qualified as Exception
import Data.Aeson (Value (..), (.=))
import Data.Aeson qualified as Aeson
import Data.Aeson.KeyMap qualified as KeyMap
import Data.IORef qualified as IORef
import Data.List qualified as List
import Data.Set qualified as Set
import Data.Text qualified as Text
import Data.Text.Encoding qualified as Text.Encoding
import Data.Text.Lazy qualified as Text.Lazy
import Gen.AST
import Gen.Formatting
import Gen.IO
import Gen.JSON
import Gen.JSON qualified as JSON
import Gen.Prelude
import Gen.Types hiding (info)
import Options.Applicative qualified as Options
import System.Directory qualified as Directory
import Text.EDE (Template)
import Text.EDE qualified as EDE

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
      <*> load "action.ede"
      <*> load "product.ede"
      <*> load "sum.ede"
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
            >>= parseObject . mergeObject

        say ("Successfully parsed '" % stext % "' API definition.") modelName

        library <-
          either (error . Text.unpack) pure $
            runAST optionVersion definition

        say ("Creating " % stext % " package.") (library ^. dTitle)

        writePackage optionOutput optionAssets templates library

        say
          ("Successfully rendered " % stext % "-" % fver % " package")
          (library ^. dName)
          (library ^. lVersion)

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

writePackage :: FilePath -> FilePath -> Templates -> Library -> IO ()
writePackage output assets Templates {..} library = do
  let API {..} = _lAPI library
      Imports {..} = serviceImports library

      lib = Text.unpack (library ^. sLibrary)
      out = output </> lib

  -- Serialise the library specification to JSON for use as template vars.
  env <-
    maybe (error "failed to serialize library to JSON EDE env") pure $
      EDE.fromValue (Aeson.toJSON library)

  -- Ensure empty src directories exists and are preserved by git.
  touchFile (out </> "src/.gitkeep")

  -- Gogol/Service/Resource.../Method.hs
  for_ (apiResources <> apiMethods) $ \action ->
    writeModule out (actionNs action) actionImports actionTemplate
      =<< fmap (mappend env) (getKeyedEnv "action" action)

  let typesNamespace = typesNS library

  for_ (_lSchemas library) $ \schema -> do
    let template = if isSum schema then sumTemplate else productTemplate

    writeModule out (typesNamespace <> getDataModule schema) mempty template
      =<< getKeyedEnv "type" schema

  -- Gogol/Service/Types.hs
  writeModule out typesNamespace typesImports typesTemplate env

  -- Gogol/Service.hs
  writeModule out (tocNS library) tocImports tocTemplate env

  -- gogol-service.cabal
  writeTemplate (out </> lib <.> "cabal") cabalTemplate env

  -- README.md
  writeTemplate (out </> "README.md") readmeTemplate env

  -- Copy LICENSE etc.
  copyDir assets out

writeModule :: ToJSON a => FilePath -> NS -> Set NS -> Template -> a -> IO ()
writeModule dir ns imports template env = do
  vars <-
    mappend
      <$> getEnv env
      <*> pure (EDE.fromPairs ["moduleName" .= ns, "moduleImports" .= imports])

  writeTemplate (dir </> "gen" </> renderPathNS ns <.> "hs") template vars

getKeyedEnv :: ToJSON a => Aeson.Key -> a -> IO (HashMap Text Aeson.Value)
getKeyedEnv key val =
  case Aeson.object [key .= val] of
    Aeson.Object o -> pure (KeyMap.toHashMapText o)
    _other -> error "(getKeyedEnv) failed to serialize EDE JSON env"

getEnv :: ToJSON a => a -> IO (HashMap Text Aeson.Value)
getEnv =
  maybe (error "(getEnv) failed to serialize EDE JSON env") pure
    . EDE.fromValue
    . Aeson.toJSON
