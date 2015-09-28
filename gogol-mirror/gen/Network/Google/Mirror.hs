{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Mirror
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for interacting with Glass users via the timeline.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference>
module Network.Google.Mirror
    (
    -- * REST Resources

    -- ** Google Mirror API
      Mirror
    , mirror
    , mirrorURL

    -- ** mirror.accounts.insert
    , module Network.Google.API.Mirror.Accounts.Insert

    -- ** mirror.contacts.delete
    , module Network.Google.API.Mirror.Contacts.Delete

    -- ** mirror.contacts.get
    , module Network.Google.API.Mirror.Contacts.Get

    -- ** mirror.contacts.insert
    , module Network.Google.API.Mirror.Contacts.Insert

    -- ** mirror.contacts.list
    , module Network.Google.API.Mirror.Contacts.List

    -- ** mirror.contacts.patch
    , module Network.Google.API.Mirror.Contacts.Patch

    -- ** mirror.contacts.update
    , module Network.Google.API.Mirror.Contacts.Update

    -- ** mirror.locations.get
    , module Network.Google.API.Mirror.Locations.Get

    -- ** mirror.locations.list
    , module Network.Google.API.Mirror.Locations.List

    -- ** mirror.settings.get
    , module Network.Google.API.Mirror.Settings.Get

    -- ** mirror.subscriptions.delete
    , module Network.Google.API.Mirror.Subscriptions.Delete

    -- ** mirror.subscriptions.insert
    , module Network.Google.API.Mirror.Subscriptions.Insert

    -- ** mirror.subscriptions.list
    , module Network.Google.API.Mirror.Subscriptions.List

    -- ** mirror.subscriptions.update
    , module Network.Google.API.Mirror.Subscriptions.Update

    -- ** mirror.timeline.attachments.delete
    , module Network.Google.API.Mirror.Timeline.Attachments.Delete

    -- ** mirror.timeline.attachments.get
    , module Network.Google.API.Mirror.Timeline.Attachments.Get

    -- ** mirror.timeline.attachments.insert
    , module Network.Google.API.Mirror.Timeline.Attachments.Insert

    -- ** mirror.timeline.attachments.list
    , module Network.Google.API.Mirror.Timeline.Attachments.List

    -- * Types

    -- ** UserAction
    , UserAction
    , userAction
    , uaPayload
    , uaType

    -- ** Alt
    , Alt (..)

    -- ** MenuValue
    , MenuValue
    , menuValue
    , mvState
    , mvDisplayName
    , mvIconUrl

    -- ** Subscription
    , Subscription
    , subscription
    , sCallbackUrl
    , sOperation
    , sNotification
    , sKind
    , sCollection
    , sVerifyToken
    , sUserToken
    , sId
    , sUpdated

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
    , setKind
    , setValue
    , setId

    -- ** SubscriptionsListResponse
    , SubscriptionsListResponse
    , subscriptionsListResponse
    , slrKind
    , slrItems

    -- ** LocationsListResponse
    , LocationsListResponse
    , locationsListResponse
    , llrKind
    , llrItems

    -- ** NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncDeliveryTime
    , ncLevel

    -- ** Command
    , Command
    , command
    , cType

    -- ** ContactsListResponse
    , ContactsListResponse
    , contactsListResponse
    , clrKind
    , clrItems

    -- ** TimelineListResponse
    , TimelineListResponse
    , timelineListResponse
    , tlrNextPageToken
    , tlrKind
    , tlrItems

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
    , conImageUrls
    , conPriority
    , conKind
    , conAcceptTypes
    , conPhoneNumber
    , conDisplayName
    , conSource
    , conId
    , conType
    , conSpeakableName

    -- ** AttachmentsListResponse
    , AttachmentsListResponse
    , attachmentsListResponse
    , alrKind
    , alrItems

    -- ** AuthToken
    , AuthToken
    , authToken
    , atAuthToken
    , atType

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
    , tiCanonicalUrl
    , tiSelfLink
    , tiIsPinned
    , tiSourceItemId
    , tiId
    , tiHtml
    , tiUpdated
    , tiRecipients
    , tiTitle
    , tiInReplyTo

    -- ** Attachment
    , Attachment
    , attachment
    , aContentUrl
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
    ) where

import           Network.Google.API.Mirror.Accounts.Insert
import           Network.Google.API.Mirror.Contacts.Delete
import           Network.Google.API.Mirror.Contacts.Get
import           Network.Google.API.Mirror.Contacts.Insert
import           Network.Google.API.Mirror.Contacts.List
import           Network.Google.API.Mirror.Contacts.Patch
import           Network.Google.API.Mirror.Contacts.Update
import           Network.Google.API.Mirror.Locations.Get
import           Network.Google.API.Mirror.Locations.List
import           Network.Google.API.Mirror.Settings.Get
import           Network.Google.API.Mirror.Subscriptions.Delete
import           Network.Google.API.Mirror.Subscriptions.Insert
import           Network.Google.API.Mirror.Subscriptions.List
import           Network.Google.API.Mirror.Subscriptions.Update
import           Network.Google.API.Mirror.Timeline.Attachments.Delete
import           Network.Google.API.Mirror.Timeline.Attachments.Get
import           Network.Google.API.Mirror.Timeline.Attachments.Insert
import           Network.Google.API.Mirror.Timeline.Attachments.List
import           Network.Google.Mirror.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Mirror =
     ContactsUpdateAPI :<|> TimelineAttachmentsInsertAPI
       :<|> SubscriptionsUpdateAPI
       :<|> LocationsGetAPI
       :<|> ContactsPatchAPI
       :<|> AccountsInsertAPI
       :<|> TimelineAttachmentsGetAPI
       :<|> SubscriptionsListAPI
       :<|> TimelineAttachmentsDeleteAPI
       :<|> LocationsListAPI
       :<|> ContactsGetAPI
       :<|> SettingsGetAPI
       :<|> TimelineAttachmentsListAPI
       :<|> SubscriptionsInsertAPI
       :<|> ContactsInsertAPI
       :<|> SubscriptionsDeleteAPI
       :<|> ContactsListAPI
       :<|> ContactsDeleteAPI

mirror :: Proxy Mirror
mirror = Proxy
