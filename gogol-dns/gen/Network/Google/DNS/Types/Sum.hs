{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DNS.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
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

-- | Status of the operation (output only).
data ChangeStatus
    = Done
      -- ^ @done@
    | Pending
      -- ^ @pending@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ChangeStatus

instance FromText ChangeStatus where
    fromText = \case
        "done" -> Just Done
        "pending" -> Just Pending
        _ -> Nothing

instance ToText ChangeStatus where
    toText = \case
        Done -> "done"
        Pending -> "pending"

instance FromJSON ChangeStatus where
    parseJSON = parseJSONText "ChangeStatus"

instance ToJSON ChangeStatus where
    toJSON = toJSONText
