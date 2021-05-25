{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Mirror
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Interacts with Glass users via the timeline.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference>
module Network.Google.Mirror
    (
    -- * Service Configuration
      mirrorService

    -- * OAuth Scopes
    , glassTimelineScope
    , glassLocationScope

    -- * API Declaration
    , MirrorAPI

    -- * Resources

    -- ** mirror.accounts.insert
    , module Network.Google.Resource.Mirror.Accounts.Insert

    -- ** mirror.contacts.delete
    , module Network.Google.Resource.Mirror.Contacts.Delete

    -- ** mirror.contacts.get
    , module Network.Google.Resource.Mirror.Contacts.Get

    -- ** mirror.contacts.insert
    , module Network.Google.Resource.Mirror.Contacts.Insert

    -- ** mirror.contacts.list
    , module Network.Google.Resource.Mirror.Contacts.List

    -- ** mirror.contacts.patch
    , module Network.Google.Resource.Mirror.Contacts.Patch

    -- ** mirror.contacts.update
    , module Network.Google.Resource.Mirror.Contacts.Update

    -- ** mirror.locations.get
    , module Network.Google.Resource.Mirror.Locations.Get

    -- ** mirror.locations.list
    , module Network.Google.Resource.Mirror.Locations.List

    -- ** mirror.settings.get
    , module Network.Google.Resource.Mirror.Settings.Get

    -- ** mirror.subscriptions.delete
    , module Network.Google.Resource.Mirror.Subscriptions.Delete

    -- ** mirror.subscriptions.insert
    , module Network.Google.Resource.Mirror.Subscriptions.Insert

    -- ** mirror.subscriptions.list
    , module Network.Google.Resource.Mirror.Subscriptions.List

    -- ** mirror.subscriptions.update
    , module Network.Google.Resource.Mirror.Subscriptions.Update

    -- ** mirror.timeline.attachments.delete
    , module Network.Google.Resource.Mirror.Timeline.Attachments.Delete

    -- ** mirror.timeline.attachments.get
    , module Network.Google.Resource.Mirror.Timeline.Attachments.Get

    -- ** mirror.timeline.attachments.insert
    , module Network.Google.Resource.Mirror.Timeline.Attachments.Insert

    -- ** mirror.timeline.attachments.list
    , module Network.Google.Resource.Mirror.Timeline.Attachments.List

    -- ** mirror.timeline.delete
    , module Network.Google.Resource.Mirror.Timeline.Delete

    -- ** mirror.timeline.get
    , module Network.Google.Resource.Mirror.Timeline.Get

    -- ** mirror.timeline.insert
    , module Network.Google.Resource.Mirror.Timeline.Insert

    -- ** mirror.timeline.list
    , module Network.Google.Resource.Mirror.Timeline.List

    -- ** mirror.timeline.patch
    , module Network.Google.Resource.Mirror.Timeline.Patch

    -- ** mirror.timeline.update
    , module Network.Google.Resource.Mirror.Timeline.Update

    -- * Types

    -- ** TimelineListOrderBy
    , TimelineListOrderBy (..)

    -- ** NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncDeliveryTime
    , ncLevel

    -- ** Command
    , Command
    , command
    , cType

    -- ** LocationsListResponse
    , LocationsListResponse
    , locationsListResponse
    , llrKind
    , llrItems

    -- ** Location
    , Location
    , location
    , lKind
    , lLatitude
    , lAddress
    , lDisplayName
    , lId
    , lAccuracy
    , lLongitude
    , lTimestamp

    -- ** Notification
    , Notification
    , notification
    , nOperation
    , nItemId
    , nCollection
    , nUserActions
    , nVerifyToken
    , nUserToken

    -- ** Contact
    , Contact
    , contact
    , conAcceptCommands
    , conSharingFeatures
    , conImageURLs
    , conPriority
    , conKind
    , conAcceptTypes
    , conPhoneNumber
    , conDisplayName
    , conSource
    , conId
    , conType
    , conSpeakableName

    -- ** AuthToken
    , AuthToken
    , authToken
    , atAuthToken
    , atType

    -- ** AttachmentsListResponse
    , AttachmentsListResponse
    , attachmentsListResponse
    , alrKind
    , alrItems

    -- ** MenuItem
    , MenuItem
    , menuItem
    , miValues
    , miRemoveWhenSelected
    , miAction
    , miPayload
    , miContextualCommand
    , miId

    -- ** Setting
    , Setting
    , setting
    , sKind
    , sValue
    , sId

    -- ** Attachment
    , Attachment
    , attachment
    , aContentURL
    , aId
    , aIsProcessingContent
    , aContentType

    -- ** Account
    , Account
    , account
    , aAuthTokens
    , aUserData
    , aPassword
    , aFeatures

    -- ** UserData
    , UserData
    , userData
    , udValue
    , udKey

    -- ** UserAction
    , UserAction
    , userAction
    , uaPayload
    , uaType

    -- ** TimelineListResponse
    , TimelineListResponse
    , timelineListResponse
    , tlrNextPageToken
    , tlrKind
    , tlrItems

    -- ** ContactsListResponse
    , ContactsListResponse
    , contactsListResponse
    , clrKind
    , clrItems

    -- ** MenuValue
    , MenuValue
    , menuValue
    , mvState
    , mvDisplayName
    , mvIconURL

    -- ** Subscription
    , Subscription
    , subscription
    , subCallbackURL
    , subOperation
    , subNotification
    , subKind
    , subCollection
    , subVerifyToken
    , subUserToken
    , subId
    , subUpdated

    -- ** TimelineItem
    , TimelineItem
    , timelineItem
    , tiCreator
    , tiDisplayTime
    , tiEtag
    , tiIsDeleted
    , tiPinScore
    , tiAttachments
    , tiLocation
    , tiMenuItems
    , tiNotification
    , tiText
    , tiKind
    , tiCreated
    , tiSpeakableText
    , tiIsBundleCover
    , tiSpeakableType
    , tiBundleId
    , tiCanonicalURL
    , tiSelfLink
    , tiIsPinned
    , tiSourceItemId
    , tiId
    , tiHTML
    , tiUpdated
    , tiRecipients
    , tiTitle
    , tiInReplyTo

    -- ** SubscriptionsListResponse
    , SubscriptionsListResponse
    , subscriptionsListResponse
    , slrKind
    , slrItems
    ) where

import Network.Google.Prelude
import Network.Google.Mirror.Types
import Network.Google.Resource.Mirror.Accounts.Insert
import Network.Google.Resource.Mirror.Contacts.Delete
import Network.Google.Resource.Mirror.Contacts.Get
import Network.Google.Resource.Mirror.Contacts.Insert
import Network.Google.Resource.Mirror.Contacts.List
import Network.Google.Resource.Mirror.Contacts.Patch
import Network.Google.Resource.Mirror.Contacts.Update
import Network.Google.Resource.Mirror.Locations.Get
import Network.Google.Resource.Mirror.Locations.List
import Network.Google.Resource.Mirror.Settings.Get
import Network.Google.Resource.Mirror.Subscriptions.Delete
import Network.Google.Resource.Mirror.Subscriptions.Insert
import Network.Google.Resource.Mirror.Subscriptions.List
import Network.Google.Resource.Mirror.Subscriptions.Update
import Network.Google.Resource.Mirror.Timeline.Attachments.Delete
import Network.Google.Resource.Mirror.Timeline.Attachments.Get
import Network.Google.Resource.Mirror.Timeline.Attachments.Insert
import Network.Google.Resource.Mirror.Timeline.Attachments.List
import Network.Google.Resource.Mirror.Timeline.Delete
import Network.Google.Resource.Mirror.Timeline.Get
import Network.Google.Resource.Mirror.Timeline.Insert
import Network.Google.Resource.Mirror.Timeline.List
import Network.Google.Resource.Mirror.Timeline.Patch
import Network.Google.Resource.Mirror.Timeline.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Mirror API service.
type MirrorAPI =
     AccountsInsertResource :<|> SettingsGetResource :<|>
       SubscriptionsInsertResource
       :<|> SubscriptionsListResource
       :<|> SubscriptionsDeleteResource
       :<|> SubscriptionsUpdateResource
       :<|> TimelineAttachmentsInsertResource
       :<|> TimelineAttachmentsListResource
       :<|> TimelineAttachmentsGetResource
       :<|> TimelineAttachmentsDeleteResource
       :<|> TimelineInsertResource
       :<|> TimelineListResource
       :<|> TimelinePatchResource
       :<|> TimelineGetResource
       :<|> TimelineDeleteResource
       :<|> TimelineUpdateResource
       :<|> ContactsInsertResource
       :<|> ContactsListResource
       :<|> ContactsPatchResource
       :<|> ContactsGetResource
       :<|> ContactsDeleteResource
       :<|> ContactsUpdateResource
       :<|> LocationsListResource
       :<|> LocationsGetResource
