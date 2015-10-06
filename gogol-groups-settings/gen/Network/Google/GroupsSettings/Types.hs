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
    -- * Service URL
      groupsSettingsRequest

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

-- | Default request referring to version 'v1' of the Groups Settings API.
groupsSettingsRequest :: RequestBuilder
groupsSettingsRequest
  = defaultRequest "https://www.googleapis.com/"
      "groups/v1/groups/"
