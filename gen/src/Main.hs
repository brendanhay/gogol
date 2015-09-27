{-# LANGUAGE LambdaCase            #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE RecordWildCards       #-}
{-# LANGUAGE TemplateHaskell       #-}

-- Module      : Main
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Main (main) where

import           Control.Error
import           Control.Lens              hiding ((<.>))
import           Control.Monad.State
import           Data.List                 (nub, sort)
import           Data.String
import           Data.Text                 (Text)
import qualified Data.Text                 as Text
import qualified Filesystem                as FS
import           Filesystem.Path.CurrentOS
import           Gen.AST
import           Gen.Formatting
import           Gen.IO
import qualified Gen.JSON                  as JS
import qualified Gen.Tree                  as Tree
import           Gen.Types                 hiding (info)
import           Options.Applicative

data Opt = Opt
    { _optOutput    :: Path
    , _optModels    :: [Path]
    , _optAnnexes   :: Path
    , _optTemplates :: Path
    , _optStatic    :: Path
    , _optVersions  :: Versions
    } deriving (Show)

makeLenses ''Opt

parser :: Parser Opt
parser = Opt
    <$> option isPath
         ( long "out"
        <> metavar "DIR"
        <> help "Directory to place the generated library."
         )

    <*> some (option isPath
         ( long "model"
        <> metavar "DIR"
        <> help "Directory for a service's botocore models."
         ))

    <*> option isPath
         ( long "annexes"
        <> metavar "DIR"
        <> help "Directory containing botocore model annexes."
         )

    <*> option isPath
         ( long "templates"
        <> metavar "DIR"
        <> help "Directory containing ED-E templates."
         )

    <*> option isPath
         ( long "static"
        <> metavar "DIR"
        <> help "Directory containing static files for generated libraries."
         )

    <*> (Versions
        <$> option version
             ( long "library-version"
            <> metavar "VER"
            <> help "Version of the library to generate."
             )

        <*> option version
             ( long "client-version"
            <> metavar "VER"
            <> help "Client library version dependecy for examples."
             )

        <*> option version
             ( long "core-version"
            <> metavar "VER"
            <> help "Core library version dependency."
             ))

isPath :: ReadM Path
isPath = eitherReader (Right . fromText . Text.dropWhileEnd (== '/') . fromString)

version :: ReadM (Version v)
version = eitherReader (Right . Version . Text.pack)

options :: ParserInfo Opt
options = info (helper <*> parser) fullDesc

validate :: MonadIO m => Opt -> m Opt
validate o = flip execStateT o $ do
    sequence_
        [ check optOutput
        , check optAnnexes
        , check optTemplates
        , check optStatic
        ]
    mapM canon (o ^. optModels) >>= assign optModels
  where
    check :: (MonadIO m, MonadState s m) => Lens' s Path -> m ()
    check l = gets (view l) >>= canon >>= assign l

    canon :: MonadIO m => Path -> m Path
    canon = liftIO . FS.canonicalizePath

main :: IO ()
main = do
    Opt{..} <- customExecParser (prefs showHelpOnError) options >>= validate

    let ss = nub . sort $ map specFromPath _optModels
        i  = length ss

    run $ do
        title "Initialising..." <* done
        title ("Loading templates from " % path) _optTemplates

        let load = readTemplate _optTemplates

        tmpl <- Templates
            <$> load "cabal.ede"
            <*> load "toc.ede"
            <*> load "readme.ede"
            <*> load "types.ede"
            <*> load "prod.ede"
            <*> load "sum.ede"
            <*> load "action.ede"
            <*  done

        title "Selecting new service models..."
        say ("Found "    % int % " model specifications.") (length _optModels)
        say ("Selected " % int % " newest models.")        i
        done

        svcs <- counter "model" ss $ \Spec{..} -> do
            say ("Using version " % stext) _specVersion

            let anx = _optAnnexes </> fromText _specName <.> "json"
            p <- isFile anx
            if not p
               then do
                   say ("Skipping '" % stext % "' due to missing annex configuration.")
                       _specName
                   done *> return Nothing
               else do
                    s <- sequence
                        [ JS.load anx
                        , JS.load _specPath
                        ] >>= hoistEither . JS.parse . JS.merge

                    say ("Successfully parsed '" % stext % "' API definition.")
                        (_svcTitle s)

                    done *> return (Just s)

        libs <- merge _optVersions <$>
            traverse (hoistEither . runAST) (catMaybes svcs)

        void . counter "library" libs $ \l -> do
            say ("Creating " % stext % " package.") (_libTitle l)

            dir <- hoistEither (Tree.populate _optOutput tmpl l)
                >>= Tree.fold createDir (\x -> maybe (touchFile x) (writeLTFile x))

            say ("Successfully rendered " % stext % "-" % fver % " package")
                (_libName l)
                (_libraryVersion _optVersions)

            copyDir _optStatic (Tree.root dir)

            done

        title ("Successfully processed " % int % " models.") i
        title ("Successfully created " % int % " library packages.") (length libs)

class    HasName a       where getName :: a -> Text
instance HasName Spec    where getName = _specName
instance HasName Library where getName = _libName

counter :: (MonadIO m, HasName a)
        => Text
        -> [a]
        -> (a -> ExceptT Error m b)
        -> ExceptT Error m [b]
counter k xs f = forM (zip [1..] xs) $ \(n, x) -> do
    title ("[" % int % "/" % int % "] " % stext % ":" % stext)
          (n :: Int) i k (getName x)
    f x
  where
    i = length xs
