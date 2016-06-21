{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Gen.JSON
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.JSON where

import           Control.Error
import           Control.Monad.Except
import           Data.Aeson           hiding (decode)
import           Data.Aeson.Types
import           Data.Bifunctor
import           Data.ByteString      (ByteString)
import qualified Data.ByteString.Lazy as LBS
import qualified Data.HashMap.Strict  as Map
import           Data.List
import qualified Data.Text.Lazy       as LText
import           Gen.Formatting
import           Gen.IO
import           Gen.Types
import qualified Text.EDE             as EDE

objectErr :: ToJSON a => String -> a -> Either Error Object
objectErr n =
      note (format ("Failed to extract JSON object from value " % string) n)
    . EDE.fromValue
    . toJSON

load :: MonadIO m => Path -> ExceptT Error m Object
load = readBSFile >=> hoistEither . decode

decode :: ByteString -> Either Error Object
decode = first LText.pack . eitherDecode' . LBS.fromStrict

parse :: FromJSON a => Object -> Either Error a
parse = first LText.pack . parseEither parseJSON . Object

merge :: [Object] -> Object
merge = foldl' go mempty
  where
    go :: Object -> Object -> Object
    go = Map.unionWith value

    value :: Value -> Value -> Value
    value l r =
        case (l, r) of
            (Object x, Object y) -> Object (x `go` y)
            (_,        _)        -> l
