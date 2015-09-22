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

import           Control.Lens
import           Control.Monad.State
import           Data.List                 (nub, sort)
import           Data.String
import qualified Data.Text                 as Text
import qualified Filesystem                as FS
import           Filesystem.Path.CurrentOS
import           Gen.Formatting
import           Gen.IO
import           Gen.Types
import           Options.Applicative

data Opt = Opt
    { _optOutput    :: Path
    , _optModels    :: [Path]
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

    run $ do
        title "Initialising..." <* done
        title ("Loading templates from " % path) _optTemplates

        let load = readTemplate _optTemplates

        tmpl <- flip evalStateT mempty $ Templates
            <$> load "cabal.ede"
            <*> load "toc.ede"
            <*> load "readme.ede"
            <*> load "operation.ede"
            <*> load "types.ede"
            <*  lift done

        say ("Found "    % int % " model specifications.") (length _optModels)
        say ("Selected " % int % " newest models.")        (length ss)

        forM_ (zip [1..] ss) $ \(j, s) -> do
            title ("[" % int % "/" % int % "] model:" % stext)
                  (j :: Int) (length ss) (_specName s)

    --         m <- listDir f >>= hoistEither . loadModel f

    --         say ("Using version " % dateDash) (m ^. modelVersion)

    --         cfg <- JS.required (_optConfigs </> (m ^. configFile))
    --             >>= hoistEither . JS.parse

    --         api <- sequence
    --             [ JS.optional (_optAnnexes </> (m ^. annexFile))
    --             , JS.required (m ^. serviceFile)
    --             , JS.optional (m ^. waitersFile)
    --             , JS.optional (m ^. pagersFile)
    --             , pure r
    --             ] >>= hoistEither . JS.parse . JS.merge

    --         say ("Successfully parsed '" % stext % "' API definition")
    --             (api ^. serviceFullName)

    --         lib <- hoistEither (AST.rewrite _optVersions cfg api)

    --         dir <- hoistEither (Tree.populate _optOutput tmpl lib)
    --             >>= Tree.fold createDir (\x -> maybe (touchFile x) (writeLTFile x))

    --         say ("Successfully rendered " % stext % "-" % semver % " package")
    --             (lib ^. libraryName)
    --             (lib ^. libraryVersion)

    --         copyDir _optStatic (Tree.root dir)

    --         done

        -- title ("Successfully processed " % int % " models.") i
