{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Fonts.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Fonts.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Enables sorting of the list.
data WebfontsListSort
    = SortUndefined
      -- ^ @SORT_UNDEFINED@
      -- No sorting specified, use the default sorting method.
    | Alpha
      -- ^ @ALPHA@
      -- Sort alphabetically
    | Date
      -- ^ @DATE@
      -- Sort by date added
    | Popularity
      -- ^ @POPULARITY@
      -- Sort by popularity
    | Style
      -- ^ @STYLE@
      -- Sort by number of styles
    | Trending
      -- ^ @TRENDING@
      -- Sort by trending
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WebfontsListSort

instance FromHttpApiData WebfontsListSort where
    parseQueryParam = \case
        "SORT_UNDEFINED" -> Right SortUndefined
        "ALPHA" -> Right Alpha
        "DATE" -> Right Date
        "POPULARITY" -> Right Popularity
        "STYLE" -> Right Style
        "TRENDING" -> Right Trending
        x -> Left ("Unable to parse WebfontsListSort from: " <> x)

instance ToHttpApiData WebfontsListSort where
    toQueryParam = \case
        SortUndefined -> "SORT_UNDEFINED"
        Alpha -> "ALPHA"
        Date -> "DATE"
        Popularity -> "POPULARITY"
        Style -> "STYLE"
        Trending -> "TRENDING"

instance FromJSON WebfontsListSort where
    parseJSON = parseJSONText "WebfontsListSort"

instance ToJSON WebfontsListSort where
    toJSON = toJSONText
