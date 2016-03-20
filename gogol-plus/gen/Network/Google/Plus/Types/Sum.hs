{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Plus.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Plus.Types.Sum where

import           Network.Google.Prelude

-- | The collection of people to list.
data PeopleListByActivityCollection
    = Plusoners
      -- ^ @plusoners@
      -- List all people who have +1\'d this activity.
    | Resharers
      -- ^ @resharers@
      -- List all people who have reshared this activity.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PeopleListByActivityCollection

instance FromText PeopleListByActivityCollection where
    fromText = \case
        "plusoners" -> Just Plusoners
        "resharers" -> Just Resharers
        _ -> Nothing

instance ToText PeopleListByActivityCollection where
    toText = \case
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
    = Public
      -- ^ @public@
      -- All public activities created by the specified user.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivitiesListCollection

instance FromText ActivitiesListCollection where
    fromText = \case
        "public" -> Just Public
        _ -> Nothing

instance ToText ActivitiesListCollection where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PeopleListCollection

instance FromText PeopleListCollection where
    fromText = \case
        "connected" -> Just Connected
        "visible" -> Just Visible
        _ -> Nothing

instance ToText PeopleListCollection where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivitiesSearchOrderBy

instance FromText ActivitiesSearchOrderBy where
    fromText = \case
        "best" -> Just ASOBBest
        "recent" -> Just ASOBRecent
        _ -> Nothing

instance ToText ActivitiesSearchOrderBy where
    toText = \case
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
