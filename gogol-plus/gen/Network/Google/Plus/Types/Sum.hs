{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Plus.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Plus.Types.Sum where

import           Network.Google.Prelude

-- | Specifies how to order search results.
data OrderBy
    = Best
      -- ^ @best@
      -- Sort activities by relevance to the user, most relevant first.
    | Recent
      -- ^ @recent@
      -- Sort activities by published date, most recent first.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderBy

instance FromText OrderBy where
    fromText = \case
        "best" -> Just Best
        "recent" -> Just Recent
        _ -> Nothing

instance ToText OrderBy where
    toText = \case
        Best -> "best"
        Recent -> "recent"

instance FromJSON OrderBy where
    parseJSON = parseJSONText "OrderBy"

instance ToJSON OrderBy where
    toJSON = toJSONText

-- | The collection of people to list.
data PlusPeopleListCollection
    = Connected
      -- ^ @connected@
      -- The list of visible people in the authenticated user\'s circles who also
      -- use the requesting app. This list is limited to users who made their app
      -- activities visible to the authenticated user.
    | Visible
      -- ^ @visible@
      -- The list of people who this user has added to one or more circles,
      -- limited to the circles visible to the requesting application.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlusPeopleListCollection

instance FromText PlusPeopleListCollection where
    fromText = \case
        "connected" -> Just Connected
        "visible" -> Just Visible
        _ -> Nothing

instance ToText PlusPeopleListCollection where
    toText = \case
        Connected -> "connected"
        Visible -> "visible"

instance FromJSON PlusPeopleListCollection where
    parseJSON = parseJSONText "PlusPeopleListCollection"

instance ToJSON PlusPeopleListCollection where
    toJSON = toJSONText

-- | The collection of activities to list.
data Collection
    = Public
      -- ^ @public@
      -- All public activities created by the specified user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Collection

instance FromText Collection where
    fromText = \case
        "public" -> Just Public
        _ -> Nothing

instance ToText Collection where
    toText = \case
        Public -> "public"

instance FromJSON Collection where
    parseJSON = parseJSONText "Collection"

instance ToJSON Collection where
    toJSON = toJSONText

-- | The order in which to sort the list of comments.
data SortOrder
    = Ascending
      -- ^ @ascending@
      -- Sort oldest comments first.
    | Descending
      -- ^ @descending@
      -- Sort newest comments first.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SortOrder

instance FromText SortOrder where
    fromText = \case
        "ascending" -> Just Ascending
        "descending" -> Just Descending
        _ -> Nothing

instance ToText SortOrder where
    toText = \case
        Ascending -> "ascending"
        Descending -> "descending"

instance FromJSON SortOrder where
    parseJSON = parseJSONText "SortOrder"

instance ToJSON SortOrder where
    toJSON = toJSONText

-- | The collection of moments to list.
data PlusMomentsListCollection
    = Vault
      -- ^ @vault@
      -- All moments created by the requesting application for the authenticated
      -- user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlusMomentsListCollection

instance FromText PlusMomentsListCollection where
    fromText = \case
        "vault" -> Just Vault
        _ -> Nothing

instance ToText PlusMomentsListCollection where
    toText = \case
        Vault -> "vault"

instance FromJSON PlusMomentsListCollection where
    parseJSON = parseJSONText "PlusMomentsListCollection"

instance ToJSON PlusMomentsListCollection where
    toJSON = toJSONText

-- | The collection to which to write moments.
data PlusMomentsInsertCollection
    = PMICVault
      -- ^ @vault@
      -- The default collection for writing new moments.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlusMomentsInsertCollection

instance FromText PlusMomentsInsertCollection where
    fromText = \case
        "vault" -> Just PMICVault
        _ -> Nothing

instance ToText PlusMomentsInsertCollection where
    toText = \case
        PMICVault -> "vault"

instance FromJSON PlusMomentsInsertCollection where
    parseJSON = parseJSONText "PlusMomentsInsertCollection"

instance ToJSON PlusMomentsInsertCollection where
    toJSON = toJSONText

-- | The collection of people to list.
data PlusPeopleListByActivityCollection
    = PPLBACPlusoners
      -- ^ @plusoners@
      -- List all people who have +1\'d this activity.
    | PPLBACResharers
      -- ^ @resharers@
      -- List all people who have reshared this activity.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlusPeopleListByActivityCollection

instance FromText PlusPeopleListByActivityCollection where
    fromText = \case
        "plusoners" -> Just PPLBACPlusoners
        "resharers" -> Just PPLBACResharers
        _ -> Nothing

instance ToText PlusPeopleListByActivityCollection where
    toText = \case
        PPLBACPlusoners -> "plusoners"
        PPLBACResharers -> "resharers"

instance FromJSON PlusPeopleListByActivityCollection where
    parseJSON = parseJSONText "PlusPeopleListByActivityCollection"

instance ToJSON PlusPeopleListByActivityCollection where
    toJSON = toJSONText

-- | The order to return people in.
data PlusPeopleListOrderBy
    = PPLOBAlphabetical
      -- ^ @alphabetical@
      -- Order the people by their display name.
    | PPLOBBest
      -- ^ @best@
      -- Order people based on the relevence to the viewer.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlusPeopleListOrderBy

instance FromText PlusPeopleListOrderBy where
    fromText = \case
        "alphabetical" -> Just PPLOBAlphabetical
        "best" -> Just PPLOBBest
        _ -> Nothing

instance ToText PlusPeopleListOrderBy where
    toText = \case
        PPLOBAlphabetical -> "alphabetical"
        PPLOBBest -> "best"

instance FromJSON PlusPeopleListOrderBy where
    parseJSON = parseJSONText "PlusPeopleListOrderBy"

instance ToJSON PlusPeopleListOrderBy where
    toJSON = toJSONText
