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
data ActivitiesSearch'OrderBy
    = Best
      -- ^ @best@
      -- Sort activities by relevance to the user, most relevant first.
    | Recent
      -- ^ @recent@
      -- Sort activities by published date, most recent first.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivitiesSearch'OrderBy

instance FromText ActivitiesSearch'OrderBy where
    fromText = \case
        "best" -> Just Best
        "recent" -> Just Recent
        _ -> Nothing

instance ToText ActivitiesSearch'OrderBy where
    toText = \case
        Best -> "best"
        Recent -> "recent"

instance FromJSON ActivitiesSearch'OrderBy where
    parseJSON = parseJSONText "ActivitiesSearch'OrderBy"

instance ToJSON ActivitiesSearch'OrderBy where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | The order to return people in.
data PeopleList'OrderBy
    = PLOBAlphabetical
      -- ^ @alphabetical@
      -- Order the people by their display name.
    | PLOBBest
      -- ^ @best@
      -- Order people based on the relevence to the viewer.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PeopleList'OrderBy

instance FromText PeopleList'OrderBy where
    fromText = \case
        "alphabetical" -> Just PLOBAlphabetical
        "best" -> Just PLOBBest
        _ -> Nothing

instance ToText PeopleList'OrderBy where
    toText = \case
        PLOBAlphabetical -> "alphabetical"
        PLOBBest -> "best"

instance FromJSON PeopleList'OrderBy where
    parseJSON = parseJSONText "PeopleList'OrderBy"

instance ToJSON PeopleList'OrderBy where
    toJSON = toJSONText

-- | The collection of people to list.
data PeopleList'Collection
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

instance Hashable PeopleList'Collection

instance FromText PeopleList'Collection where
    fromText = \case
        "connected" -> Just Connected
        "visible" -> Just Visible
        _ -> Nothing

instance ToText PeopleList'Collection where
    toText = \case
        Connected -> "connected"
        Visible -> "visible"

instance FromJSON PeopleList'Collection where
    parseJSON = parseJSONText "PeopleList'Collection"

instance ToJSON PeopleList'Collection where
    toJSON = toJSONText

-- | The collection of activities to list.
data ActivitiesList'Collection
    = Public
      -- ^ @public@
      -- All public activities created by the specified user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivitiesList'Collection

instance FromText ActivitiesList'Collection where
    fromText = \case
        "public" -> Just Public
        _ -> Nothing

instance ToText ActivitiesList'Collection where
    toText = \case
        Public -> "public"

instance FromJSON ActivitiesList'Collection where
    parseJSON = parseJSONText "ActivitiesList'Collection"

instance ToJSON ActivitiesList'Collection where
    toJSON = toJSONText

-- | The collection of moments to list.
data MomentsList'Collection
    = Vault
      -- ^ @vault@
      -- All moments created by the requesting application for the authenticated
      -- user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MomentsList'Collection

instance FromText MomentsList'Collection where
    fromText = \case
        "vault" -> Just Vault
        _ -> Nothing

instance ToText MomentsList'Collection where
    toText = \case
        Vault -> "vault"

instance FromJSON MomentsList'Collection where
    parseJSON = parseJSONText "MomentsList'Collection"

instance ToJSON MomentsList'Collection where
    toJSON = toJSONText

-- | The order in which to sort the list of comments.
data CommentsList'SortOrder
    = Ascending
      -- ^ @ascending@
      -- Sort oldest comments first.
    | Descending
      -- ^ @descending@
      -- Sort newest comments first.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentsList'SortOrder

instance FromText CommentsList'SortOrder where
    fromText = \case
        "ascending" -> Just Ascending
        "descending" -> Just Descending
        _ -> Nothing

instance ToText CommentsList'SortOrder where
    toText = \case
        Ascending -> "ascending"
        Descending -> "descending"

instance FromJSON CommentsList'SortOrder where
    parseJSON = parseJSONText "CommentsList'SortOrder"

instance ToJSON CommentsList'SortOrder where
    toJSON = toJSONText

-- | The collection of people to list.
data PeopleListByActivity'Collection
    = Plusoners
      -- ^ @plusoners@
      -- List all people who have +1\'d this activity.
    | Resharers
      -- ^ @resharers@
      -- List all people who have reshared this activity.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PeopleListByActivity'Collection

instance FromText PeopleListByActivity'Collection where
    fromText = \case
        "plusoners" -> Just Plusoners
        "resharers" -> Just Resharers
        _ -> Nothing

instance ToText PeopleListByActivity'Collection where
    toText = \case
        Plusoners -> "plusoners"
        Resharers -> "resharers"

instance FromJSON PeopleListByActivity'Collection where
    parseJSON = parseJSONText "PeopleListByActivity'Collection"

instance ToJSON PeopleListByActivity'Collection where
    toJSON = toJSONText

-- | The collection to which to write moments.
data MomentsInsert'Collection
    = MICVault
      -- ^ @vault@
      -- The default collection for writing new moments.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MomentsInsert'Collection

instance FromText MomentsInsert'Collection where
    fromText = \case
        "vault" -> Just MICVault
        _ -> Nothing

instance ToText MomentsInsert'Collection where
    toText = \case
        MICVault -> "vault"

instance FromJSON MomentsInsert'Collection where
    parseJSON = parseJSONText "MomentsInsert'Collection"

instance ToJSON MomentsInsert'Collection where
    toJSON = toJSONText
