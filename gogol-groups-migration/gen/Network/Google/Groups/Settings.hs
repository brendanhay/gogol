{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Groups.Settings
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you manage permission levels and related settings of a group.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference>
module Network.Google.Groups.Settings
    (
    -- * REST Resources

    -- ** Groups Settings API
      GroupsSettings
    , groupsSettings
    , groupsSettingsURL

    -- ** groupsSettings.groups.get
    , module Network.Google.API.GroupsSettings.Groups.Get

    -- ** groupsSettings.groups.patch
    , module Network.Google.API.GroupsSettings.Groups.Patch

    -- ** groupsSettings.groups.update
    , module Network.Google.API.GroupsSettings.Groups.Update

    -- * Types

    -- ** Alt
    , Alt (..)

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
    , gWhoCanInvite
    , gWhoCanLeaveGroup
    , gAllowGoogleCommunication
    , gPrimaryLanguage
    , gDescription
    , gDefaultMessageDenyNotificationText
    , gAllowWebPosting
    ) where

import           Network.Google.API.GroupsSettings.Groups.Get
import           Network.Google.API.GroupsSettings.Groups.Patch
import           Network.Google.API.GroupsSettings.Groups.Update
import           Network.Google.Groups.Settings.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type GroupsSettings =
     GroupsGetAPI :<|> GroupsPatchAPI :<|> GroupsUpdateAPI

groupsSettings :: Proxy GroupsSettings
groupsSettings = Proxy
