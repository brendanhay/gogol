{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DNS.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DNS.Types.Sum where

import           Network.Google.Prelude

-- | Sorting criterion. The only supported value is change sequence.
data ChangesListSortBy
    = ChangeSequence
      -- ^ @changeSequence@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChangesListSortBy

instance FromText ChangesListSortBy where
    fromText = \case
        "changeSequence" -> Just ChangeSequence
        _ -> Nothing

instance ToText ChangesListSortBy where
    toText = \case
        ChangeSequence -> "changeSequence"

instance FromJSON ChangesListSortBy where
    parseJSON = parseJSONText "ChangesListSortBy"

instance ToJSON ChangesListSortBy where
    toJSON = toJSONText
