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
    -- * API
      MirrorAPI
    , mirrorAPI
    , mirrorURL

    -- * Service Methods

    -- * REST Resources

    -- ** MirrorAccountsInsert
    , module Mirror.Accounts.Insert

    -- ** MirrorContactsDelete
    , module Mirror.Contacts.Delete

    -- ** MirrorContactsGet
    , module Mirror.Contacts.Get

    -- ** MirrorContactsInsert
    , module Mirror.Contacts.Insert

    -- ** MirrorContactsList
    , module Mirror.Contacts.List

    -- ** MirrorContactsPatch
    , module Mirror.Contacts.Patch

    -- ** MirrorContactsUpdate
    , module Mirror.Contacts.Update

    -- ** MirrorLocationsGet
    , module Mirror.Locations.Get

    -- ** MirrorLocationsList
    , module Mirror.Locations.List

    -- ** MirrorSettingsGet
    , module Mirror.Settings.Get

    -- ** MirrorSubscriptionsDelete
    , module Mirror.Subscriptions.Delete

    -- ** MirrorSubscriptionsInsert
    , module Mirror.Subscriptions.Insert

    -- ** MirrorSubscriptionsList
    , module Mirror.Subscriptions.List

    -- ** MirrorSubscriptionsUpdate
    , module Mirror.Subscriptions.Update

    -- ** MirrorTimelineAttachmentsDelete
    , module Mirror.Timeline.Attachments.Delete

    -- ** MirrorTimelineAttachmentsGet
    , module Mirror.Timeline.Attachments.Get

    -- ** MirrorTimelineAttachmentsInsert
    , module Mirror.Timeline.Attachments.Insert

    -- ** MirrorTimelineAttachmentsList
    , module Mirror.Timeline.Attachments.List

    -- ** MirrorTimelineDelete
    , module Mirror.Timeline.Delete

    -- ** MirrorTimelineGet
    , module Mirror.Timeline.Get

    -- ** MirrorTimelineInsert
    , module Mirror.Timeline.Insert

    -- ** MirrorTimelineList
    , module Mirror.Timeline.List

    -- ** MirrorTimelinePatch
    , module Mirror.Timeline.Patch

    -- ** MirrorTimelineUpdate
    , module Mirror.Timeline.Update

    -- * Types

    -- ** Command
    , Command
    , command
    , cType

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

    -- ** Account
    , Account
    , account
    , aAuthTokens
    , aUserData
    , aPassword
    , aFeatures

    -- ** Attachment
    , Attachment
    , attachment
    , aContentUrl
    , aId
    , aIsProcessingContent
    , aContentType

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

    -- ** MenuValue
    , MenuValue
    , menuValue
    , mvState
    , mvDisplayName
    , mvIconUrl

    -- ** Subscription
    , Subscription
    , subscription
    , subCallbackUrl
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

    -- ** SubscriptionsListResponse
    , SubscriptionsListResponse
    , subscriptionsListResponse
    , slrKind
    , slrItems
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Mirror.Accounts.Insert
import           Network.Google.Resource.Mirror.Contacts.Delete
import           Network.Google.Resource.Mirror.Contacts.Get
import           Network.Google.Resource.Mirror.Contacts.Insert
import           Network.Google.Resource.Mirror.Contacts.List
import           Network.Google.Resource.Mirror.Contacts.Patch
import           Network.Google.Resource.Mirror.Contacts.Update
import           Network.Google.Resource.Mirror.Locations.Get
import           Network.Google.Resource.Mirror.Locations.List
import           Network.Google.Resource.Mirror.Settings.Get
import           Network.Google.Resource.Mirror.Subscriptions.Delete
import           Network.Google.Resource.Mirror.Subscriptions.Insert
import           Network.Google.Resource.Mirror.Subscriptions.List
import           Network.Google.Resource.Mirror.Subscriptions.Update
import           Network.Google.Resource.Mirror.Timeline.Attachments.Delete
import           Network.Google.Resource.Mirror.Timeline.Attachments.Get
import           Network.Google.Resource.Mirror.Timeline.Attachments.Insert
import           Network.Google.Resource.Mirror.Timeline.Attachments.List
import           Network.Google.Resource.Mirror.Timeline.Delete
import           Network.Google.Resource.Mirror.Timeline.Get
import           Network.Google.Resource.Mirror.Timeline.Insert
import           Network.Google.Resource.Mirror.Timeline.List
import           Network.Google.Resource.Mirror.Timeline.Patch
import           Network.Google.Resource.Mirror.Timeline.Update

{- $resources
TODO
-}

type MirrorAPI =
     Accounts :<|> Settings :<|> Subscriptions :<|>
       Timeline
       :<|> Contacts
       :<|> Locations

mirrorAPI :: Proxy MirrorAPI
mirrorAPI = Proxy
