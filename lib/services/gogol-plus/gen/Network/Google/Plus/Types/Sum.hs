{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Plus.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Plus.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The collection of people to list.
data PeopleListByActivityCollection
    = Plusoners
      -- ^ @plusoners@
      -- List all people who have +1\'d this activity.
    | Resharers
      -- ^ @resharers@
      -- List all people who have reshared this activity.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleListByActivityCollection

instance FromHttpApiData PeopleListByActivityCollection where
    parseQueryParam = \case
        "plusoners" -> Right Plusoners
        "resharers" -> Right Resharers
        x -> Left ("Unable to parse PeopleListByActivityCollection from: " <> x)

instance ToHttpApiData PeopleListByActivityCollection where
    toQueryParam = \case
        Plusoners -> "plusoners"
        Resharers -> "resharers"

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
    = Public
      -- ^ @public@
      -- All public activities created by the specified user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivitiesListCollection

instance FromHttpApiData ActivitiesListCollection where
    parseQueryParam = \case
        "public" -> Right Public
        x -> Left ("Unable to parse ActivitiesListCollection from: " <> x)

instance ToHttpApiData ActivitiesListCollection where
    toQueryParam = \case
        Public -> "public"

instance FromJSON ActivitiesListCollection where
    parseJSON = parseJSONText "ActivitiesListCollection"

instance ToJSON ActivitiesListCollection where
    toJSON = toJSONText

-- | The collection of people to list.
data PeopleListCollection
    = Connected
      -- ^ @connected@
      -- The list of visible people in the authenticated user\'s circles who also
      -- use the requesting app. This list is limited to users who made their app
      -- activities visible to the authenticated user.
    | Visible
      -- ^ @visible@
      -- The list of people who this user has added to one or more circles,
      -- limited to the circles visible to the requesting application.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PeopleListCollection

instance FromHttpApiData PeopleListCollection where
    parseQueryParam = \case
        "connected" -> Right Connected
        "visible" -> Right Visible
        x -> Left ("Unable to parse PeopleListCollection from: " <> x)

instance ToHttpApiData PeopleListCollection where
    toQueryParam = \case
        Connected -> "connected"
        Visible -> "visible"

instance FromJSON PeopleListCollection where
    parseJSON = parseJSONText "PeopleListCollection"

instance ToJSON PeopleListCollection where
    toJSON = toJSONText

-- | Specifies how to order search results.
data ActivitiesSearchOrderBy
    = ASOBBest
      -- ^ @best@
      -- Sort activities by relevance to the user, most relevant first.
    | ASOBRecent
      -- ^ @recent@
      -- Sort activities by published date, most recent first.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivitiesSearchOrderBy

instance FromHttpApiData ActivitiesSearchOrderBy where
    parseQueryParam = \case
        "best" -> Right ASOBBest
        "recent" -> Right ASOBRecent
        x -> Left ("Unable to parse ActivitiesSearchOrderBy from: " <> x)

instance ToHttpApiData ActivitiesSearchOrderBy where
    toQueryParam = \case
        ASOBBest -> "best"
        ASOBRecent -> "recent"

instance FromJSON ActivitiesSearchOrderBy where
    parseJSON = parseJSONText "ActivitiesSearchOrderBy"

instance ToJSON ActivitiesSearchOrderBy where
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
