{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GroupsSettings.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GroupsSettings.Types
    (
    -- * Service Configuration
      groupsSettings

    -- * OAuth Scopes
    , appsGroupsSettingsScope

    -- * Groups
    , Groups
    , groups
    , gEmail
    , gSendMessageDenyNotification
    , gWhoCanPostMessage
    , gAllowExternalMembers
    , gShowInGroupDirectory
    , gSpamModerationLevel
    , gKind
    , gWhoCanViewMembership
    , gMembersCanPostAsTheGroup
    , gWhoCanViewGroup
    , gWhoCanJoin
    , gArchiveOnly
    , gMaxMessageBytes
    , gReplyTo
    , gMessageModerationLevel
    , gIncludeInGlobalAddressList
    , gIsArchived
    , gName
    , gMessageDisplayFont
    , gCustomReplyTo
    , gWhoCanContactOwner
    , gWhoCanInvite
    , gWhoCanLeaveGroup
    , gAllowGoogleCommunication
    , gPrimaryLanguage
    , gDescription
    , gDefaultMessageDenyNotificationText
    , gAllowWebPosting
    ) where

import           Network.Google.GroupsSettings.Types.Product
import           Network.Google.GroupsSettings.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Groups Settings API. This contains the host and root path used as a starting point for constructing service requests.
groupsSettings :: Service
groupsSettings
  = defaultService (ServiceId "groupssettings:v1")
      "www.googleapis.com"
      "groups/v1/groups/"

-- | View and manage the settings of a Google Apps Group
appsGroupsSettingsScope :: OAuthScope
appsGroupsSettingsScope = "https://www.googleapis.com/auth/apps.groups.settings";
