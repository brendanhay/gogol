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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MediaInsertCollection

instance FromHttpApiData MediaInsertCollection where
    parseQueryParam = \case
        "cloud" -> Right Cloud
        x -> Left ("Unable to parse MediaInsertCollection from: " <> x)

instance ToHttpApiData MediaInsertCollection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleListByActivityCollection

instance FromHttpApiData PeopleListByActivityCollection where
    parseQueryParam = \case
        "plusoners" -> Right Plusoners
        "resharers" -> Right Resharers
        "sharedto" -> Right Sharedto
        x -> Left ("Unable to parse PeopleListByActivityCollection from: " <> x)

instance ToHttpApiData PeopleListByActivityCollection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleListOrderBy

instance FromHttpApiData PeopleListOrderBy where
    parseQueryParam = \case
        "alphabetical" -> Right Alphabetical
        "best" -> Right Best
        x -> Left ("Unable to parse PeopleListOrderBy from: " <> x)

instance ToHttpApiData PeopleListOrderBy where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivitiesListCollection

instance FromHttpApiData ActivitiesListCollection where
    parseQueryParam = \case
        "user" -> Right User
        x -> Left ("Unable to parse ActivitiesListCollection from: " <> x)

instance ToHttpApiData ActivitiesListCollection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleListCollection

instance FromHttpApiData PeopleListCollection where
    parseQueryParam = \case
        "circled" -> Right Circled
        x -> Left ("Unable to parse PeopleListCollection from: " <> x)

instance ToHttpApiData PeopleListCollection where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsListSortOrder

instance FromHttpApiData CommentsListSortOrder where
    parseQueryParam = \case
        "ascending" -> Right Ascending
        "descending" -> Right Descending
        x -> Left ("Unable to parse CommentsListSortOrder from: " <> x)

instance ToHttpApiData CommentsListSortOrder where
    toQueryParam = \case
        Ascending -> "ascending"
        Descending -> "descending"

instance FromJSON CommentsListSortOrder where
    parseJSON = parseJSONText "CommentsListSortOrder"

instance ToJSON CommentsListSortOrder where
    toJSON = toJSONText
