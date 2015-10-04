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
data OrderBy
    = Alphabetical
      -- ^ @alphabetical@
      -- Order the people by their display name.
    | Best
      -- ^ @best@
      -- Order people based on the relevence to the viewer.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderBy

instance FromText OrderBy where
    fromText = \case
        "alphabetical" -> Just Alphabetical
        "best" -> Just Best
        _ -> Nothing

instance ToText OrderBy where
    toText = \case
        Alphabetical -> "alphabetical"
        Best -> "best"

instance FromJSON OrderBy where
    parseJSON = parseJSONText "OrderBy"

instance ToJSON OrderBy where
    toJSON = toJSONText

-- | The collection of people to list.
data PlusDomainsPeopleListByActivityCollection
    = PDPLBACPlusoners
      -- ^ @plusoners@
      -- List all people who have +1\'d this activity.
    | PDPLBACResharers
      -- ^ @resharers@
      -- List all people who have reshared this activity.
    | PDPLBACSharedto
      -- ^ @sharedto@
      -- List all people who this activity was shared to.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PlusDomainsPeopleListByActivityCollection

instance FromText PlusDomainsPeopleListByActivityCollection where
    fromText = \case
        "plusoners" -> Just PDPLBACPlusoners
        "resharers" -> Just PDPLBACResharers
        "sharedto" -> Just PDPLBACSharedto
        _ -> Nothing

instance ToText PlusDomainsPeopleListByActivityCollection where
    toText = \case
        PDPLBACPlusoners -> "plusoners"
        PDPLBACResharers -> "resharers"
        PDPLBACSharedto -> "sharedto"

instance FromJSON PlusDomainsPeopleListByActivityCollection where
    parseJSON = parseJSONText "PlusDomainsPeopleListByActivityCollection"

instance ToJSON PlusDomainsPeopleListByActivityCollection where
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

-- | The collection of activities to list.
data Collection
    = User
      -- ^ @user@
      -- All activities created by the specified user that the authenticated user
      -- is authorized to view.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Collection

instance FromText Collection where
    fromText = \case
        "user" -> Just User
        _ -> Nothing

instance ToText Collection where
    toText = \case
        User -> "user"

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
