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
    -- * Resources
      Mirror
    , AccountsAPI
    , AccountsInsert
    , SettingsAPI
    , SettingsGet
    , SubscriptionsAPI
    , SubscriptionsInsert
    , SubscriptionsList
    , SubscriptionsDelete
    , SubscriptionsUpdate
    , TimelineAPI
    , AttachmentsAPI
    , AttachmentsInsert
    , AttachmentsList
    , AttachmentsGet
    , AttachmentsDelete
    , ContactsAPI
    , ContactsInsert
    , ContactsList
    , ContactsPatch
    , ContactsGet
    , ContactsDelete
    , ContactsUpdate
    , LocationsAPI
    , LocationsList
    , LocationsGet

    -- * Types

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

    -- ** Command
    , Command
    , command
    , cType

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

    -- ** ContactsListResponse
    , ContactsListResponse
    , contactsListResponse
    , clrKind
    , clrItems

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

    -- ** LocationsListResponse
    , LocationsListResponse
    , locationsListResponse
    , llrKind
    , llrItems

    -- ** MenuItem
    , MenuItem
    , menuItem
    , miValues
    , miRemoveWhenSelected
    , miAction
    , miPayload
    , miContextualCommand
    , miId

    -- ** MenuValue
    , MenuValue
    , menuValue
    , mvState
    , mvDisplayName
    , mvIconUrl

    -- ** Notification
    , Notification
    , notification
    , nOperation
    , nItemId
    , nCollection
    , nUserActions
    , nVerifyToken
    , nUserToken

    -- ** NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncDeliveryTime
    , ncLevel

    -- ** Setting
    , Setting
    , setting
    , setKind
    , setValue
    , setId

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

    -- ** SubscriptionsListResponse
    , SubscriptionsListResponse
    , subscriptionsListResponse
    , slrKind
    , slrItems

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

    -- ** TimelineListResponse
    , TimelineListResponse
    , timelineListResponse
    , tlrNextPageToken
    , tlrKind
    , tlrItems

    -- ** UserAction
    , UserAction
    , userAction
    , uaPayload
    , uaType

    -- ** UserData
    , UserData
    , userData
    , udValue
    , udKey
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Mirror =
     AccountsAPI :<|> SettingsAPI :<|> SubscriptionsAPI
       :<|> TimelineAPI
       :<|> ContactsAPI
       :<|> LocationsAPI

type AccountsAPI = AccountsInsert

-- | Inserts a new account for a user
type AccountsInsert =
     "mirror" :> "v1" :> "accounts" :>
       Capture "userToken" Text
       :> Capture "accountType" Text
       :> Capture "accountName" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SettingsAPI = SettingsGet

-- | Gets a single setting by ID.
type SettingsGet =
     "mirror" :> "v1" :> "settings" :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type SubscriptionsAPI =
     SubscriptionsInsert :<|> SubscriptionsList :<|>
       SubscriptionsDelete
       :<|> SubscriptionsUpdate

-- | Creates a new subscription.
type SubscriptionsInsert =
     "mirror" :> "v1" :> "subscriptions" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of subscriptions for the authenticated user and
-- service.
type SubscriptionsList =
     "mirror" :> "v1" :> "subscriptions" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a subscription.
type SubscriptionsDelete =
     "mirror" :> "v1" :> "subscriptions" :>
       Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing subscription in place.
type SubscriptionsUpdate =
     "mirror" :> "v1" :> "subscriptions" :>
       Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TimelineAPI = AttachmentsAPI

type AttachmentsAPI =
     AttachmentsInsert :<|> AttachmentsList :<|>
       AttachmentsGet
       :<|> AttachmentsDelete

-- | Adds a new attachment to a timeline item.
type AttachmentsInsert =
     "mirror" :> "v1" :> "timeline" :>
       Capture "itemId" Text
       :> "attachments"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns a list of attachments for a timeline item.
type AttachmentsList =
     "mirror" :> "v1" :> "timeline" :>
       Capture "itemId" Text
       :> "attachments"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves an attachment on a timeline item by item ID and attachment ID.
type AttachmentsGet =
     "mirror" :> "v1" :> "timeline" :>
       Capture "itemId" Text
       :> "attachments"
       :> Capture "attachmentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes an attachment from a timeline item.
type AttachmentsDelete =
     "mirror" :> "v1" :> "timeline" :>
       Capture "itemId" Text
       :> "attachments"
       :> Capture "attachmentId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ContactsAPI =
     ContactsInsert :<|> ContactsList :<|> ContactsPatch
       :<|> ContactsGet
       :<|> ContactsDelete
       :<|> ContactsUpdate

-- | Inserts a new contact.
type ContactsInsert =
     "mirror" :> "v1" :> "contacts" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of contacts for the authenticated user.
type ContactsList =
     "mirror" :> "v1" :> "contacts" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a contact in place. This method supports patch semantics.
type ContactsPatch =
     "mirror" :> "v1" :> "contacts" :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a single contact by ID.
type ContactsGet =
     "mirror" :> "v1" :> "contacts" :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a contact.
type ContactsDelete =
     "mirror" :> "v1" :> "contacts" :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a contact in place.
type ContactsUpdate =
     "mirror" :> "v1" :> "contacts" :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LocationsAPI = LocationsList :<|> LocationsGet

-- | Retrieves a list of locations for the user.
type LocationsList =
     "mirror" :> "v1" :> "locations" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a single location by ID.
type LocationsGet =
     "mirror" :> "v1" :> "locations" :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
