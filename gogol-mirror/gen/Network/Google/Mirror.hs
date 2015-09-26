-- |
-- Module      : Network.Google.Mirror
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for interacting with Glass users via the timeline.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference>
module Network.Google.Mirror
    (
    -- * API Definition
      Mirror



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

{- $resources
TODO
-}

type Mirror = ()

mirror :: Proxy Mirror
mirror = Proxy




