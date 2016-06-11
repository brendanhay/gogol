{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Fonts.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Fonts.Types.Sum where

import           Network.Google.Prelude

-- | Enables sorting of the list
data WebfontsListSort
    = Alpha
      -- ^ @alpha@
      -- Sort alphabetically
    | Date
      -- ^ @date@
      -- Sort by date added
    | Popularity
      -- ^ @popularity@
      -- Sort by popularity
    | Style
      -- ^ @style@
      -- Sort by number of styles
    | Trending
      -- ^ @trending@
      -- Sort by trending
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WebfontsListSort

instance FromHttpApiData WebfontsListSort where
    parseQueryParam = \case
        "alpha" -> Right Alpha
        "date" -> Right Date
        "popularity" -> Right Popularity
        "style" -> Right Style
        "trending" -> Right Trending
        x -> Left ("Unable to parse WebfontsListSort from: " <> x)

instance ToHttpApiData WebfontsListSort where
    toQueryParam = \case
        Alpha -> "alpha"
        Date -> "date"
        Popularity -> "popularity"
        Style -> "style"
        Trending -> "trending"

instance FromJSON WebfontsListSort where
    parseJSON = parseJSONText "WebfontsListSort"

instance ToJSON WebfontsListSort where
    toJSON = toJSONText
