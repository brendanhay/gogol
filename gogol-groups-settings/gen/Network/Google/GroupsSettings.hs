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
-- Lets you manage permission levels and related settings of a group.
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
    , gWhoCanAdd
    , gWhoCanInvite
    , gWhoCanLeaveGroup
    , gAllowGoogleCommunication
    , gPrimaryLanguage
    , gDescription
    , gDefaultMessageDenyNotificationText
    , gAllowWebPosting
    ) where

import           Network.Google.GroupsSettings.Types
import           Network.Google.Prelude
import           Network.Google.Resource.GroupsSettings.Groups.Get
import           Network.Google.Resource.GroupsSettings.Groups.Patch
import           Network.Google.Resource.GroupsSettings.Groups.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Groups Settings API service.
type GroupsSettingsAPI =
     GroupsPatchResource :<|> GroupsGetResource :<|>
       GroupsUpdateResource
