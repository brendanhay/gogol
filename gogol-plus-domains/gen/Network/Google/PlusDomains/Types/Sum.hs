{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PlusDomains.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PlusDomains.Types.Sum where

import           Network.Google.Prelude

data MediaInsertCollection
    = Cloud
      -- ^ @cloud@
      -- Upload the media to share on Google+.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MediaInsertCollection

instance FromText MediaInsertCollection where
    fromText = \case
        "cloud" -> Just Cloud
        _ -> Nothing

instance ToText MediaInsertCollection where
    toText = \case
        Cloud -> "cloud"

instance FromJSON MediaInsertCollection where
    parseJSON = parseJSONText "MediaInsertCollection"

instance ToJSON MediaInsertCollection where
    toJSON = toJSONText

-- | The collection of people to list.
data PeopleListByActivityCollection
    = Plusoners
      -- ^ @plusoners@
      -- List all people who have +1\'d this activity.
    | Resharers
      -- ^ @resharers@
      -- List all people who have reshared this activity.
    | Sharedto
      -- ^ @sharedto@
      -- List all people who this activity was shared to.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PeopleListByActivityCollection

instance FromText PeopleListByActivityCollection where
    fromText = \case
        "plusoners" -> Just Plusoners
        "resharers" -> Just Resharers
        "sharedto" -> Just Sharedto
        _ -> Nothing

instance ToText PeopleListByActivityCollection where
    toText = \case
        Plusoners -> "plusoners"
        Resharers -> "resharers"
        Sharedto -> "sharedto"

instance FromJSON PeopleListByActivityCollection where
    parseJSON = parseJSONText "PeopleListByActivityCollection"

instance ToJSON PeopleListByActivityCollection where
    toJSON = toJSONText

-- | The order to return people in.
data PeopleListOrderBy
    = Alphabetical
      -- ^ @alphabetical@
      -- Order the people by their display name.
    | Best
      -- ^ @best@
      -- Order people based on the relevence to the viewer.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PeopleListOrderBy

instance FromText PeopleListOrderBy where
    fromText = \case
        "alphabetical" -> Just Alphabetical
        "best" -> Just Best
        _ -> Nothing

instance ToText PeopleListOrderBy where
    toText = \case
        Alphabetical -> "alphabetical"
        Best -> "best"

instance FromJSON PeopleListOrderBy where
    parseJSON = parseJSONText "PeopleListOrderBy"

instance ToJSON PeopleListOrderBy where
    toJSON = toJSONText

-- | The collection of activities to list.
data ActivitiesListCollection
    = User
      -- ^ @user@
      -- All activities created by the specified user that the authenticated user
      -- is authorized to view.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivitiesListCollection

instance FromText ActivitiesListCollection where
    fromText = \case
        "user" -> Just User
        _ -> Nothing

instance ToText ActivitiesListCollection where
    toText = \case
        User -> "user"

instance FromJSON ActivitiesListCollection where
    parseJSON = parseJSONText "ActivitiesListCollection"

instance ToJSON ActivitiesListCollection where
    toJSON = toJSONText

-- | The collection of people to list.
data PeopleListCollection
    = Circled
      -- ^ @circled@
      -- The list of people who this user has added to one or more circles.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PeopleListCollection

instance FromText PeopleListCollection where
    fromText = \case
        "circled" -> Just Circled
        _ -> Nothing

instance ToText PeopleListCollection where
    toText = \case
        Circled -> "circled"

instance FromJSON PeopleListCollection where
    parseJSON = parseJSONText "PeopleListCollection"

instance ToJSON PeopleListCollection where
    toJSON = toJSONText

-- | The order in which to sort the list of comments.
data CommentsListSortOrder
    = Ascending
      -- ^ @ascending@
      -- Sort oldest comments first.
    | Descending
      -- ^ @descending@
      -- Sort newest comments first.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentsListSortOrder

instance FromText CommentsListSortOrder where
    fromText = \case
        "ascending" -> Just Ascending
        "descending" -> Just Descending
        _ -> Nothing

instance ToText CommentsListSortOrder where
    toText = \case
        Ascending -> "ascending"
        Descending -> "descending"

instance FromJSON CommentsListSortOrder where
    parseJSON = parseJSONText "CommentsListSortOrder"

instance ToJSON CommentsListSortOrder where
    toJSON = toJSONText
