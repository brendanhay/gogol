{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PlusDomains.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PlusDomains.Types.Sum where

import           Network.Google.Prelude

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
    = Alphabetical
      -- ^ @alphabetical@
      -- Order the people by their display name.
    | Best
      -- ^ @best@
      -- Order people based on the relevence to the viewer.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PeopleList'OrderBy

instance FromText PeopleList'OrderBy where
    fromText = \case
        "alphabetical" -> Just Alphabetical
        "best" -> Just Best
        _ -> Nothing

instance ToText PeopleList'OrderBy where
    toText = \case
        Alphabetical -> "alphabetical"
        Best -> "best"

instance FromJSON PeopleList'OrderBy where
    parseJSON = parseJSONText "PeopleList'OrderBy"

instance ToJSON PeopleList'OrderBy where
    toJSON = toJSONText

-- | The collection of people to list.
data PeopleList'Collection
    = Circled
      -- ^ @circled@
      -- The list of people who this user has added to one or more circles.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PeopleList'Collection

instance FromText PeopleList'Collection where
    fromText = \case
        "circled" -> Just Circled
        _ -> Nothing

instance ToText PeopleList'Collection where
    toText = \case
        Circled -> "circled"

instance FromJSON PeopleList'Collection where
    parseJSON = parseJSONText "PeopleList'Collection"

instance ToJSON PeopleList'Collection where
    toJSON = toJSONText

-- | The collection of activities to list.
data ActivitiesList'Collection
    = User
      -- ^ @user@
      -- All activities created by the specified user that the authenticated user
      -- is authorized to view.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ActivitiesList'Collection

instance FromText ActivitiesList'Collection where
    fromText = \case
        "user" -> Just User
        _ -> Nothing

instance ToText ActivitiesList'Collection where
    toText = \case
        User -> "user"

instance FromJSON ActivitiesList'Collection where
    parseJSON = parseJSONText "ActivitiesList'Collection"

instance ToJSON ActivitiesList'Collection where
    toJSON = toJSONText

data MediaInsert'Collection
    = Cloud
      -- ^ @cloud@
      -- Upload the media to share on Google+.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MediaInsert'Collection

instance FromText MediaInsert'Collection where
    fromText = \case
        "cloud" -> Just Cloud
        _ -> Nothing

instance ToText MediaInsert'Collection where
    toText = \case
        Cloud -> "cloud"

instance FromJSON MediaInsert'Collection where
    parseJSON = parseJSONText "MediaInsert'Collection"

instance ToJSON MediaInsert'Collection where
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
    | Sharedto
      -- ^ @sharedto@
      -- List all people who this activity was shared to.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PeopleListByActivity'Collection

instance FromText PeopleListByActivity'Collection where
    fromText = \case
        "plusoners" -> Just Plusoners
        "resharers" -> Just Resharers
        "sharedto" -> Just Sharedto
        _ -> Nothing

instance ToText PeopleListByActivity'Collection where
    toText = \case
        Plusoners -> "plusoners"
        Resharers -> "resharers"
        Sharedto -> "sharedto"

instance FromJSON PeopleListByActivity'Collection where
    parseJSON = parseJSONText "PeopleListByActivity'Collection"

instance ToJSON PeopleListByActivity'Collection where
    toJSON = toJSONText
