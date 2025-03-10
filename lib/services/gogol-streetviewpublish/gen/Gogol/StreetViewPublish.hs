{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.StreetViewPublish
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes 360 photos to Google Maps, along with position, orientation, and connectivity metadata. Apps can offer an interface for positioning, connecting, and uploading user-generated Street View images.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference>
module Gogol.StreetViewPublish
  ( -- * Configuration
    streetViewPublishService,

    -- * OAuth Scopes
    Streetviewpublish'FullControl,

    -- * Resources

    -- ** streetviewpublish.photo.create
    StreetViewPublishPhotoCreateResource,
    StreetViewPublishPhotoCreate (..),
    newStreetViewPublishPhotoCreate,

    -- ** streetviewpublish.photo.delete
    StreetViewPublishPhotoDeleteResource,
    StreetViewPublishPhotoDelete (..),
    newStreetViewPublishPhotoDelete,

    -- ** streetviewpublish.photo.get
    StreetViewPublishPhotoGetResource,
    StreetViewPublishPhotoGet (..),
    newStreetViewPublishPhotoGet,

    -- ** streetviewpublish.photo.startUpload
    StreetViewPublishPhotoStartUploadResource,
    StreetViewPublishPhotoStartUpload (..),
    newStreetViewPublishPhotoStartUpload,

    -- ** streetviewpublish.photo.update
    StreetViewPublishPhotoUpdateResource,
    StreetViewPublishPhotoUpdate (..),
    newStreetViewPublishPhotoUpdate,

    -- ** streetviewpublish.photoSequence.create
    StreetViewPublishPhotoSequenceCreateResource,
    StreetViewPublishPhotoSequenceCreate (..),
    newStreetViewPublishPhotoSequenceCreate,

    -- ** streetviewpublish.photoSequence.delete
    StreetViewPublishPhotoSequenceDeleteResource,
    StreetViewPublishPhotoSequenceDelete (..),
    newStreetViewPublishPhotoSequenceDelete,

    -- ** streetviewpublish.photoSequence.get
    StreetViewPublishPhotoSequenceGetResource,
    StreetViewPublishPhotoSequenceGet (..),
    newStreetViewPublishPhotoSequenceGet,

    -- ** streetviewpublish.photoSequence.startUpload
    StreetViewPublishPhotoSequenceStartUploadResource,
    StreetViewPublishPhotoSequenceStartUpload (..),
    newStreetViewPublishPhotoSequenceStartUpload,

    -- ** streetviewpublish.photoSequences.list
    StreetViewPublishPhotoSequencesListResource,
    StreetViewPublishPhotoSequencesList (..),
    newStreetViewPublishPhotoSequencesList,

    -- ** streetviewpublish.photos.batchDelete
    StreetViewPublishPhotosBatchDeleteResource,
    StreetViewPublishPhotosBatchDelete (..),
    newStreetViewPublishPhotosBatchDelete,

    -- ** streetviewpublish.photos.batchGet
    StreetViewPublishPhotosBatchGetResource,
    StreetViewPublishPhotosBatchGet (..),
    newStreetViewPublishPhotosBatchGet,

    -- ** streetviewpublish.photos.batchUpdate
    StreetViewPublishPhotosBatchUpdateResource,
    StreetViewPublishPhotosBatchUpdate (..),
    newStreetViewPublishPhotosBatchUpdate,

    -- ** streetviewpublish.photos.list
    StreetViewPublishPhotosListResource,
    StreetViewPublishPhotosList (..),
    newStreetViewPublishPhotosList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** BatchDeletePhotosRequest
    BatchDeletePhotosRequest (..),
    newBatchDeletePhotosRequest,

    -- ** BatchDeletePhotosResponse
    BatchDeletePhotosResponse (..),
    newBatchDeletePhotosResponse,

    -- ** BatchGetPhotosResponse
    BatchGetPhotosResponse (..),
    newBatchGetPhotosResponse,

    -- ** BatchUpdatePhotosRequest
    BatchUpdatePhotosRequest (..),
    newBatchUpdatePhotosRequest,

    -- ** BatchUpdatePhotosResponse
    BatchUpdatePhotosResponse (..),
    newBatchUpdatePhotosResponse,

    -- ** Connection
    Connection (..),
    newConnection,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** GpsDataGapFailureDetails
    GpsDataGapFailureDetails (..),
    newGpsDataGapFailureDetails,

    -- ** Imu
    Imu (..),
    newImu,

    -- ** ImuDataGapFailureDetails
    ImuDataGapFailureDetails (..),
    newImuDataGapFailureDetails,

    -- ** InsufficientGpsFailureDetails
    InsufficientGpsFailureDetails (..),
    newInsufficientGpsFailureDetails,

    -- ** LatLng
    LatLng (..),
    newLatLng,

    -- ** LatLngBounds
    LatLngBounds (..),
    newLatLngBounds,

    -- ** Level
    Level (..),
    newLevel,

    -- ** ListPhotoSequencesResponse
    ListPhotoSequencesResponse (..),
    newListPhotoSequencesResponse,

    -- ** ListPhotosResponse
    ListPhotosResponse (..),
    newListPhotosResponse,

    -- ** Measurement3d
    Measurement3d (..),
    newMeasurement3d,

    -- ** NoOverlapGpsFailureDetails
    NoOverlapGpsFailureDetails (..),
    newNoOverlapGpsFailureDetails,

    -- ** NotOutdoorsFailureDetails
    NotOutdoorsFailureDetails (..),
    newNotOutdoorsFailureDetails,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** Photo
    Photo (..),
    newPhoto,

    -- ** Photo_MapsPublishStatus
    Photo_MapsPublishStatus (..),

    -- ** Photo_TransferStatus
    Photo_TransferStatus (..),

    -- ** PhotoId
    PhotoId (..),
    newPhotoId,

    -- ** PhotoResponse
    PhotoResponse (..),
    newPhotoResponse,

    -- ** PhotoSequence
    PhotoSequence (..),
    newPhotoSequence,

    -- ** PhotoSequence_FailureReason
    PhotoSequence_FailureReason (..),

    -- ** PhotoSequence_GpsSource
    PhotoSequence_GpsSource (..),

    -- ** PhotoSequence_ProcessingState
    PhotoSequence_ProcessingState (..),

    -- ** Place
    Place (..),
    newPlace,

    -- ** Pose
    Pose (..),
    newPose,

    -- ** ProcessingFailureDetails
    ProcessingFailureDetails (..),
    newProcessingFailureDetails,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** UpdatePhotoRequest
    UpdatePhotoRequest (..),
    newUpdatePhotoRequest,

    -- ** UploadRef
    UploadRef (..),
    newUploadRef,

    -- ** PhotoGetView
    PhotoGetView (..),

    -- ** PhotoSequenceCreateInputType
    PhotoSequenceCreateInputType (..),

    -- ** PhotoSequenceGetView
    PhotoSequenceGetView (..),

    -- ** PhotosBatchGetView
    PhotosBatchGetView (..),

    -- ** PhotosListView
    PhotosListView (..),
  )
where

import Gogol.StreetViewPublish.Photo.Create
import Gogol.StreetViewPublish.Photo.Delete
import Gogol.StreetViewPublish.Photo.Get
import Gogol.StreetViewPublish.Photo.StartUpload
import Gogol.StreetViewPublish.Photo.Update
import Gogol.StreetViewPublish.PhotoSequence.Create
import Gogol.StreetViewPublish.PhotoSequence.Delete
import Gogol.StreetViewPublish.PhotoSequence.Get
import Gogol.StreetViewPublish.PhotoSequence.StartUpload
import Gogol.StreetViewPublish.PhotoSequences.List
import Gogol.StreetViewPublish.Photos.BatchDelete
import Gogol.StreetViewPublish.Photos.BatchGet
import Gogol.StreetViewPublish.Photos.BatchUpdate
import Gogol.StreetViewPublish.Photos.List
import Gogol.StreetViewPublish.Types
