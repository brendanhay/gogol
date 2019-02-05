{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.StreetViewPublish.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.StreetViewPublish.Types
    (
    -- * Service Configuration
      streetViewPublishService

    -- * OAuth Scopes
    , streetViewPublishScope

    -- * LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- * Photo
    , Photo
    , photo
    , pThumbnailURL
    , pMapsPublishStatus
    , pConnections
    , pShareLink
    , pUploadReference
    , pCaptureTime
    , pPose
    , pDownloadURL
    , pTransferStatus
    , pPlaces
    , pViewCount
    , pPhotoId

    -- * UpdatePhotoRequest
    , UpdatePhotoRequest
    , updatePhotoRequest
    , uprPhoto
    , uprUpdateMask

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * PhotoResponse
    , PhotoResponse
    , photoResponse
    , prPhoto
    , prStatus

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * ListPhotosResponse
    , ListPhotosResponse
    , listPhotosResponse
    , lprNextPageToken
    , lprPhotos

    -- * Connection
    , Connection
    , connection
    , cTarget

    -- * BatchUpdatePhotosResponse
    , BatchUpdatePhotosResponse
    , batchUpdatePhotosResponse
    , buprResults

    -- * BatchDeletePhotosResponse
    , BatchDeletePhotosResponse
    , batchDeletePhotosResponse
    , bdprStatus

    -- * Pose
    , Pose
    , pose
    , pRoll
    , pHeading
    , pLatLngPair
    , pAccuracyMeters
    , pAltitude
    , pLevel
    , pPitch

    -- * UploadRef
    , UploadRef
    , uploadRef
    , urUploadURL

    -- * Xgafv
    , Xgafv (..)

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * PhotoTransferStatus
    , PhotoTransferStatus (..)

    -- * BatchUpdatePhotosRequest
    , BatchUpdatePhotosRequest
    , batchUpdatePhotosRequest
    , buprUpdatePhotoRequests

    -- * BatchDeletePhotosRequest
    , BatchDeletePhotosRequest
    , batchDeletePhotosRequest
    , bdprPhotoIds

    -- * Place
    , Place
    , place
    , pLanguageCode
    , pName
    , pPlaceId

    -- * PhotoMapsPublishStatus
    , PhotoMapsPublishStatus (..)

    -- * Level
    , Level
    , level
    , lName
    , lNumber

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * BatchGetPhotosResponse
    , BatchGetPhotosResponse
    , batchGetPhotosResponse
    , bgprResults

    -- * PhotoId
    , PhotoId
    , photoId
    , piId
    ) where

import           Network.Google.Prelude
import           Network.Google.StreetViewPublish.Types.Product
import           Network.Google.StreetViewPublish.Types.Sum

-- | Default request referring to version 'v1' of the Street View Publish API. This contains the host and root path used as a starting point for constructing service requests.
streetViewPublishService :: ServiceConfig
streetViewPublishService
  = defaultService (ServiceId "streetviewpublish:v1")
      "streetviewpublish.googleapis.com"

-- | Publish and manage your 360 photos on Google Street View
streetViewPublishScope :: Proxy '["https://www.googleapis.com/auth/streetviewpublish"]
streetViewPublishScope = Proxy;
