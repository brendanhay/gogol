{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.StreetViewPublish.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.StreetViewPublish.Types
  ( -- * Configuration
    streetViewPublishService,

    -- * OAuth Scopes
    Streetviewpublish'FullControl,

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

import Gogol.Prelude qualified as Core
import Gogol.StreetViewPublish.Internal.Product
import Gogol.StreetViewPublish.Internal.Sum

-- | Default request referring to version @v1@ of the Street View Publish API. This contains the host and root path used as a starting point for constructing service requests.
streetViewPublishService :: Core.ServiceConfig
streetViewPublishService =
  Core.defaultService
    (Core.ServiceId "streetviewpublish:v1")
    "streetviewpublish.googleapis.com"

-- | Publish and manage your 360 photos on Google Street View
type Streetviewpublish'FullControl =
  "https://www.googleapis.com/auth/streetviewpublish"
