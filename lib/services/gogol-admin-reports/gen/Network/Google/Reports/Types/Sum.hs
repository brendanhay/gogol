{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Reports.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Reports.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Application name for which the events are to be retrieved.
data ActivitiesListApplicationName
    = AccessTransparency
      -- ^ @access_transparency@
      -- The Google Workspace Access Transparency activity reports return
      -- information about different types of Access Transparency activity
      -- events.
    | Admin
      -- ^ @admin@
      -- The Admin console application\'s activity reports return account
      -- information about different types of administrator activity events.
    | Calendar
      -- ^ @calendar@
      -- The Google Calendar application\'s activity reports return information
      -- about various Calendar activity events.
    | Chat
      -- ^ @chat@
      -- The Chat activity reports return information about various Chat activity
      -- events.
    | Drive
      -- ^ @drive@
      -- The Google Drive application\'s activity reports return information
      -- about various Google Drive activity events. The Drive activity report is
      -- only available for Google Workspace Business and Enterprise customers.
    | Gcp
      -- ^ @gcp@
      -- The Google Cloud Platform application\'s activity reports return
      -- information about various GCP activity events.
    | Gplus
      -- ^ @gplus@
      -- The Google+ application\'s activity reports return information about
      -- various Google+ activity events.
    | Groups
      -- ^ @groups@
      -- The Google Groups application\'s activity reports return information
      -- about various Groups activity events.
    | GroupsEnterprise
      -- ^ @groups_enterprise@
      -- The Enterprise Groups activity reports return information about various
      -- Enterprise group activity events.
    | Jamboard
      -- ^ @jamboard@
      -- The Jamboard activity reports return information about various Jamboard
      -- activity events.
    | Login
      -- ^ @login@
      -- The Login application\'s activity reports return account information
      -- about different types of Login activity events.
    | Meet
      -- ^ @meet@
      -- The Meet Audit activity report return information about different types
      -- of Meet Audit activity events.
    | Mobile
      -- ^ @mobile@
      -- The Mobile Audit activity report return information about different
      -- types of Mobile Audit activity events.
    | Rules
      -- ^ @rules@
      -- The Rules activity report return information about different types of
      -- Rules activity events.
    | Saml
      -- ^ @saml@
      -- The SAML activity report return information about different types of
      -- SAML activity events.
    | Token
      -- ^ @token@
      -- The Token application\'s activity reports return account information
      -- about different types of Token activity events.
    | UserAccounts
      -- ^ @user_accounts@
      -- The User Accounts application\'s activity reports return account
      -- information about different types of User Accounts activity events.
    | ContextAwareAccess
      -- ^ @context_aware_access@
      -- The Context-aware access activity reports return information about
      -- users\' access denied events due to Context-aware access rules.
    | Chrome
      -- ^ @chrome@
      -- The Chrome activity reports return information about unsafe events
      -- reported in the context of the WebProtect features of BeyondCorp.
    | DataStudio
      -- ^ @data_studio@
      -- The Data Studio activity reports return information about various types
      -- of Data Studio activity events.
    | Keep
      -- ^ @keep@
      -- The Keep application\'s activity reports return information about
      -- various Google Keep activity events. The Keep activity report is only
      -- available for Google Workspace Business and Enterprise customers.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivitiesListApplicationName

instance FromHttpApiData ActivitiesListApplicationName where
    parseQueryParam = \case
        "access_transparency" -> Right AccessTransparency
        "admin" -> Right Admin
        "calendar" -> Right Calendar
        "chat" -> Right Chat
        "drive" -> Right Drive
        "gcp" -> Right Gcp
        "gplus" -> Right Gplus
        "groups" -> Right Groups
        "groups_enterprise" -> Right GroupsEnterprise
        "jamboard" -> Right Jamboard
        "login" -> Right Login
        "meet" -> Right Meet
        "mobile" -> Right Mobile
        "rules" -> Right Rules
        "saml" -> Right Saml
        "token" -> Right Token
        "user_accounts" -> Right UserAccounts
        "context_aware_access" -> Right ContextAwareAccess
        "chrome" -> Right Chrome
        "data_studio" -> Right DataStudio
        "keep" -> Right Keep
        x -> Left ("Unable to parse ActivitiesListApplicationName from: " <> x)

instance ToHttpApiData ActivitiesListApplicationName where
    toQueryParam = \case
        AccessTransparency -> "access_transparency"
        Admin -> "admin"
        Calendar -> "calendar"
        Chat -> "chat"
        Drive -> "drive"
        Gcp -> "gcp"
        Gplus -> "gplus"
        Groups -> "groups"
        GroupsEnterprise -> "groups_enterprise"
        Jamboard -> "jamboard"
        Login -> "login"
        Meet -> "meet"
        Mobile -> "mobile"
        Rules -> "rules"
        Saml -> "saml"
        Token -> "token"
        UserAccounts -> "user_accounts"
        ContextAwareAccess -> "context_aware_access"
        Chrome -> "chrome"
        DataStudio -> "data_studio"
        Keep -> "keep"

instance FromJSON ActivitiesListApplicationName where
    parseJSON = parseJSONText "ActivitiesListApplicationName"

instance ToJSON ActivitiesListApplicationName where
    toJSON = toJSONText

-- | Represents the type of entity for the report.
data EntityUsageReportsGetEntityType
    = GplusCommUnities
      -- ^ @gplus_communities@
      -- Returns a report on Google+ communities.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EntityUsageReportsGetEntityType

instance FromHttpApiData EntityUsageReportsGetEntityType where
    parseQueryParam = \case
        "gplus_communities" -> Right GplusCommUnities
        x -> Left ("Unable to parse EntityUsageReportsGetEntityType from: " <> x)

instance ToHttpApiData EntityUsageReportsGetEntityType where
    toQueryParam = \case
        GplusCommUnities -> "gplus_communities"

instance FromJSON EntityUsageReportsGetEntityType where
    parseJSON = parseJSONText "EntityUsageReportsGetEntityType"

instance ToJSON EntityUsageReportsGetEntityType where
    toJSON = toJSONText

-- | Application name for which the events are to be retrieved.
data ActivitiesWatchApplicationName
    = AWANAccessTransparency
      -- ^ @access_transparency@
      -- The Google Workspace Access Transparency activity reports return
      -- information about different types of Access Transparency activity
      -- events.
    | AWANAdmin
      -- ^ @admin@
      -- The Admin console application\'s activity reports return account
      -- information about different types of administrator activity events.
    | AWANCalendar
      -- ^ @calendar@
      -- The Google Calendar application\'s activity reports return information
      -- about various Calendar activity events.
    | AWANChat
      -- ^ @chat@
      -- The Chat activity reports return information about various Chat activity
      -- events.
    | AWANDrive
      -- ^ @drive@
      -- The Google Drive application\'s activity reports return information
      -- about various Google Drive activity events. The Drive activity report is
      -- only available for Google Workspace Business and Google Workspace
      -- Enterprise customers.
    | AWANGcp
      -- ^ @gcp@
      -- The Google Cloud Platform application\'s activity reports return
      -- information about various GCP activity events.
    | AWANGplus
      -- ^ @gplus@
      -- The Google+ application\'s activity reports return information about
      -- various Google+ activity events.
    | AWANGroups
      -- ^ @groups@
      -- The Google Groups application\'s activity reports return information
      -- about various Groups activity events.
    | AWANGroupsEnterprise
      -- ^ @groups_enterprise@
      -- The Enterprise Groups activity reports return information about various
      -- Enterprise group activity events.
    | AWANJamboard
      -- ^ @jamboard@
      -- The Jamboard activity reports return information about various Jamboard
      -- activity events.
    | AWANLogin
      -- ^ @login@
      -- The Login application\'s activity reports return account information
      -- about different types of Login activity events.
    | AWANMeet
      -- ^ @meet@
      -- The Meet Audit activity report return information about different types
      -- of Meet Audit activity events.
    | AWANMobile
      -- ^ @mobile@
      -- The Mobile Audit activity report return information about different
      -- types of Mobile Audit activity events.
    | AWANRules
      -- ^ @rules@
      -- The Rules activity report return information about different types of
      -- Rules activity events.
    | AWANSaml
      -- ^ @saml@
      -- The SAML activity report return information about different types of
      -- SAML activity events.
    | AWANToken
      -- ^ @token@
      -- The Token application\'s activity reports return account information
      -- about different types of Token activity events.
    | AWANUserAccounts
      -- ^ @user_accounts@
      -- The User Accounts application\'s activity reports return account
      -- information about different types of User Accounts activity events.
    | AWANContextAwareAccess
      -- ^ @context_aware_access@
      -- The Context-aware access activity reports return information about
      -- users\' access denied events due to Context-aware access rules.
    | AWANChrome
      -- ^ @chrome@
      -- The Chrome activity reports return information about unsafe events
      -- reported in the context of the WebProtect features of BeyondCorp.
    | AWANDataStudio
      -- ^ @data_studio@
      -- The Data Studio activity reports return information about various types
      -- of Data Studio activity events.
    | AWANKeep
      -- ^ @keep@
      -- The Keep application\'s activity reports return information about
      -- various Google Keep activity events. The Keep activity report is only
      -- available for Google Workspace Business and Enterprise customers.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ActivitiesWatchApplicationName

instance FromHttpApiData ActivitiesWatchApplicationName where
    parseQueryParam = \case
        "access_transparency" -> Right AWANAccessTransparency
        "admin" -> Right AWANAdmin
        "calendar" -> Right AWANCalendar
        "chat" -> Right AWANChat
        "drive" -> Right AWANDrive
        "gcp" -> Right AWANGcp
        "gplus" -> Right AWANGplus
        "groups" -> Right AWANGroups
        "groups_enterprise" -> Right AWANGroupsEnterprise
        "jamboard" -> Right AWANJamboard
        "login" -> Right AWANLogin
        "meet" -> Right AWANMeet
        "mobile" -> Right AWANMobile
        "rules" -> Right AWANRules
        "saml" -> Right AWANSaml
        "token" -> Right AWANToken
        "user_accounts" -> Right AWANUserAccounts
        "context_aware_access" -> Right AWANContextAwareAccess
        "chrome" -> Right AWANChrome
        "data_studio" -> Right AWANDataStudio
        "keep" -> Right AWANKeep
        x -> Left ("Unable to parse ActivitiesWatchApplicationName from: " <> x)

instance ToHttpApiData ActivitiesWatchApplicationName where
    toQueryParam = \case
        AWANAccessTransparency -> "access_transparency"
        AWANAdmin -> "admin"
        AWANCalendar -> "calendar"
        AWANChat -> "chat"
        AWANDrive -> "drive"
        AWANGcp -> "gcp"
        AWANGplus -> "gplus"
        AWANGroups -> "groups"
        AWANGroupsEnterprise -> "groups_enterprise"
        AWANJamboard -> "jamboard"
        AWANLogin -> "login"
        AWANMeet -> "meet"
        AWANMobile -> "mobile"
        AWANRules -> "rules"
        AWANSaml -> "saml"
        AWANToken -> "token"
        AWANUserAccounts -> "user_accounts"
        AWANContextAwareAccess -> "context_aware_access"
        AWANChrome -> "chrome"
        AWANDataStudio -> "data_studio"
        AWANKeep -> "keep"

instance FromJSON ActivitiesWatchApplicationName where
    parseJSON = parseJSONText "ActivitiesWatchApplicationName"

instance ToJSON ActivitiesWatchApplicationName where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Represents the key of the object to filter the data with.
data EntityUsageReportsGetEntityKey
    = All
      -- ^ @all@
      -- Returns activity events for all users.
    | EntityKey
      -- ^ @entityKey@
      -- Represents an app-specific identifier for the entity. For details on how
      -- to obtain the \`entityKey\` for a particular \`entityType\`, see the
      -- Entities Usage parameters reference guides.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EntityUsageReportsGetEntityKey

instance FromHttpApiData EntityUsageReportsGetEntityKey where
    parseQueryParam = \case
        "all" -> Right All
        "entityKey" -> Right EntityKey
        x -> Left ("Unable to parse EntityUsageReportsGetEntityKey from: " <> x)

instance ToHttpApiData EntityUsageReportsGetEntityKey where
    toQueryParam = \case
        All -> "all"
        EntityKey -> "entityKey"

instance FromJSON EntityUsageReportsGetEntityKey where
    parseJSON = parseJSONText "EntityUsageReportsGetEntityKey"

instance ToJSON EntityUsageReportsGetEntityKey where
    toJSON = toJSONText
