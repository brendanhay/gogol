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

-- | The order to return people in.
data PlusDomainsPeopleListOrderBy
    = Alphabetical
      -- ^ @alphabetical@
      -- Order the people by their display name.
    | Best
      -- ^ @best@
      -- Order people based on the relevence to the viewer.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlusDomainsPeopleListOrderBy

instance FromText PlusDomainsPeopleListOrderBy where
    fromText = \case
        "alphabetical" -> Just Alphabetical
        "best" -> Just Best
        _ -> Nothing

instance ToText PlusDomainsPeopleListOrderBy where
    toText = \case
        Alphabetical -> "alphabetical"
        Best -> "best"

instance FromJSON PlusDomainsPeopleListOrderBy where
    parseJSON = parseJSONText "PlusDomainsPeopleListOrderBy"

instance ToJSON PlusDomainsPeopleListOrderBy where
    toJSON = toJSONText

-- | The collection of people to list.
data PlusDomainsPeopleListByActivityCollection
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

instance Hashable PlusDomainsPeopleListByActivityCollection

instance FromText PlusDomainsPeopleListByActivityCollection where
    fromText = \case
        "plusoners" -> Just Plusoners
        "resharers" -> Just Resharers
        "sharedto" -> Just Sharedto
        _ -> Nothing

instance ToText PlusDomainsPeopleListByActivityCollection where
    toText = \case
        Plusoners -> "plusoners"
        Resharers -> "resharers"
        Sharedto -> "sharedto"

instance FromJSON PlusDomainsPeopleListByActivityCollection where
    parseJSON = parseJSONText "PlusDomainsPeopleListByActivityCollection"

instance ToJSON PlusDomainsPeopleListByActivityCollection where
    toJSON = toJSONText

-- | The collection of activities to list.
data PlusDomainsActivitiesListCollection
    = User
      -- ^ @user@
      -- All activities created by the specified user that the authenticated user
      -- is authorized to view.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlusDomainsActivitiesListCollection

instance FromText PlusDomainsActivitiesListCollection where
    fromText = \case
        "user" -> Just User
        _ -> Nothing

instance ToText PlusDomainsActivitiesListCollection where
    toText = \case
        User -> "user"

instance FromJSON PlusDomainsActivitiesListCollection where
    parseJSON = parseJSONText "PlusDomainsActivitiesListCollection"

instance ToJSON PlusDomainsActivitiesListCollection where
    toJSON = toJSONText

-- | The collection of people to list.
data PlusDomainsPeopleListCollection
    = Circled
      -- ^ @circled@
      -- The list of people who this user has added to one or more circles.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlusDomainsPeopleListCollection

instance FromText PlusDomainsPeopleListCollection where
    fromText = \case
        "circled" -> Just Circled
        _ -> Nothing

instance ToText PlusDomainsPeopleListCollection where
    toText = \case
        Circled -> "circled"

instance FromJSON PlusDomainsPeopleListCollection where
    parseJSON = parseJSONText "PlusDomainsPeopleListCollection"

instance ToJSON PlusDomainsPeopleListCollection where
    toJSON = toJSONText

data PlusDomainsMediaInsertCollection
    = Cloud
      -- ^ @cloud@
      -- Upload the media to share on Google+.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlusDomainsMediaInsertCollection

instance FromText PlusDomainsMediaInsertCollection where
    fromText = \case
        "cloud" -> Just Cloud
        _ -> Nothing

instance ToText PlusDomainsMediaInsertCollection where
    toText = \case
        Cloud -> "cloud"

instance FromJSON PlusDomainsMediaInsertCollection where
    parseJSON = parseJSONText "PlusDomainsMediaInsertCollection"

instance ToJSON PlusDomainsMediaInsertCollection where
    toJSON = toJSONText

-- | The order in which to sort the list of comments.
data PlusDomainsCommentsListSortOrder
    = Ascending
      -- ^ @ascending@
      -- Sort oldest comments first.
    | Descending
      -- ^ @descending@
      -- Sort newest comments first.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlusDomainsCommentsListSortOrder

instance FromText PlusDomainsCommentsListSortOrder where
    fromText = \case
        "ascending" -> Just Ascending
        "descending" -> Just Descending
        _ -> Nothing

instance ToText PlusDomainsCommentsListSortOrder where
    toText = \case
        Ascending -> "ascending"
        Descending -> "descending"

instance FromJSON PlusDomainsCommentsListSortOrder where
    parseJSON = parseJSONText "PlusDomainsCommentsListSortOrder"

instance ToJSON PlusDomainsCommentsListSortOrder where
    toJSON = toJSONText
