{-# LANGUAGE TemplateHaskell #-}

module Main where

import Control.Error
import Control.Lens hiding ((<.>))
import Control.Monad
import Control.Monad.State
import Data.IORef qualified as IORef
import Data.List (nub, sort)
import Data.String
import Data.Text qualified as Text
import Filesystem qualified as FS
import Filesystem.Path.CurrentOS
import Gen.AST
import Gen.Formatting
import Gen.IO
import Gen.JSON qualified as JS
import Gen.Tree qualified as Tree
import Gen.Types hiding (info)
import Options.Applicative

data Opt = Opt
  { _optOutput :: Path,
    _optModels :: [Path],
    _optServices :: Path,
    _optTemplates :: Path,
    _optAssets :: Path,
    _optVersion :: Version
  }
  deriving (Show)

makeLenses ''Opt

parser :: Parser Opt
parser =
  Opt
    <$> option
      isPath
      ( long "out"
          <> metavar "DIR"
          <> help "Directory to place the generated library."
      )
    <*> some
      ( option
          isPath
          ( long "model"
              <> metavar "DIR"
              <> help "Directory for service models."
          )
      )
    <*> option
      isPath
      ( long "services"
          <> metavar "DIR"
          <> help "Directory containing model configurations."
      )
    <*> option
      isPath
      ( long "templates"
          <> metavar "DIR"
          <> help "Directory containing ED-E templates."
      )
    <*> option
      isPath
      ( long "assets"
          <> metavar "DIR"
          <> help "Directory containing static files to copy to generated libraries."
      )
    <*> option
      version
      ( long "version"
          <> metavar "VER"
          <> help "Version of the library to generate."
      )

isPath :: ReadM Path
isPath = eitherReader (Right . fromText . Text.dropWhileEnd (== '/') . fromString)

version :: ReadM Version
version = eitherReader (Right . Version . Text.pack)

options :: ParserInfo Opt
options = info (helper <*> parser) fullDesc

validate :: (MonadIO m) => Opt -> m Opt
validate o = flip execStateT o $ do
  sequence_
    [ check optOutput,
      check optServices,
      check optTemplates,
      check optAssets
    ]
  mapM canon (o ^. optModels) >>= assign optModels
  where
    check :: (MonadIO m, MonadState s m) => Lens' s Path -> m ()
    check l = gets (view l) >>= canon >>= assign l

    canon :: (MonadIO m) => Path -> m Path
    canon = liftIO . FS.canonicalizePath

main :: IO ()
main = do
  Opt {..} <- customExecParser (prefs showHelpOnError) options >>= validate

  let ms = nub . sort $ map modelFromPath _optModels
      i = length ms

  skipped <- IORef.newIORef []

  run $ do
    title "Initialising..." <* done
    title ("Loading templates from " % path) _optTemplates

    let load = readTemplate _optTemplates
        skip = IORef.modifyIORef skipped . (:)

    tmpl <-
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

    say ("Found " % int % " model specifications.") (length _optModels)
    say ("Selected " % int % " newest models.") i

    done

    forM_ (zip [1 :: Int ..] ms) $ \(n, Model {..}) -> do
      let configPath = _optServices </> fromText modelName <.> "json"

      configured <- isFile configPath

      if not configured
        then lift (skip modelName)
        else do
          title ("[" % int % "/" % int % "] model:" % stext) n i modelName

          definition <-
            sequence [JS.load configPath, JS.load modelPath]
              >>= hoistEither . JS.parse . JS.merge

          say ("Successfully parsed '" % stext % "' API definition.") modelName

          library <- hoistEither (runAST _optVersion definition)

          say ("Creating " % stext % " package.") (library ^. dTitle)

          tree <-
            hoistEither (Tree.populate _optOutput tmpl library)
              >>= Tree.fold createDir writeOrTouch

          say
            ("Successfully rendered " % stext % "-" % fver % " package")
            (library ^. dName)
            (library ^. lVersion)

          copyDir _optAssets (Tree.root tree)

      done

    names <- lift (IORef.readIORef skipped)

    unless (Prelude.null names) $ do
      let count = length names

      title ("Skipped " % int % " models due to missing configuration(s):\n " % list stext) count names

      done

    title ("Successfully processed " % int % " configured models.") i
