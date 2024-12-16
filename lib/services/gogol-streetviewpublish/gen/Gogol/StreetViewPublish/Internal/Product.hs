{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.StreetViewPublish.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.StreetViewPublish.Internal.Product
  (

    -- * BatchDeletePhotosRequest
    BatchDeletePhotosRequest (..),
    newBatchDeletePhotosRequest,

    -- * BatchDeletePhotosResponse
    BatchDeletePhotosResponse (..),
    newBatchDeletePhotosResponse,

    -- * BatchGetPhotosResponse
    BatchGetPhotosResponse (..),
    newBatchGetPhotosResponse,

    -- * BatchUpdatePhotosRequest
    BatchUpdatePhotosRequest (..),
    newBatchUpdatePhotosRequest,

    -- * BatchUpdatePhotosResponse
    BatchUpdatePhotosResponse (..),
    newBatchUpdatePhotosResponse,

    -- * Connection
    Connection (..),
    newConnection,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * GpsDataGapFailureDetails
    GpsDataGapFailureDetails (..),
    newGpsDataGapFailureDetails,

    -- * Imu
    Imu (..),
    newImu,

    -- * ImuDataGapFailureDetails
    ImuDataGapFailureDetails (..),
    newImuDataGapFailureDetails,

    -- * InsufficientGpsFailureDetails
    InsufficientGpsFailureDetails (..),
    newInsufficientGpsFailureDetails,

    -- * LatLng
    LatLng (..),
    newLatLng,

    -- * LatLngBounds
    LatLngBounds (..),
    newLatLngBounds,

    -- * Level
    Level (..),
    newLevel,

    -- * ListPhotoSequencesResponse
    ListPhotoSequencesResponse (..),
    newListPhotoSequencesResponse,

    -- * ListPhotosResponse
    ListPhotosResponse (..),
    newListPhotosResponse,

    -- * Measurement3d
    Measurement3d (..),
    newMeasurement3d,

    -- * NoOverlapGpsFailureDetails
    NoOverlapGpsFailureDetails (..),
    newNoOverlapGpsFailureDetails,

    -- * NotOutdoorsFailureDetails
    NotOutdoorsFailureDetails (..),
    newNotOutdoorsFailureDetails,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * Photo
    Photo (..),
    newPhoto,

    -- * PhotoId
    PhotoId (..),
    newPhotoId,

    -- * PhotoResponse
    PhotoResponse (..),
    newPhotoResponse,

    -- * PhotoSequence
    PhotoSequence (..),
    newPhotoSequence,

    -- * Place
    Place (..),
    newPlace,

    -- * Pose
    Pose (..),
    newPose,

    -- * ProcessingFailureDetails
    ProcessingFailureDetails (..),
    newProcessingFailureDetails,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * UpdatePhotoRequest
    UpdatePhotoRequest (..),
    newUpdatePhotoRequest,

    -- * UploadRef
    UploadRef (..),
    newUploadRef,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.StreetViewPublish.Internal.Sum

-- | Request to delete multiple Photos.
--
-- /See:/ 'newBatchDeletePhotosRequest' smart constructor.
newtype BatchDeletePhotosRequest = BatchDeletePhotosRequest
    {
      -- | Required. IDs of the Photos. HTTP GET requests require the following syntax for the URL query parameter: @photoIds=&photoIds=&...@.
      photoIds :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeletePhotosRequest' with the minimum fields required to make a request.
newBatchDeletePhotosRequest 
    ::  BatchDeletePhotosRequest
newBatchDeletePhotosRequest = BatchDeletePhotosRequest {photoIds = Core.Nothing}

instance Core.FromJSON BatchDeletePhotosRequest where
        parseJSON
          = Core.withObject "BatchDeletePhotosRequest"
              (\ o ->
                 BatchDeletePhotosRequest Core.<$>
                   (o Core..:? "photoIds"))

instance Core.ToJSON BatchDeletePhotosRequest where
        toJSON BatchDeletePhotosRequest{..}
          = Core.object
              (Core.catMaybes
                 [("photoIds" Core..=) Core.<$> photoIds])


-- | Response to batch delete of one or more Photos.
--
-- /See:/ 'newBatchDeletePhotosResponse' smart constructor.
newtype BatchDeletePhotosResponse = BatchDeletePhotosResponse
    {
      -- | The status for the operation to delete a single Photo in the batch request.
      status :: (Core.Maybe [Status])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeletePhotosResponse' with the minimum fields required to make a request.
newBatchDeletePhotosResponse 
    ::  BatchDeletePhotosResponse
newBatchDeletePhotosResponse = BatchDeletePhotosResponse {status = Core.Nothing}

instance Core.FromJSON BatchDeletePhotosResponse
         where
        parseJSON
          = Core.withObject "BatchDeletePhotosResponse"
              (\ o ->
                 BatchDeletePhotosResponse Core.<$>
                   (o Core..:? "status"))

instance Core.ToJSON BatchDeletePhotosResponse where
        toJSON BatchDeletePhotosResponse{..}
          = Core.object
              (Core.catMaybes [("status" Core..=) Core.<$> status])


-- | Response to batch get of Photos.
--
-- /See:/ 'newBatchGetPhotosResponse' smart constructor.
newtype BatchGetPhotosResponse = BatchGetPhotosResponse
    {
      -- | List of results for each individual Photo requested, in the same order as the requests in BatchGetPhotos.
      results :: (Core.Maybe [PhotoResponse])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchGetPhotosResponse' with the minimum fields required to make a request.
newBatchGetPhotosResponse 
    ::  BatchGetPhotosResponse
newBatchGetPhotosResponse = BatchGetPhotosResponse {results = Core.Nothing}

instance Core.FromJSON BatchGetPhotosResponse where
        parseJSON
          = Core.withObject "BatchGetPhotosResponse"
              (\ o ->
                 BatchGetPhotosResponse Core.<$>
                   (o Core..:? "results"))

instance Core.ToJSON BatchGetPhotosResponse where
        toJSON BatchGetPhotosResponse{..}
          = Core.object
              (Core.catMaybes
                 [("results" Core..=) Core.<$> results])


-- | Request to update the metadata of photos. Updating the pixels of photos is not supported.
--
-- /See:/ 'newBatchUpdatePhotosRequest' smart constructor.
newtype BatchUpdatePhotosRequest = BatchUpdatePhotosRequest
    {
      -- | Required. List of UpdatePhotoRequests.
      updatePhotoRequests :: (Core.Maybe [UpdatePhotoRequest])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdatePhotosRequest' with the minimum fields required to make a request.
newBatchUpdatePhotosRequest 
    ::  BatchUpdatePhotosRequest
newBatchUpdatePhotosRequest =
  BatchUpdatePhotosRequest {updatePhotoRequests = Core.Nothing}

instance Core.FromJSON BatchUpdatePhotosRequest where
        parseJSON
          = Core.withObject "BatchUpdatePhotosRequest"
              (\ o ->
                 BatchUpdatePhotosRequest Core.<$>
                   (o Core..:? "updatePhotoRequests"))

instance Core.ToJSON BatchUpdatePhotosRequest where
        toJSON BatchUpdatePhotosRequest{..}
          = Core.object
              (Core.catMaybes
                 [("updatePhotoRequests" Core..=) Core.<$>
                    updatePhotoRequests])


-- | Response to batch update of metadata of one or more Photos.
--
-- /See:/ 'newBatchUpdatePhotosResponse' smart constructor.
newtype BatchUpdatePhotosResponse = BatchUpdatePhotosResponse
    {
      -- | List of results for each individual Photo updated, in the same order as the request.
      results :: (Core.Maybe [PhotoResponse])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdatePhotosResponse' with the minimum fields required to make a request.
newBatchUpdatePhotosResponse 
    ::  BatchUpdatePhotosResponse
newBatchUpdatePhotosResponse =
  BatchUpdatePhotosResponse {results = Core.Nothing}

instance Core.FromJSON BatchUpdatePhotosResponse
         where
        parseJSON
          = Core.withObject "BatchUpdatePhotosResponse"
              (\ o ->
                 BatchUpdatePhotosResponse Core.<$>
                   (o Core..:? "results"))

instance Core.ToJSON BatchUpdatePhotosResponse where
        toJSON BatchUpdatePhotosResponse{..}
          = Core.object
              (Core.catMaybes
                 [("results" Core..=) Core.<$> results])


-- | A connection is the link from a source photo to a destination photo.
--
-- /See:/ 'newConnection' smart constructor.
newtype Connection = Connection
    {
      -- | Required. The destination of the connection from the containing photo to another photo.
      target :: (Core.Maybe PhotoId)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Connection' with the minimum fields required to make a request.
newConnection 
    ::  Connection
newConnection = Connection {target = Core.Nothing}

instance Core.FromJSON Connection where
        parseJSON
          = Core.withObject "Connection"
              (\ o -> Connection Core.<$> (o Core..:? "target"))

instance Core.ToJSON Connection where
        toJSON Connection{..}
          = Core.object
              (Core.catMaybes [("target" Core..=) Core.<$> target])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | Details related to ProcessingFailureReason#GPS/DATA/GAP. If there are multiple GPS data gaps, only the one with the largest duration is reported here.
--
-- /See:/ 'newGpsDataGapFailureDetails' smart constructor.
data GpsDataGapFailureDetails = GpsDataGapFailureDetails
    {
      -- | The duration of the gap in GPS data that was found.
      gapDuration :: (Core.Maybe Core.Duration)
      -- | Relative time (from the start of the video stream) when the gap started.
    , gapStartTime :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GpsDataGapFailureDetails' with the minimum fields required to make a request.
newGpsDataGapFailureDetails 
    ::  GpsDataGapFailureDetails
newGpsDataGapFailureDetails =
  GpsDataGapFailureDetails
    {gapDuration = Core.Nothing, gapStartTime = Core.Nothing}

instance Core.FromJSON GpsDataGapFailureDetails where
        parseJSON
          = Core.withObject "GpsDataGapFailureDetails"
              (\ o ->
                 GpsDataGapFailureDetails Core.<$>
                   (o Core..:? "gapDuration") Core.<*>
                     (o Core..:? "gapStartTime"))

instance Core.ToJSON GpsDataGapFailureDetails where
        toJSON GpsDataGapFailureDetails{..}
          = Core.object
              (Core.catMaybes
                 [("gapDuration" Core..=) Core.<$> gapDuration,
                  ("gapStartTime" Core..=) Core.<$> gapStartTime])


-- | IMU data from the device sensors.
--
-- /See:/ 'newImu' smart constructor.
data Imu = Imu
    {
      -- | The accelerometer measurements in meters\/sec^2 with increasing timestamps from devices.
      accelMpsps :: (Core.Maybe [Measurement3d])
      -- | The gyroscope measurements in radians\/sec with increasing timestamps from devices.
    , gyroRps :: (Core.Maybe [Measurement3d])
      -- | The magnetometer measurements of the magnetic field in microtesla (uT) with increasing timestamps from devices.
    , magUt :: (Core.Maybe [Measurement3d])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Imu' with the minimum fields required to make a request.
newImu 
    ::  Imu
newImu =
  Imu {accelMpsps = Core.Nothing, gyroRps = Core.Nothing, magUt = Core.Nothing}

instance Core.FromJSON Imu where
        parseJSON
          = Core.withObject "Imu"
              (\ o ->
                 Imu Core.<$>
                   (o Core..:? "accelMpsps") Core.<*>
                     (o Core..:? "gyroRps")
                     Core.<*> (o Core..:? "magUt"))

instance Core.ToJSON Imu where
        toJSON Imu{..}
          = Core.object
              (Core.catMaybes
                 [("accelMpsps" Core..=) Core.<$> accelMpsps,
                  ("gyroRps" Core..=) Core.<$> gyroRps,
                  ("magUt" Core..=) Core.<$> magUt])


-- | Details related to ProcessingFailureReason#IMU/DATA/GAP. If there are multiple IMU data gaps, only the one with the largest duration is reported here.
--
-- /See:/ 'newImuDataGapFailureDetails' smart constructor.
data ImuDataGapFailureDetails = ImuDataGapFailureDetails
    {
      -- | The duration of the gap in IMU data that was found.
      gapDuration :: (Core.Maybe Core.Duration)
      -- | Relative time (from the start of the video stream) when the gap started.
    , gapStartTime :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImuDataGapFailureDetails' with the minimum fields required to make a request.
newImuDataGapFailureDetails 
    ::  ImuDataGapFailureDetails
newImuDataGapFailureDetails =
  ImuDataGapFailureDetails
    {gapDuration = Core.Nothing, gapStartTime = Core.Nothing}

instance Core.FromJSON ImuDataGapFailureDetails where
        parseJSON
          = Core.withObject "ImuDataGapFailureDetails"
              (\ o ->
                 ImuDataGapFailureDetails Core.<$>
                   (o Core..:? "gapDuration") Core.<*>
                     (o Core..:? "gapStartTime"))

instance Core.ToJSON ImuDataGapFailureDetails where
        toJSON ImuDataGapFailureDetails{..}
          = Core.object
              (Core.catMaybes
                 [("gapDuration" Core..=) Core.<$> gapDuration,
                  ("gapStartTime" Core..=) Core.<$> gapStartTime])


-- | Details related to ProcessingFailureReason#INSUFFICIENT_GPS.
--
-- /See:/ 'newInsufficientGpsFailureDetails' smart constructor.
newtype InsufficientGpsFailureDetails = InsufficientGpsFailureDetails
    {
      -- | The number of GPS points that were found in the video.
      gpsPointsFound :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsufficientGpsFailureDetails' with the minimum fields required to make a request.
newInsufficientGpsFailureDetails 
    ::  InsufficientGpsFailureDetails
newInsufficientGpsFailureDetails =
  InsufficientGpsFailureDetails {gpsPointsFound = Core.Nothing}

instance Core.FromJSON InsufficientGpsFailureDetails
         where
        parseJSON
          = Core.withObject "InsufficientGpsFailureDetails"
              (\ o ->
                 InsufficientGpsFailureDetails Core.<$>
                   (o Core..:? "gpsPointsFound"))

instance Core.ToJSON InsufficientGpsFailureDetails
         where
        toJSON InsufficientGpsFailureDetails{..}
          = Core.object
              (Core.catMaybes
                 [("gpsPointsFound" Core..=) Core.<$> gpsPointsFound])


-- | An object that represents a latitude\/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.
--
-- /See:/ 'newLatLng' smart constructor.
data LatLng = LatLng
    {
      -- | The latitude in degrees. It must be in the range [-90.0, +90.0].
      latitude :: (Core.Maybe Core.Double)
      -- | The longitude in degrees. It must be in the range [-180.0, +180.0].
    , longitude :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
newLatLng 
    ::  LatLng
newLatLng = LatLng {latitude = Core.Nothing, longitude = Core.Nothing}

instance Core.FromJSON LatLng where
        parseJSON
          = Core.withObject "LatLng"
              (\ o ->
                 LatLng Core.<$>
                   (o Core..:? "latitude") Core.<*>
                     (o Core..:? "longitude"))

instance Core.ToJSON LatLng where
        toJSON LatLng{..}
          = Core.object
              (Core.catMaybes
                 [("latitude" Core..=) Core.<$> latitude,
                  ("longitude" Core..=) Core.<$> longitude])


-- | A rectangle in geographical coordinates.
--
-- /See:/ 'newLatLngBounds' smart constructor.
data LatLngBounds = LatLngBounds
    {
      -- | The northeast corner of these bounds.
      northeast :: (Core.Maybe LatLng)
      -- | The southwest corner of these bounds.
    , southwest :: (Core.Maybe LatLng)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LatLngBounds' with the minimum fields required to make a request.
newLatLngBounds 
    ::  LatLngBounds
newLatLngBounds =
  LatLngBounds {northeast = Core.Nothing, southwest = Core.Nothing}

instance Core.FromJSON LatLngBounds where
        parseJSON
          = Core.withObject "LatLngBounds"
              (\ o ->
                 LatLngBounds Core.<$>
                   (o Core..:? "northeast") Core.<*>
                     (o Core..:? "southwest"))

instance Core.ToJSON LatLngBounds where
        toJSON LatLngBounds{..}
          = Core.object
              (Core.catMaybes
                 [("northeast" Core..=) Core.<$> northeast,
                  ("southwest" Core..=) Core.<$> southwest])


-- | Level information containing level number and its corresponding name.
--
-- /See:/ 'newLevel' smart constructor.
data Level = Level
    {
      -- | Required. A name assigned to this Level, restricted to 3 characters. Consider how the elevator buttons would be labeled for this level if there was an elevator.
      name :: (Core.Maybe Core.Text)
      -- | Optional. Floor number, used for ordering. 0 indicates the ground level, 1 indicates the first level above ground level, -1 indicates the first level under ground level. Non-integer values are OK.
    , number :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Level' with the minimum fields required to make a request.
newLevel 
    ::  Level
newLevel = Level {name = Core.Nothing, number = Core.Nothing}

instance Core.FromJSON Level where
        parseJSON
          = Core.withObject "Level"
              (\ o ->
                 Level Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "number"))

instance Core.ToJSON Level where
        toJSON Level{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("number" Core..=) Core.<$> number])


-- | Response to list all photo sequences that belong to a user.
--
-- /See:/ 'newListPhotoSequencesResponse' smart constructor.
data ListPhotoSequencesResponse = ListPhotoSequencesResponse
    {
      -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | List of photo sequences via Operation interface. The maximum number of items returned is based on the pageSize field in the request. Each item in the list can have three possible states, * @Operation.done@ = false, if the processing of PhotoSequence is not finished yet. * @Operation.done@ = true and @Operation.error@ is populated, if there was an error in processing. * @Operation.done@ = true and @Operation.response@ contains a PhotoSequence message, In each sequence, only Id is populated.
    , photoSequences :: (Core.Maybe [Operation])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPhotoSequencesResponse' with the minimum fields required to make a request.
newListPhotoSequencesResponse 
    ::  ListPhotoSequencesResponse
newListPhotoSequencesResponse =
  ListPhotoSequencesResponse
    {nextPageToken = Core.Nothing, photoSequences = Core.Nothing}

instance Core.FromJSON ListPhotoSequencesResponse
         where
        parseJSON
          = Core.withObject "ListPhotoSequencesResponse"
              (\ o ->
                 ListPhotoSequencesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "photoSequences"))

instance Core.ToJSON ListPhotoSequencesResponse where
        toJSON ListPhotoSequencesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("photoSequences" Core..=) Core.<$> photoSequences])


-- | Response to list all photos that belong to a user.
--
-- /See:/ 'newListPhotosResponse' smart constructor.
data ListPhotosResponse = ListPhotosResponse
    {
      -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | List of photos. The pageSize field in the request determines the number of items returned.
    , photos :: (Core.Maybe [Photo])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPhotosResponse' with the minimum fields required to make a request.
newListPhotosResponse 
    ::  ListPhotosResponse
newListPhotosResponse =
  ListPhotosResponse {nextPageToken = Core.Nothing, photos = Core.Nothing}

instance Core.FromJSON ListPhotosResponse where
        parseJSON
          = Core.withObject "ListPhotosResponse"
              (\ o ->
                 ListPhotosResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "photos"))

instance Core.ToJSON ListPhotosResponse where
        toJSON ListPhotosResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("photos" Core..=) Core.<$> photos])


-- | A Generic 3d measurement sample.
--
-- /See:/ 'newMeasurement3d' smart constructor.
data Measurement3d = Measurement3d
    {
      -- | The timestamp of the IMU measurement.
      captureTime :: (Core.Maybe Core.DateTime)
      -- | The sensor measurement in the x axis.
    , x :: (Core.Maybe Core.Double)
      -- | The sensor measurement in the y axis.
    , y :: (Core.Maybe Core.Double)
      -- | The sensor measurement in the z axis.
    , z :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Measurement3d' with the minimum fields required to make a request.
newMeasurement3d 
    ::  Measurement3d
newMeasurement3d =
  Measurement3d
    { captureTime = Core.Nothing
    , x = Core.Nothing
    , y = Core.Nothing
    , z = Core.Nothing
    }

instance Core.FromJSON Measurement3d where
        parseJSON
          = Core.withObject "Measurement3d"
              (\ o ->
                 Measurement3d Core.<$>
                   (o Core..:? "captureTime") Core.<*> (o Core..:? "x")
                     Core.<*> (o Core..:? "y")
                     Core.<*> (o Core..:? "z"))

instance Core.ToJSON Measurement3d where
        toJSON Measurement3d{..}
          = Core.object
              (Core.catMaybes
                 [("captureTime" Core..=) Core.<$> captureTime,
                  ("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y,
                  ("z" Core..=) Core.<$> z])


-- | Details related to PhotoSequenceProcessingFailureReason#NO/OVERLAP/GPS.
--
-- /See:/ 'newNoOverlapGpsFailureDetails' smart constructor.
data NoOverlapGpsFailureDetails = NoOverlapGpsFailureDetails
    {
      -- | Time of last recorded GPS point.
      gpsEndTime :: (Core.Maybe Core.DateTime)
      -- | Time of first recorded GPS point.
    , gpsStartTime :: (Core.Maybe Core.DateTime)
      -- | End time of video.
    , videoEndTime :: (Core.Maybe Core.DateTime)
      -- | Start time of video.
    , videoStartTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NoOverlapGpsFailureDetails' with the minimum fields required to make a request.
newNoOverlapGpsFailureDetails 
    ::  NoOverlapGpsFailureDetails
newNoOverlapGpsFailureDetails =
  NoOverlapGpsFailureDetails
    { gpsEndTime = Core.Nothing
    , gpsStartTime = Core.Nothing
    , videoEndTime = Core.Nothing
    , videoStartTime = Core.Nothing
    }

instance Core.FromJSON NoOverlapGpsFailureDetails
         where
        parseJSON
          = Core.withObject "NoOverlapGpsFailureDetails"
              (\ o ->
                 NoOverlapGpsFailureDetails Core.<$>
                   (o Core..:? "gpsEndTime") Core.<*>
                     (o Core..:? "gpsStartTime")
                     Core.<*> (o Core..:? "videoEndTime")
                     Core.<*> (o Core..:? "videoStartTime"))

instance Core.ToJSON NoOverlapGpsFailureDetails where
        toJSON NoOverlapGpsFailureDetails{..}
          = Core.object
              (Core.catMaybes
                 [("gpsEndTime" Core..=) Core.<$> gpsEndTime,
                  ("gpsStartTime" Core..=) Core.<$> gpsStartTime,
                  ("videoEndTime" Core..=) Core.<$> videoEndTime,
                  ("videoStartTime" Core..=) Core.<$> videoStartTime])


-- | Details related to ProcessingFailureReason#NOT_OUTDOORS. If there are multiple indoor frames found, the first frame is recorded here.
--
-- /See:/ 'newNotOutdoorsFailureDetails' smart constructor.
newtype NotOutdoorsFailureDetails = NotOutdoorsFailureDetails
    {
      -- | Relative time (from the start of the video stream) when an indoor frame was found.
      startTime :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotOutdoorsFailureDetails' with the minimum fields required to make a request.
newNotOutdoorsFailureDetails 
    ::  NotOutdoorsFailureDetails
newNotOutdoorsFailureDetails =
  NotOutdoorsFailureDetails {startTime = Core.Nothing}

instance Core.FromJSON NotOutdoorsFailureDetails
         where
        parseJSON
          = Core.withObject "NotOutdoorsFailureDetails"
              (\ o ->
                 NotOutdoorsFailureDetails Core.<$>
                   (o Core..:? "startTime"))

instance Core.ToJSON NotOutdoorsFailureDetails where
        toJSON NotOutdoorsFailureDetails{..}
          = Core.object
              (Core.catMaybes
                 [("startTime" Core..=) Core.<$> startTime])


-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
    {
      -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
      done :: (Core.Maybe Core.Bool)
      -- | The error result of the operation in case of failure or cancellation.
    , error :: (Core.Maybe Status)
      -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    , metadata :: (Core.Maybe Operation_Metadata)
      -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    , response :: (Core.Maybe Operation_Response)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation 
    ::  Operation
newOperation =
  Operation
    { done = Core.Nothing
    , error = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    , response = Core.Nothing
    }

instance Core.FromJSON Operation where
        parseJSON
          = Core.withObject "Operation"
              (\ o ->
                 Operation Core.<$>
                   (o Core..:? "done") Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "response"))

instance Core.ToJSON Operation where
        toJSON Operation{..}
          = Core.object
              (Core.catMaybes
                 [("done" Core..=) Core.<$> done,
                  ("error" Core..=) Core.<$> error,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name,
                  ("response" Core..=) Core.<$> response])


-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
        parseJSON
          = Core.withObject "Operation_Metadata"
              (\ o ->
                 Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
        toJSON Operation_Metadata{..}
          = Core.toJSON additional


-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
        parseJSON
          = Core.withObject "Operation_Response"
              (\ o ->
                 Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
        toJSON Operation_Response{..}
          = Core.toJSON additional


-- | Photo is used to store 360 photos along with photo metadata.
--
-- /See:/ 'newPhoto' smart constructor.
data Photo = Photo
    {
      -- | Optional. Absolute time when the photo was captured. When the photo has no exif timestamp, this is used to set a timestamp in the photo metadata.
      captureTime :: (Core.Maybe Core.DateTime)
      -- | Optional. Connections to other photos. A connection represents the link from this photo to another photo.
    , connections :: (Core.Maybe [Connection])
      -- | Output only. The download URL for the photo bytes. This field is set only when GetPhotoRequest.view is set to PhotoView.INCLUDE/DOWNLOAD/URL.
    , downloadUrl :: (Core.Maybe Core.Text)
      -- | Output only. Status in Google Maps, whether this photo was published or rejected.
    , mapsPublishStatus :: (Core.Maybe Photo_MapsPublishStatus)
      -- | Required. Output only. Required when updating a photo. Output only when creating a photo. Identifier for the photo, which is unique among all photos in Google.
    , photoId :: (Core.Maybe PhotoId)
      -- | Optional. Places where this photo belongs.
    , places :: (Core.Maybe [Place])
      -- | Optional. Pose of the photo.
    , pose :: (Core.Maybe Pose)
      -- | Output only. The share link for the photo.
    , shareLink :: (Core.Maybe Core.Text)
      -- | Output only. The thumbnail URL for showing a preview of the given photo.
    , thumbnailUrl :: (Core.Maybe Core.Text)
      -- | Output only. Status of rights transfer on this photo.
    , transferStatus :: (Core.Maybe Photo_TransferStatus)
      -- | Input only. Required when creating a photo. Input only. The resource URL where the photo bytes are uploaded to.
    , uploadReference :: (Core.Maybe UploadRef)
      -- | Output only. Time when the image was uploaded.
    , uploadTime :: (Core.Maybe Core.DateTime)
      -- | Output only. View count of the photo.
    , viewCount :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Photo' with the minimum fields required to make a request.
newPhoto 
    ::  Photo
newPhoto =
  Photo
    { captureTime = Core.Nothing
    , connections = Core.Nothing
    , downloadUrl = Core.Nothing
    , mapsPublishStatus = Core.Nothing
    , photoId = Core.Nothing
    , places = Core.Nothing
    , pose = Core.Nothing
    , shareLink = Core.Nothing
    , thumbnailUrl = Core.Nothing
    , transferStatus = Core.Nothing
    , uploadReference = Core.Nothing
    , uploadTime = Core.Nothing
    , viewCount = Core.Nothing
    }

instance Core.FromJSON Photo where
        parseJSON
          = Core.withObject "Photo"
              (\ o ->
                 Photo Core.<$>
                   (o Core..:? "captureTime") Core.<*>
                     (o Core..:? "connections")
                     Core.<*> (o Core..:? "downloadUrl")
                     Core.<*> (o Core..:? "mapsPublishStatus")
                     Core.<*> (o Core..:? "photoId")
                     Core.<*> (o Core..:? "places")
                     Core.<*> (o Core..:? "pose")
                     Core.<*> (o Core..:? "shareLink")
                     Core.<*> (o Core..:? "thumbnailUrl")
                     Core.<*> (o Core..:? "transferStatus")
                     Core.<*> (o Core..:? "uploadReference")
                     Core.<*> (o Core..:? "uploadTime")
                     Core.<*>
                     (o Core..:? "viewCount" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON Photo where
        toJSON Photo{..}
          = Core.object
              (Core.catMaybes
                 [("captureTime" Core..=) Core.<$> captureTime,
                  ("connections" Core..=) Core.<$> connections,
                  ("downloadUrl" Core..=) Core.<$> downloadUrl,
                  ("mapsPublishStatus" Core..=) Core.<$>
                    mapsPublishStatus,
                  ("photoId" Core..=) Core.<$> photoId,
                  ("places" Core..=) Core.<$> places,
                  ("pose" Core..=) Core.<$> pose,
                  ("shareLink" Core..=) Core.<$> shareLink,
                  ("thumbnailUrl" Core..=) Core.<$> thumbnailUrl,
                  ("transferStatus" Core..=) Core.<$> transferStatus,
                  ("uploadReference" Core..=) Core.<$> uploadReference,
                  ("uploadTime" Core..=) Core.<$> uploadTime,
                  ("viewCount" Core..=) Core.. Core.AsText Core.<$>
                    viewCount])


-- | Identifier for a Photo.
--
-- /See:/ 'newPhotoId' smart constructor.
newtype PhotoId = PhotoId
    {
      -- | A unique identifier for a photo.
      id :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PhotoId' with the minimum fields required to make a request.
newPhotoId 
    ::  PhotoId
newPhotoId = PhotoId {id = Core.Nothing}

instance Core.FromJSON PhotoId where
        parseJSON
          = Core.withObject "PhotoId"
              (\ o -> PhotoId Core.<$> (o Core..:? "id"))

instance Core.ToJSON PhotoId where
        toJSON PhotoId{..}
          = Core.object
              (Core.catMaybes [("id" Core..=) Core.<$> id])


-- | Response payload for a single Photo in batch operations including BatchGetPhotos and BatchUpdatePhotos.
--
-- /See:/ 'newPhotoResponse' smart constructor.
data PhotoResponse = PhotoResponse
    {
      -- | The Photo resource, if the request was successful.
      photo :: (Core.Maybe Photo)
      -- | The status for the operation to get or update a single photo in the batch request.
    , status :: (Core.Maybe Status)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PhotoResponse' with the minimum fields required to make a request.
newPhotoResponse 
    ::  PhotoResponse
newPhotoResponse = PhotoResponse {photo = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON PhotoResponse where
        parseJSON
          = Core.withObject "PhotoResponse"
              (\ o ->
                 PhotoResponse Core.<$>
                   (o Core..:? "photo") Core.<*> (o Core..:? "status"))

instance Core.ToJSON PhotoResponse where
        toJSON PhotoResponse{..}
          = Core.object
              (Core.catMaybes
                 [("photo" Core..=) Core.<$> photo,
                  ("status" Core..=) Core.<$> status])


-- | A sequence of 360 photos along with metadata.
--
-- /See:/ 'newPhotoSequence' smart constructor.
data PhotoSequence = PhotoSequence
    {
      -- | Optional. Absolute time when the photo sequence starts to be captured. If the photo sequence is a video, this is the start time of the video. If this field is populated in input, it overrides the capture time in the video or XDM file.
      captureTimeOverride :: (Core.Maybe Core.DateTime)
      -- | Output only. The computed distance of the photo sequence in meters.
    , distanceMeters :: (Core.Maybe Core.Double)
      -- | Output only. If this sequence has @failure_reason@ set, this may contain additional details about the failure.
    , failureDetails :: (Core.Maybe ProcessingFailureDetails)
      -- | Output only. If this sequence has processing/state = FAILED, this will contain the reason why it failed. If the processing/state is any other value, this field will be unset.
    , failureReason :: (Core.Maybe PhotoSequence_FailureReason)
      -- | Output only. The filename of the upload. Does not include the directory path. Only available if the sequence was uploaded on a platform that provides the filename.
    , filename :: (Core.Maybe Core.Text)
      -- | Input only. If both raw/gps/timeline and the Camera Motion Metadata Track (CAMM) contain GPS measurements, indicate which takes precedence.
    , gpsSource :: (Core.Maybe PhotoSequence_GpsSource)
      -- | Output only. Unique identifier for the photo sequence. This also acts as a long running operation ID if uploading is performed asynchronously.
    , id :: (Core.Maybe Core.Text)
      -- | Input only. Three axis IMU data for the collection. If this data is too large to put in the request, then it should be put in the CAMM track for the video. This data always takes precedence over the equivalent CAMM data, if it exists.
    , imu :: (Core.Maybe Imu)
      -- | Output only. Photos with increasing timestamps.
    , photos :: (Core.Maybe [Photo])
      -- | Output only. The processing state of this sequence.
    , processingState :: (Core.Maybe PhotoSequence_ProcessingState)
      -- | Input only. Raw GPS measurements with increasing timestamps from the device that aren\'t time synced with each photo. These raw measurements will be used to infer the pose of each frame. Required in input when InputType is VIDEO and raw GPS measurements are not in Camera Motion Metadata Track (CAMM). User can indicate which takes precedence using gps/source if raw GPS measurements are provided in both raw/gps_timeline and Camera Motion Metadata Track (CAMM).
    , rawGpsTimeline :: (Core.Maybe [Pose])
      -- | Output only. A rectangular box that encapsulates every image in this photo sequence.
    , sequenceBounds :: (Core.Maybe LatLngBounds)
      -- | Input only. Required when creating photo sequence. The resource name where the bytes of the photo sequence (in the form of video) are uploaded.
    , uploadReference :: (Core.Maybe UploadRef)
      -- | Output only. The time this photo sequence was created in uSV Store service.
    , uploadTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The total number of views that all the published images in this PhotoSequence have received.
    , viewCount :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PhotoSequence' with the minimum fields required to make a request.
newPhotoSequence 
    ::  PhotoSequence
newPhotoSequence =
  PhotoSequence
    { captureTimeOverride = Core.Nothing
    , distanceMeters = Core.Nothing
    , failureDetails = Core.Nothing
    , failureReason = Core.Nothing
    , filename = Core.Nothing
    , gpsSource = Core.Nothing
    , id = Core.Nothing
    , imu = Core.Nothing
    , photos = Core.Nothing
    , processingState = Core.Nothing
    , rawGpsTimeline = Core.Nothing
    , sequenceBounds = Core.Nothing
    , uploadReference = Core.Nothing
    , uploadTime = Core.Nothing
    , viewCount = Core.Nothing
    }

instance Core.FromJSON PhotoSequence where
        parseJSON
          = Core.withObject "PhotoSequence"
              (\ o ->
                 PhotoSequence Core.<$>
                   (o Core..:? "captureTimeOverride") Core.<*>
                     (o Core..:? "distanceMeters")
                     Core.<*> (o Core..:? "failureDetails")
                     Core.<*> (o Core..:? "failureReason")
                     Core.<*> (o Core..:? "filename")
                     Core.<*> (o Core..:? "gpsSource")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "imu")
                     Core.<*> (o Core..:? "photos")
                     Core.<*> (o Core..:? "processingState")
                     Core.<*> (o Core..:? "rawGpsTimeline")
                     Core.<*> (o Core..:? "sequenceBounds")
                     Core.<*> (o Core..:? "uploadReference")
                     Core.<*> (o Core..:? "uploadTime")
                     Core.<*>
                     (o Core..:? "viewCount" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON PhotoSequence where
        toJSON PhotoSequence{..}
          = Core.object
              (Core.catMaybes
                 [("captureTimeOverride" Core..=) Core.<$>
                    captureTimeOverride,
                  ("distanceMeters" Core..=) Core.<$> distanceMeters,
                  ("failureDetails" Core..=) Core.<$> failureDetails,
                  ("failureReason" Core..=) Core.<$> failureReason,
                  ("filename" Core..=) Core.<$> filename,
                  ("gpsSource" Core..=) Core.<$> gpsSource,
                  ("id" Core..=) Core.<$> id,
                  ("imu" Core..=) Core.<$> imu,
                  ("photos" Core..=) Core.<$> photos,
                  ("processingState" Core..=) Core.<$> processingState,
                  ("rawGpsTimeline" Core..=) Core.<$> rawGpsTimeline,
                  ("sequenceBounds" Core..=) Core.<$> sequenceBounds,
                  ("uploadReference" Core..=) Core.<$> uploadReference,
                  ("uploadTime" Core..=) Core.<$> uploadTime,
                  ("viewCount" Core..=) Core.. Core.AsText Core.<$>
                    viewCount])


-- | Place metadata for an entity.
--
-- /See:/ 'newPlace' smart constructor.
data Place = Place
    {
      -- | Output only. The language/code that the name is localized with. This should be the language/code specified in the request, but may be a fallback.
      languageCode :: (Core.Maybe Core.Text)
      -- | Output only. The name of the place, localized to the language_code.
    , name :: (Core.Maybe Core.Text)
      -- | Place identifier, as described in https:\/\/developers.google.com\/places\/place-id.
    , placeId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Place' with the minimum fields required to make a request.
newPlace 
    ::  Place
newPlace =
  Place
    {languageCode = Core.Nothing, name = Core.Nothing, placeId = Core.Nothing}

instance Core.FromJSON Place where
        parseJSON
          = Core.withObject "Place"
              (\ o ->
                 Place Core.<$>
                   (o Core..:? "languageCode") Core.<*>
                     (o Core..:? "name")
                     Core.<*> (o Core..:? "placeId"))

instance Core.ToJSON Place where
        toJSON Place{..}
          = Core.object
              (Core.catMaybes
                 [("languageCode" Core..=) Core.<$> languageCode,
                  ("name" Core..=) Core.<$> name,
                  ("placeId" Core..=) Core.<$> placeId])


-- | Raw pose measurement for an entity.
--
-- /See:/ 'newPose' smart constructor.
data Pose = Pose
    {
      -- | The estimated horizontal accuracy of this pose in meters with 68% confidence (one standard deviation). For example, on Android, this value is available from this method: https:\/\/developer.android.com\/reference\/android\/location\/Location#getAccuracy(). Other platforms have different methods of obtaining similar accuracy estimations.
      accuracyMeters :: (Core.Maybe Core.Double)
      -- | Altitude of the pose in meters above WGS84 ellipsoid. NaN indicates an unmeasured quantity.
    , altitude :: (Core.Maybe Core.Double)
      -- | Time of the GPS record since UTC epoch.
    , gpsRecordTimestampUnixEpoch :: (Core.Maybe Core.DateTime)
      -- | The following pose parameters pertain to the center of the photo. They match https:\/\/developers.google.com\/streetview\/spherical-metadata. Compass heading, measured at the center of the photo in degrees clockwise from North. Value must be >=0 and \<360. NaN indicates an unmeasured quantity.
    , heading :: (Core.Maybe Core.Double)
      -- | Latitude and longitude pair of the pose, as explained here: https:\/\/cloud.google.com\/datastore\/docs\/reference\/rest\/Shared.Types\/LatLng When creating a Photo, if the latitude and longitude pair are not provided, the geolocation from the exif header is used. A latitude and longitude pair not provided in the photo or exif header causes the photo process to fail.
    , latLngPair :: (Core.Maybe LatLng)
      -- | Level (the floor in a building) used to configure vertical navigation.
    , level :: (Core.Maybe Level)
      -- | Pitch, measured at the center of the photo in degrees. Value must be >=-90 and \<= 90. A value of -90 means looking directly down, and a value of 90 means looking directly up. NaN indicates an unmeasured quantity.
    , pitch :: (Core.Maybe Core.Double)
      -- | Roll, measured in degrees. Value must be >= 0 and \<360. A value of 0 means level with the horizon. NaN indicates an unmeasured quantity.
    , roll :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Pose' with the minimum fields required to make a request.
newPose 
    ::  Pose
newPose =
  Pose
    { accuracyMeters = Core.Nothing
    , altitude = Core.Nothing
    , gpsRecordTimestampUnixEpoch = Core.Nothing
    , heading = Core.Nothing
    , latLngPair = Core.Nothing
    , level = Core.Nothing
    , pitch = Core.Nothing
    , roll = Core.Nothing
    }

instance Core.FromJSON Pose where
        parseJSON
          = Core.withObject "Pose"
              (\ o ->
                 Pose Core.<$>
                   (o Core..:? "accuracyMeters") Core.<*>
                     (o Core..:? "altitude")
                     Core.<*> (o Core..:? "gpsRecordTimestampUnixEpoch")
                     Core.<*> (o Core..:? "heading")
                     Core.<*> (o Core..:? "latLngPair")
                     Core.<*> (o Core..:? "level")
                     Core.<*> (o Core..:? "pitch")
                     Core.<*> (o Core..:? "roll"))

instance Core.ToJSON Pose where
        toJSON Pose{..}
          = Core.object
              (Core.catMaybes
                 [("accuracyMeters" Core..=) Core.<$> accuracyMeters,
                  ("altitude" Core..=) Core.<$> altitude,
                  ("gpsRecordTimestampUnixEpoch" Core..=) Core.<$>
                    gpsRecordTimestampUnixEpoch,
                  ("heading" Core..=) Core.<$> heading,
                  ("latLngPair" Core..=) Core.<$> latLngPair,
                  ("level" Core..=) Core.<$> level,
                  ("pitch" Core..=) Core.<$> pitch,
                  ("roll" Core..=) Core.<$> roll])


-- | Additional details to accompany the ProcessingFailureReason enum. This message is always expected to be used in conjunction with ProcessingFailureReason, and the oneof value set in this message should match the FailureReason.
--
-- /See:/ 'newProcessingFailureDetails' smart constructor.
data ProcessingFailureDetails = ProcessingFailureDetails
    {
      -- | See GpsDataGapFailureDetails.
      gpsDataGapDetails :: (Core.Maybe GpsDataGapFailureDetails)
      -- | See ImuDataGapFailureDetails.
    , imuDataGapDetails :: (Core.Maybe ImuDataGapFailureDetails)
      -- | See InsufficientGpsFailureDetails.
    , insufficientGpsDetails :: (Core.Maybe InsufficientGpsFailureDetails)
      -- | See NoOverlapGpsFailureDetails.
    , noOverlapGpsDetails :: (Core.Maybe NoOverlapGpsFailureDetails)
      -- | See NotOutdoorsFailureDetails.
    , notOutdoorsDetails :: (Core.Maybe NotOutdoorsFailureDetails)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProcessingFailureDetails' with the minimum fields required to make a request.
newProcessingFailureDetails 
    ::  ProcessingFailureDetails
newProcessingFailureDetails =
  ProcessingFailureDetails
    { gpsDataGapDetails = Core.Nothing
    , imuDataGapDetails = Core.Nothing
    , insufficientGpsDetails = Core.Nothing
    , noOverlapGpsDetails = Core.Nothing
    , notOutdoorsDetails = Core.Nothing
    }

instance Core.FromJSON ProcessingFailureDetails where
        parseJSON
          = Core.withObject "ProcessingFailureDetails"
              (\ o ->
                 ProcessingFailureDetails Core.<$>
                   (o Core..:? "gpsDataGapDetails") Core.<*>
                     (o Core..:? "imuDataGapDetails")
                     Core.<*> (o Core..:? "insufficientGpsDetails")
                     Core.<*> (o Core..:? "noOverlapGpsDetails")
                     Core.<*> (o Core..:? "notOutdoorsDetails"))

instance Core.ToJSON ProcessingFailureDetails where
        toJSON ProcessingFailureDetails{..}
          = Core.object
              (Core.catMaybes
                 [("gpsDataGapDetails" Core..=) Core.<$>
                    gpsDataGapDetails,
                  ("imuDataGapDetails" Core..=) Core.<$>
                    imuDataGapDetails,
                  ("insufficientGpsDetails" Core..=) Core.<$>
                    insufficientGpsDetails,
                  ("noOverlapGpsDetails" Core..=) Core.<$>
                    noOverlapGpsDetails,
                  ("notOutdoorsDetails" Core..=) Core.<$>
                    notOutdoorsDetails])


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..}
          = Core.toJSON additional


-- | Request to update the metadata of a Photo. Updating the pixels of a photo is not supported.
--
-- /See:/ 'newUpdatePhotoRequest' smart constructor.
data UpdatePhotoRequest = UpdatePhotoRequest
    {
      -- | Required. Photo object containing the new metadata.
      photo :: (Core.Maybe Photo)
      -- | Required. Mask that identifies fields on the photo metadata to update. If not present, the old Photo metadata is entirely replaced with the new Photo metadata in this request. The update fails if invalid fields are specified. Multiple fields can be specified in a comma-delimited list. The following fields are valid: * @pose.heading@ * @pose.lat_lng_pair@ * @pose.pitch@ * @pose.roll@ * @pose.level@ * @pose.altitude@ * @connections@ * @places@ > Note: When updateMask contains repeated fields, the entire set of repeated values get replaced with the new contents. For example, if updateMask contains @connections@ and @UpdatePhotoRequest.photo.connections@ is empty, all connections are removed.
    , updateMask :: (Core.Maybe Core.FieldMask)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdatePhotoRequest' with the minimum fields required to make a request.
newUpdatePhotoRequest 
    ::  UpdatePhotoRequest
newUpdatePhotoRequest =
  UpdatePhotoRequest {photo = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON UpdatePhotoRequest where
        parseJSON
          = Core.withObject "UpdatePhotoRequest"
              (\ o ->
                 UpdatePhotoRequest Core.<$>
                   (o Core..:? "photo") Core.<*>
                     (o Core..:? "updateMask"))

instance Core.ToJSON UpdatePhotoRequest where
        toJSON UpdatePhotoRequest{..}
          = Core.object
              (Core.catMaybes
                 [("photo" Core..=) Core.<$> photo,
                  ("updateMask" Core..=) Core.<$> updateMask])


-- | Upload reference for media files.
--
-- /See:/ 'newUploadRef' smart constructor.
newtype UploadRef = UploadRef
    {
      -- | An upload reference should be unique for each user. It follows the form: \"https:\/\/streetviewpublish.googleapis.com\/media\/user\/{account/id}\/photo\/{upload/reference}\"
      uploadUrl :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UploadRef' with the minimum fields required to make a request.
newUploadRef 
    ::  UploadRef
newUploadRef = UploadRef {uploadUrl = Core.Nothing}

instance Core.FromJSON UploadRef where
        parseJSON
          = Core.withObject "UploadRef"
              (\ o -> UploadRef Core.<$> (o Core..:? "uploadUrl"))

instance Core.ToJSON UploadRef where
        toJSON UploadRef{..}
          = Core.object
              (Core.catMaybes
                 [("uploadUrl" Core..=) Core.<$> uploadUrl])

