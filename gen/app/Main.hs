{-# LANGUAGE TemplateHaskell #-}

module Main where

import Control.Error
import Control.Lens hiding ((<.>))
import Control.Monad.State
import qualified Data.IORef as IORef
import Data.List (nub, sort)
import Data.String
import qualified Data.Text as Text
import qualified Filesystem as FS
import Filesystem.Path.CurrentOS
import Gen.AST
import Gen.Formatting
import Gen.IO
import qualified Gen.JSON as JS
import qualified Gen.Tree as Tree
import Gen.Types hiding (info)
import Options.Applicative

data Opt = Opt
  { _optOutput :: Path,
    _optModels :: [Path],
    _optServices :: Path,
    _optTemplates :: Path,
    _optStatic :: Path,
    _optVersions :: Versions
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
              <> help "Directory for a service's models."
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
      ( long "static"
          <> metavar "DIR"
          <> help "Directory containing static files for generated libraries."
      )
    <*> ( Versions
            <$> option
              version
              ( long "library-version"
                  <> metavar "VER"
                  <> help "Version of the library to generate."
              )
            <*> option
              version
              ( long "client-version"
                  <> metavar "VER"
                  <> help "Client library version dependecy for examples."
              )
            <*> option
              version
              ( long "core-version"
                  <> metavar "VER"
                  <> help "Core library version dependency."
              )
        )

isPath :: ReadM Path
isPath = eitherReader (Right . fromText . Text.dropWhileEnd (== '/') . fromString)

version :: ReadM (Version v)
version = eitherReader (Right . Version . Text.pack)

options :: ParserInfo Opt
options = info (helper <*> parser) fullDesc

validate :: MonadIO m => Opt -> m Opt
validate o = flip execStateT o $ do
  sequence_
    [ check optOutput,
      check optServices,
      check optTemplates,
      check optStatic
    ]
  mapM canon (o ^. optModels) >>= assign optModels
  where
    check :: (MonadIO m, MonadState s m) => Lens' s Path -> m ()
    check l = gets (view l) >>= canon >>= assign l

    canon :: MonadIO m => Path -> m Path
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

          library <- hoistEither (runAST _optVersions definition)

          say ("Creating " % stext % " package.") (library ^. dTitle)

          tree <-
            hoistEither (Tree.populate _optOutput tmpl library)
              >>= Tree.fold createDir writeOrTouch

          say
            ("Successfully rendered " % stext % "-" % fver % " package")
            (library ^. dName)
            (library ^. libraryVersion)

          copyDir _optStatic (Tree.root tree)

      done

    names <- lift (IORef.readIORef skipped)

    unless (Prelude.null names) $ do
      let count = length names

      title ("Skipped " % int % " models due to missing configuration(s):\n " % list stext) count names

      done

    title ("Successfully processed " % int % " configured models.") i
