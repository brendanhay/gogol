{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Mirror.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Mirror.Types
    (
    -- * Service URL
      mirrorURL

    -- * Command
    , Command
    , command
    , cType

    -- * LocationsListResponse
    , LocationsListResponse
    , locationsListResponse
    , llrKind
    , llrItems

    -- * NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncDeliveryTime
    , ncLevel

    -- * Location
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

    -- * OrderBy
    , OrderBy (..)

    -- * Notification
    , Notification
    , notification
    , nOperation
    , nItemId
    , nCollection
    , nUserActions
    , nVerifyToken
    , nUserToken

    -- * Contact
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

    -- * AuthToken
    , AuthToken
    , authToken
    , atAuthToken
    , atType

    -- * AttachmentsListResponse
    , AttachmentsListResponse
    , attachmentsListResponse
    , alrKind
    , alrItems

    -- * MenuItem
    , MenuItem
    , menuItem
    , miValues
    , miRemoveWhenSelected
    , miAction
    , miPayload
    , miContextualCommand
    , miId

    -- * Setting
    , Setting
    , setting
    , sKind
    , sValue
    , sId

    -- * Account
    , Account
    , account
    , aAuthTokens
    , aUserData
    , aPassword
    , aFeatures

    -- * Attachment
    , Attachment
    , attachment
    , aContentURL
    , aId
    , aIsProcessingContent
    , aContentType

    -- * UserData
    , UserData
    , userData
    , udValue
    , udKey

    -- * UserAction
    , UserAction
    , userAction
    , uaPayload
    , uaType

    -- * ContactsListResponse
    , ContactsListResponse
    , contactsListResponse
    , clrKind
    , clrItems

    -- * TimelineListResponse
    , TimelineListResponse
    , timelineListResponse
    , tlrNextPageToken
    , tlrKind
    , tlrItems

    -- * MenuValue
    , MenuValue
    , menuValue
    , mvState
    , mvDisplayName
    , mvIconURL

    -- * Subscription
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

    -- * TimelineItem
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

    -- * SubscriptionsListResponse
    , SubscriptionsListResponse
    , subscriptionsListResponse
    , slrKind
    , slrItems
    ) where

import           Network.Google.Mirror.Types.Product
import           Network.Google.Mirror.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Google Mirror API.
mirrorURL :: BaseUrl
mirrorURL
  = BaseUrl Https
      "https://www.googleapis.com/mirror/v1/"
      443
