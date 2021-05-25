{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.StreetViewPublish
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes 360 photos to Google Maps, along with position, orientation,
-- and connectivity metadata. Apps can offer an interface for positioning,
-- connecting, and uploading user-generated Street View images.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference>
module Network.Google.StreetViewPublish
    (
    -- * Service Configuration
      streetViewPublishService

    -- * OAuth Scopes
    , streetViewPublishScope

    -- * API Declaration
    , StreetViewPublishAPI

    -- * Resources

    -- ** streetviewpublish.photo.create
    , module Network.Google.Resource.StreetViewPublish.Photo.Create

    -- ** streetviewpublish.photo.delete
    , module Network.Google.Resource.StreetViewPublish.Photo.Delete

    -- ** streetviewpublish.photo.get
    , module Network.Google.Resource.StreetViewPublish.Photo.Get

    -- ** streetviewpublish.photo.startUpload
    , module Network.Google.Resource.StreetViewPublish.Photo.StartUpload

    -- ** streetviewpublish.photo.update
    , module Network.Google.Resource.StreetViewPublish.Photo.Update

    -- ** streetviewpublish.photos.batchDelete
    , module Network.Google.Resource.StreetViewPublish.Photos.BatchDelete

    -- ** streetviewpublish.photos.batchGet
    , module Network.Google.Resource.StreetViewPublish.Photos.BatchGet

    -- ** streetviewpublish.photos.batchUpdate
    , module Network.Google.Resource.StreetViewPublish.Photos.BatchUpdate

    -- ** streetviewpublish.photos.list
    , module Network.Google.Resource.StreetViewPublish.Photos.List

    -- * Types

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** Photo
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

    -- ** UpdatePhotoRequest
    , UpdatePhotoRequest
    , updatePhotoRequest
    , uprPhoto
    , uprUpdateMask

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** PhotoGetView
    , PhotoGetView (..)

    -- ** PhotoResponse
    , PhotoResponse
    , photoResponse
    , prPhoto
    , prStatus

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** PhotosListView
    , PhotosListView (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ListPhotosResponse
    , ListPhotosResponse
    , listPhotosResponse
    , lprNextPageToken
    , lprPhotos

    -- ** Connection
    , Connection
    , connection
    , cTarget

    -- ** BatchUpdatePhotosResponse
    , BatchUpdatePhotosResponse
    , batchUpdatePhotosResponse
    , buprResults

    -- ** BatchDeletePhotosResponse
    , BatchDeletePhotosResponse
    , batchDeletePhotosResponse
    , bdprStatus

    -- ** Pose
    , Pose
    , pose
    , pRoll
    , pHeading
    , pLatLngPair
    , pAccuracyMeters
    , pAltitude
    , pLevel
    , pPitch

    -- ** UploadRef
    , UploadRef
    , uploadRef
    , urUploadURL

    -- ** Xgafv
    , Xgafv (..)

    -- ** PhotosBatchGetView
    , PhotosBatchGetView (..)

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** PhotoTransferStatus
    , PhotoTransferStatus (..)

    -- ** BatchUpdatePhotosRequest
    , BatchUpdatePhotosRequest
    , batchUpdatePhotosRequest
    , buprUpdatePhotoRequests

    -- ** BatchDeletePhotosRequest
    , BatchDeletePhotosRequest
    , batchDeletePhotosRequest
    , bdprPhotoIds

    -- ** Place
    , Place
    , place
    , pLanguageCode
    , pName
    , pPlaceId

    -- ** PhotoMapsPublishStatus
    , PhotoMapsPublishStatus (..)

    -- ** Level
    , Level
    , level
    , lName
    , lNumber

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** BatchGetPhotosResponse
    , BatchGetPhotosResponse
    , batchGetPhotosResponse
    , bgprResults

    -- ** PhotoId
    , PhotoId
    , photoId
    , piId
    ) where

import Network.Google.Prelude
import Network.Google.Resource.StreetViewPublish.Photo.Create
import Network.Google.Resource.StreetViewPublish.Photo.Delete
import Network.Google.Resource.StreetViewPublish.Photo.Get
import Network.Google.Resource.StreetViewPublish.Photo.StartUpload
import Network.Google.Resource.StreetViewPublish.Photo.Update
import Network.Google.Resource.StreetViewPublish.Photos.BatchDelete
import Network.Google.Resource.StreetViewPublish.Photos.BatchGet
import Network.Google.Resource.StreetViewPublish.Photos.BatchUpdate
import Network.Google.Resource.StreetViewPublish.Photos.List
import Network.Google.StreetViewPublish.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Street View Publish API service.
type StreetViewPublishAPI =
     PhotoGetResource :<|> PhotoCreateResource :<|>
       PhotoStartUploadResource
       :<|> PhotoDeleteResource
       :<|> PhotoUpdateResource
       :<|> PhotosListResource
       :<|> PhotosBatchGetResource
       :<|> PhotosBatchUpdateResource
       :<|> PhotosBatchDeleteResource
