{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GroupsSettings.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GroupsSettings.Types
    (
    -- * Service Configuration
      groupsSettingsService

    -- * OAuth Scopes
    , appsGroupsSettingsScope

    -- * Groups
    , Groups
    , groups
    , gWhoCanHideAbuse
    , gEmail
    , gSendMessageDenyNotification
    , gWhoCanEnterFreeFormTags
    , gWhoCanAssignTopics
    , gWhoCanPostMessage
    , gWhoCanDeleteTopics
    , gAllowExternalMembers
    , gWhoCanModifyMembers
    , gWhoCanAssistContent
    , gShowInGroupDirectory
    , gWhoCanUnmarkFavoriteReplyOnAnyTopic
    , gWhoCanTakeTopics
    , gWhoCanLockTopics
    , gSpamModerationLevel
    , gKind
    , gWhoCanDiscoverGroup
    , gWhoCanViewMembership
    , gMembersCanPostAsTheGroup
    , gWhoCanMakeTopicsSticky
    , gWhoCanPostAnnouncements
    , gWhoCanViewGroup
    , gWhoCanJoin
    , gWhoCanModerateMembers
    , gArchiveOnly
    , gMaxMessageBytes
    , gReplyTo
    , gMessageModerationLevel
    , gWhoCanMarkFavoriteReplyOnAnyTopic
    , gIncludeInGlobalAddressList
    , gIsArchived
    , gWhoCanModerateContent
    , gCustomRolesEnabledForSettingsToBeMerged
    , gName
    , gWhoCanUnassignTopic
    , gMessageDisplayFont
    , gIncludeCustomFooter
    , gFavoriteRepliesOnTop
    , gCustomReplyTo
    , gWhoCanAddReferences
    , gWhoCanContactOwner
    , gWhoCanAdd
    , gWhoCanInvite
    , gWhoCanLeaveGroup
    , gWhoCanApproveMembers
    , gWhoCanModifyTagsAndCategories
    , gAllowGoogleCommunication
    , gWhoCanMoveTopicsIn
    , gWhoCanMarkNoResponseNeeded
    , gCustomFooterText
    , gWhoCanDeleteAnyPost
    , gWhoCanBanUsers
    , gWhoCanApproveMessages
    , gWhoCanMarkDuplicate
    , gEnableCollaborativeInbox
    , gPrimaryLanguage
    , gDescription
    , gDefaultMessageDenyNotificationText
    , gWhoCanMarkFavoriteReplyOnOwnTopic
    , gAllowWebPosting
    , gWhoCanMoveTopicsOut
    ) where

import           Network.Google.GroupsSettings.Types.Product
import           Network.Google.GroupsSettings.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Groups Settings API. This contains the host and root path used as a starting point for constructing service requests.
groupsSettingsService :: ServiceConfig
groupsSettingsService
  = defaultService (ServiceId "groupssettings:v1")
      "www.googleapis.com"

-- | View and manage the settings of a G Suite group
appsGroupsSettingsScope :: Proxy '["https://www.googleapis.com/auth/apps.groups.settings"]
appsGroupsSettingsScope = Proxy
