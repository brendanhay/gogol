{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-top-binds #-}

module Main (main) where

import qualified UnliftIO.Directory as UnliftIO
import qualified UnliftIO
import qualified Control.Lens as Lens
import Control.Monad.State.Strict as State
import qualified Data.List as List
import qualified Data.Text as Text
import Gen.AST
import Gen.Prelude
import Gen.IO
import qualified Gen.JSON as JSON
import qualified Gen.Tree as Tree
import Gen.Types hiding (service)
import qualified Options.Applicative as Options

data Options = Options
  { _optionOutput :: FilePath,
    _optionAnnexes :: FilePath,
    _optionTemplates :: FilePath,
    _optionAssets :: FilePath,
    _optionVersions :: Versions,
    _optionModels :: [FilePath]
  }
  deriving (Show)

$(Lens.makeLenses ''Options)

parser :: Options.Parser Options
parser =
  Options
    <$> Options.strOption
      ( Options.long "out"
          <> Options.metavar "OUT-PATH"
          <> Options.help "Directory to place the generated library."
      )
    <*> Options.strOption
      ( Options.long "annexes"
          <> Options.metavar "PATH"
          <> Options.help "Directory containing model annexes."
          <> Options.value "config/annexes"
      )
    <*> Options.strOption
      ( Options.long "templates"
          <> Options.metavar "PATH"
          <> Options.help "Directory containing ED-E templates."
          <> Options.value "config/templates"
      )
    <*> Options.strOption
      ( Options.long "assets"
          <> Options.metavar "PATH"
          <> Options.help "Directory containing static files for generated libraries."
          <> Options.value "config/assets"
      )
    <*> ( Versions
            <$> Options.option
              versionReader
              ( Options.long "library-version"
                  <> Options.metavar "VER"
                  <> Options.help "Version of the library to generate."
              )
            <*> Options.option
              versionReader
              ( Options.long "client-version"
                  <> Options.metavar "VER"
                  <> Options.help "Client library version dependecy for examples."
              )
            <*> Options.option
              versionReader
              ( Options.long "core-version"
                  <> Options.metavar "VER"
                  <> Options.help "Core library version dependency."
              )
        )
    <*> Options.some
      ( Options.strArgument
          ( Options.metavar "MODEL-PATH"
              <> Options.help "Directory for a service's model definitions."
          )
      )

versionReader :: Options.ReadM (Version v)
versionReader = Options.eitherReader (Right . Version . Text.pack)

options :: Options.ParserInfo Options
options = Options.info (Options.helper <*> parser) Options.fullDesc

validate :: MonadIO m => Options -> m Options
validate o = flip State.execStateT o $ do
  sequence_
    [ check optionOutput,
      check optionAnnexes,
      check optionTemplates,
      check optionAssets
    ]
  mapM canon (o ^. optionModels) >>= Lens.assign optionModels
  where
    check :: (MonadIO m, MonadState s m) => Lens' s FilePath -> m ()
    check l = State.gets (Lens.view l) >>= canon >>= Lens.assign l

    canon :: MonadIO m => FilePath -> m FilePath
    canon = UnliftIO.canonicalizePath


main :: IO ()
main = do
  Options {..} <-
    Options.customExecParser (Options.prefs Options.showHelpOnError) options
      >>= validate

  title "Initialising..." <* done

  let total = show (length _optionModels)
      load = readTemplate _optionTemplates
      hoistEither = either UnliftIO.throwString pure

  templates <- do
      title $
         "Loading templates from "
           ++ _optionTemplates

      Templates
        <$> load "cabal.ede"
        <*> load "toc.ede"
        <*> load "readme.ede"
        <*> load "types.ede"
        <*> load "prod.ede"
        <*> load "sum.ede"
        <*> load "action.ede"
        <* done

  let models =  List.nub $ List.sort $ map modelFromPath _optionModels

  forM_ (zip [1 ..] models) $ \(index, Model {..}) -> do
      title $
        "["
          ++ show (index :: Int)
          ++ "/"
          ++ total
          ++ "] model:"
          ++ Text.unpack modelName

      let annexPath = _optionAnnexes </> Text.unpack modelName <.> "json"

      service <-
            sequence
              [ JSON.required annexPath,
                JSON.required modelPath
              ]
              >>= hoistEither . JSON.parse . JSON.merge

      say $
              "Parsed '"
                ++ Text.unpack modelName
                ++ "' API definition"

      library <- hoistEither (runAST _optionVersions service)

      say $
            "Synthesised '"
                ++ Text.unpack (library ^. dName)
                ++ "' Haskell package"

      root <-
            hoistEither (Tree.populate _optionOutput templates library)
              >>= Tree.fold createDir writeOrTouch
              >>= hoistEither

      say $
            "Rendered "
              ++ Text.unpack (library ^. sLibrary)
              ++ "-"
              ++ Text.unpack (fromVersion (library ^. libraryVersion))
              ++ " package in "
              ++ root

      copyDir _optionAssets root

      done

  title $
     "Processed "
       ++ total
       ++ " models."
