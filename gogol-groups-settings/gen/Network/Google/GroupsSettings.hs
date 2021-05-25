{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.GroupsSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages permission levels and related settings of a group.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference>
module Network.Google.GroupsSettings
    (
    -- * Service Configuration
      groupsSettingsService

    -- * OAuth Scopes
    , appsGroupsSettingsScope

    -- * API Declaration
    , GroupsSettingsAPI

    -- * Resources

    -- ** groupsSettings.groups.get
    , module Network.Google.Resource.GroupsSettings.Groups.Get

    -- ** groupsSettings.groups.patch
    , module Network.Google.Resource.GroupsSettings.Groups.Patch

    -- ** groupsSettings.groups.update
    , module Network.Google.Resource.GroupsSettings.Groups.Update

    -- * Types

    -- ** Groups
    , Groups
    , groups
    , gWhoCanHideAbuse
    , gEmail
    , gSendMessageDenyNotification
    , gWhoCanEnterFreeFormTags
    , gWhoCanAssignTopics
    , gWhoCanPostMessage
    , gWhoCanDeleteTopics
    , gDefaultSender
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

import Network.Google.Prelude
import Network.Google.GroupsSettings.Types
import Network.Google.Resource.GroupsSettings.Groups.Get
import Network.Google.Resource.GroupsSettings.Groups.Patch
import Network.Google.Resource.GroupsSettings.Groups.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Groups Settings API service.
type GroupsSettingsAPI =
     GroupsPatchResource :<|> GroupsGetResource :<|>
       GroupsUpdateResource
