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
-- Module      : Gogol.StreetViewPublish.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.StreetViewPublish.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Photo_MapsPublishStatus
    Photo_MapsPublishStatus
      (
        Photo_MapsPublishStatus_UNSPECIFIEDMAPSPUBLISHSTATUS,
        Photo_MapsPublishStatus_Published,
        Photo_MapsPublishStatus_REJECTEDUNKNOWN,
        ..
      ),

    -- * Photo_TransferStatus
    Photo_TransferStatus
      (
        Photo_TransferStatus_TRANSFERSTATUSUNKNOWN,
        Photo_TransferStatus_NEVERTRANSFERRED,
        Photo_TransferStatus_Pending,
        Photo_TransferStatus_Completed,
        Photo_TransferStatus_Rejected,
        Photo_TransferStatus_Expired,
        Photo_TransferStatus_Cancelled,
        Photo_TransferStatus_RECEIVEDVIATRANSFER,
        ..
      ),

    -- * PhotoSequence_FailureReason
    PhotoSequence_FailureReason
      (
        PhotoSequence_FailureReason_PROCESSINGFAILUREREASONUNSPECIFIED,
        PhotoSequence_FailureReason_LOWRESOLUTION,
        PhotoSequence_FailureReason_Duplicate,
        PhotoSequence_FailureReason_INSUFFICIENTGPS,
        PhotoSequence_FailureReason_NOOVERLAPGPS,
        PhotoSequence_FailureReason_INVALIDGPS,
        PhotoSequence_FailureReason_FAILEDTOREFINEPOSITIONS,
        PhotoSequence_FailureReason_Takedown,
        PhotoSequence_FailureReason_CORRUPTVIDEO,
        PhotoSequence_FailureReason_Internal,
        PhotoSequence_FailureReason_INVALIDVIDEOFORMAT,
        PhotoSequence_FailureReason_INVALIDVIDEODIMENSIONS,
        PhotoSequence_FailureReason_INVALIDCAPTURETIME,
        PhotoSequence_FailureReason_GPSDATAGAP,
        PhotoSequence_FailureReason_JUMPYGPS,
        PhotoSequence_FailureReason_INVALIDIMU,
        PhotoSequence_FailureReason_INSUFFICIENTIMU,
        PhotoSequence_FailureReason_INSUFFICIENTOVERLAPTIMESERIES,
        PhotoSequence_FailureReason_IMUDATAGAP,
        PhotoSequence_FailureReason_UNSUPPORTEDCAMERA,
        PhotoSequence_FailureReason_NOTOUTDOORS,
        PhotoSequence_FailureReason_INSUFFICIENTVIDEOFRAMES,
        PhotoSequence_FailureReason_INSUFFICIENTMOVEMENT,
        PhotoSequence_FailureReason_MASTDOWN,
        PhotoSequence_FailureReason_CAMERACOVERED,
        ..
      ),

    -- * PhotoSequence_GpsSource
    PhotoSequence_GpsSource
      (
        PhotoSequence_GpsSource_PHOTOSEQUENCE,
        PhotoSequence_GpsSource_CAMERAMOTIONMETADATATRACK,
        ..
      ),

    -- * PhotoSequence_ProcessingState
    PhotoSequence_ProcessingState
      (
        PhotoSequence_ProcessingState_PROCESSINGSTATEUNSPECIFIED,
        PhotoSequence_ProcessingState_Pending,
        PhotoSequence_ProcessingState_Processing,
        PhotoSequence_ProcessingState_Processed,
        PhotoSequence_ProcessingState_Failed,
        ..
      ),

    -- * PhotoGetView
    PhotoGetView
      (
        PhotoGetView_Basic,
        PhotoGetView_INCLUDEDOWNLOADURL,
        ..
      ),

    -- * PhotoSequenceCreateInputType
    PhotoSequenceCreateInputType
      (
        PhotoSequenceCreateInputType_INPUTTYPEUNSPECIFIED,
        PhotoSequenceCreateInputType_Video,
        PhotoSequenceCreateInputType_Xdm,
        ..
      ),

    -- * PhotoSequenceGetView
    PhotoSequenceGetView
      (
        PhotoSequenceGetView_Basic,
        PhotoSequenceGetView_INCLUDEDOWNLOADURL,
        ..
      ),

    -- * PhotosBatchGetView
    PhotosBatchGetView
      (
        PhotosBatchGetView_Basic,
        PhotosBatchGetView_INCLUDEDOWNLOADURL,
        ..
      ),

    -- * PhotosListView
    PhotosListView
      (
        PhotosListView_Basic,
        PhotosListView_INCLUDEDOWNLOADURL,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | Output only. Status in Google Maps, whether this photo was published or rejected.
newtype Photo_MapsPublishStatus = Photo_MapsPublishStatus { fromPhoto_MapsPublishStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The status of the photo is unknown.
pattern Photo_MapsPublishStatus_UNSPECIFIEDMAPSPUBLISHSTATUS :: Photo_MapsPublishStatus
pattern Photo_MapsPublishStatus_UNSPECIFIEDMAPSPUBLISHSTATUS = Photo_MapsPublishStatus "UNSPECIFIED_MAPS_PUBLISH_STATUS"

-- | The photo is published to the public through Google Maps.
pattern Photo_MapsPublishStatus_Published :: Photo_MapsPublishStatus
pattern Photo_MapsPublishStatus_Published = Photo_MapsPublishStatus "PUBLISHED"

-- | The photo has been rejected for an unknown reason.
pattern Photo_MapsPublishStatus_REJECTEDUNKNOWN :: Photo_MapsPublishStatus
pattern Photo_MapsPublishStatus_REJECTEDUNKNOWN = Photo_MapsPublishStatus "REJECTED_UNKNOWN"

{-# COMPLETE
  Photo_MapsPublishStatus_UNSPECIFIEDMAPSPUBLISHSTATUS,
  Photo_MapsPublishStatus_Published,
  Photo_MapsPublishStatus_REJECTEDUNKNOWN,
  Photo_MapsPublishStatus #-}

-- | Output only. Status of rights transfer on this photo.
newtype Photo_TransferStatus = Photo_TransferStatus { fromPhoto_TransferStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The status of this transfer is unspecified.
pattern Photo_TransferStatus_TRANSFERSTATUSUNKNOWN :: Photo_TransferStatus
pattern Photo_TransferStatus_TRANSFERSTATUSUNKNOWN = Photo_TransferStatus "TRANSFER_STATUS_UNKNOWN"

-- | This photo has never been in a transfer.
pattern Photo_TransferStatus_NEVERTRANSFERRED :: Photo_TransferStatus
pattern Photo_TransferStatus_NEVERTRANSFERRED = Photo_TransferStatus "NEVER_TRANSFERRED"

-- | This photo transfer has been initiated, but the receiver has not yet responded.
pattern Photo_TransferStatus_Pending :: Photo_TransferStatus
pattern Photo_TransferStatus_Pending = Photo_TransferStatus "PENDING"

-- | The photo transfer has been completed, and this photo has been transferred to the recipient.
pattern Photo_TransferStatus_Completed :: Photo_TransferStatus
pattern Photo_TransferStatus_Completed = Photo_TransferStatus "COMPLETED"

-- | The recipient rejected this photo transfer.
pattern Photo_TransferStatus_Rejected :: Photo_TransferStatus
pattern Photo_TransferStatus_Rejected = Photo_TransferStatus "REJECTED"

-- | The photo transfer expired before the recipient took any action.
pattern Photo_TransferStatus_Expired :: Photo_TransferStatus
pattern Photo_TransferStatus_Expired = Photo_TransferStatus "EXPIRED"

-- | The sender cancelled this photo transfer.
pattern Photo_TransferStatus_Cancelled :: Photo_TransferStatus
pattern Photo_TransferStatus_Cancelled = Photo_TransferStatus "CANCELLED"

-- | The recipient owns this photo due to a rights transfer.
pattern Photo_TransferStatus_RECEIVEDVIATRANSFER :: Photo_TransferStatus
pattern Photo_TransferStatus_RECEIVEDVIATRANSFER = Photo_TransferStatus "RECEIVED_VIA_TRANSFER"

{-# COMPLETE
  Photo_TransferStatus_TRANSFERSTATUSUNKNOWN,
  Photo_TransferStatus_NEVERTRANSFERRED,
  Photo_TransferStatus_Pending,
  Photo_TransferStatus_Completed,
  Photo_TransferStatus_Rejected,
  Photo_TransferStatus_Expired,
  Photo_TransferStatus_Cancelled,
  Photo_TransferStatus_RECEIVEDVIATRANSFER,
  Photo_TransferStatus #-}

-- | Output only. If this sequence has processing/state = FAILED, this will contain the reason why it failed. If the processing/state is any other value, this field will be unset.
newtype PhotoSequence_FailureReason = PhotoSequence_FailureReason { fromPhotoSequence_FailureReason :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The failure reason is unspecified, this is the default value.
pattern PhotoSequence_FailureReason_PROCESSINGFAILUREREASONUNSPECIFIED :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_PROCESSINGFAILUREREASONUNSPECIFIED = PhotoSequence_FailureReason "PROCESSING_FAILURE_REASON_UNSPECIFIED"

-- | Video frame\'s resolution is too small.
pattern PhotoSequence_FailureReason_LOWRESOLUTION :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_LOWRESOLUTION = PhotoSequence_FailureReason "LOW_RESOLUTION"

-- | This video has been uploaded before.
pattern PhotoSequence_FailureReason_Duplicate :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_Duplicate = PhotoSequence_FailureReason "DUPLICATE"

-- | Too few GPS points.
pattern PhotoSequence_FailureReason_INSUFFICIENTGPS :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_INSUFFICIENTGPS = PhotoSequence_FailureReason "INSUFFICIENT_GPS"

-- | No overlap between the time frame of GPS track and the time frame of video.
pattern PhotoSequence_FailureReason_NOOVERLAPGPS :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_NOOVERLAPGPS = PhotoSequence_FailureReason "NO_OVERLAP_GPS"

-- | GPS is invalid (e.x. all GPS points are at (0,0))
pattern PhotoSequence_FailureReason_INVALIDGPS :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_INVALIDGPS = PhotoSequence_FailureReason "INVALID_GPS"

-- | The sequence of photos could not be accurately located in the world.
pattern PhotoSequence_FailureReason_FAILEDTOREFINEPOSITIONS :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_FAILEDTOREFINEPOSITIONS = PhotoSequence_FailureReason "FAILED_TO_REFINE_POSITIONS"

-- | The sequence was taken down for policy reasons.
pattern PhotoSequence_FailureReason_Takedown :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_Takedown = PhotoSequence_FailureReason "TAKEDOWN"

-- | The video file was corrupt or could not be decoded.
pattern PhotoSequence_FailureReason_CORRUPTVIDEO :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_CORRUPTVIDEO = PhotoSequence_FailureReason "CORRUPT_VIDEO"

-- | A permanent failure in the underlying system occurred.
pattern PhotoSequence_FailureReason_Internal :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_Internal = PhotoSequence_FailureReason "INTERNAL"

-- | The video format is invalid or unsupported.
pattern PhotoSequence_FailureReason_INVALIDVIDEOFORMAT :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_INVALIDVIDEOFORMAT = PhotoSequence_FailureReason "INVALID_VIDEO_FORMAT"

-- | Invalid image aspect ratio found.
pattern PhotoSequence_FailureReason_INVALIDVIDEODIMENSIONS :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_INVALIDVIDEODIMENSIONS = PhotoSequence_FailureReason "INVALID_VIDEO_DIMENSIONS"

-- | Invalid capture time. Timestamps were from the future.
pattern PhotoSequence_FailureReason_INVALIDCAPTURETIME :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_INVALIDCAPTURETIME = PhotoSequence_FailureReason "INVALID_CAPTURE_TIME"

-- | GPS data contains a gap greater than 5 seconds in duration.
pattern PhotoSequence_FailureReason_GPSDATAGAP :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_GPSDATAGAP = PhotoSequence_FailureReason "GPS_DATA_GAP"

-- | GPS data is too erratic to be processed.
pattern PhotoSequence_FailureReason_JUMPYGPS :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_JUMPYGPS = PhotoSequence_FailureReason "JUMPY_GPS"

-- | IMU (Accelerometer, Gyroscope, etc.) data are not valid. They may be missing required fields (x, y, z or time), may not be formatted correctly, or any other issue that prevents our systems from parsing it.
pattern PhotoSequence_FailureReason_INVALIDIMU :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_INVALIDIMU = PhotoSequence_FailureReason "INVALID_IMU"

-- | Too few IMU points.
pattern PhotoSequence_FailureReason_INSUFFICIENTIMU :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_INSUFFICIENTIMU = PhotoSequence_FailureReason "INSUFFICIENT_IMU"

-- | Insufficient overlap in the time frame between GPS, IMU, and other time series data.
pattern PhotoSequence_FailureReason_INSUFFICIENTOVERLAPTIMESERIES :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_INSUFFICIENTOVERLAPTIMESERIES = PhotoSequence_FailureReason "INSUFFICIENT_OVERLAP_TIME_SERIES"

-- | IMU (Accelerometer, Gyroscope, etc.) data contain gaps greater than 0.1 seconds in duration.
pattern PhotoSequence_FailureReason_IMUDATAGAP :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_IMUDATAGAP = PhotoSequence_FailureReason "IMU_DATA_GAP"

-- | The camera is not supported.
pattern PhotoSequence_FailureReason_UNSUPPORTEDCAMERA :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_UNSUPPORTEDCAMERA = PhotoSequence_FailureReason "UNSUPPORTED_CAMERA"

-- | Some frames were indoors, which is unsupported.
pattern PhotoSequence_FailureReason_NOTOUTDOORS :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_NOTOUTDOORS = PhotoSequence_FailureReason "NOT_OUTDOORS"

-- | Not enough video frames.
pattern PhotoSequence_FailureReason_INSUFFICIENTVIDEOFRAMES :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_INSUFFICIENTVIDEOFRAMES = PhotoSequence_FailureReason "INSUFFICIENT_VIDEO_FRAMES"

-- | Not enough moving data.
pattern PhotoSequence_FailureReason_INSUFFICIENTMOVEMENT :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_INSUFFICIENTMOVEMENT = PhotoSequence_FailureReason "INSUFFICIENT_MOVEMENT"

-- | Mast is down.
pattern PhotoSequence_FailureReason_MASTDOWN :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_MASTDOWN = PhotoSequence_FailureReason "MAST_DOWN"

-- | Camera is covered.
pattern PhotoSequence_FailureReason_CAMERACOVERED :: PhotoSequence_FailureReason
pattern PhotoSequence_FailureReason_CAMERACOVERED = PhotoSequence_FailureReason "CAMERA_COVERED"

{-# COMPLETE
  PhotoSequence_FailureReason_PROCESSINGFAILUREREASONUNSPECIFIED,
  PhotoSequence_FailureReason_LOWRESOLUTION,
  PhotoSequence_FailureReason_Duplicate,
  PhotoSequence_FailureReason_INSUFFICIENTGPS,
  PhotoSequence_FailureReason_NOOVERLAPGPS,
  PhotoSequence_FailureReason_INVALIDGPS,
  PhotoSequence_FailureReason_FAILEDTOREFINEPOSITIONS,
  PhotoSequence_FailureReason_Takedown,
  PhotoSequence_FailureReason_CORRUPTVIDEO,
  PhotoSequence_FailureReason_Internal,
  PhotoSequence_FailureReason_INVALIDVIDEOFORMAT,
  PhotoSequence_FailureReason_INVALIDVIDEODIMENSIONS,
  PhotoSequence_FailureReason_INVALIDCAPTURETIME,
  PhotoSequence_FailureReason_GPSDATAGAP,
  PhotoSequence_FailureReason_JUMPYGPS,
  PhotoSequence_FailureReason_INVALIDIMU,
  PhotoSequence_FailureReason_INSUFFICIENTIMU,
  PhotoSequence_FailureReason_INSUFFICIENTOVERLAPTIMESERIES,
  PhotoSequence_FailureReason_IMUDATAGAP,
  PhotoSequence_FailureReason_UNSUPPORTEDCAMERA,
  PhotoSequence_FailureReason_NOTOUTDOORS,
  PhotoSequence_FailureReason_INSUFFICIENTVIDEOFRAMES,
  PhotoSequence_FailureReason_INSUFFICIENTMOVEMENT,
  PhotoSequence_FailureReason_MASTDOWN,
  PhotoSequence_FailureReason_CAMERACOVERED,
  PhotoSequence_FailureReason #-}

-- | Input only. If both raw/gps/timeline and the Camera Motion Metadata Track (CAMM) contain GPS measurements, indicate which takes precedence.
newtype PhotoSequence_GpsSource = PhotoSequence_GpsSource { fromPhotoSequence_GpsSource :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | GPS in raw/gps/timeline takes precedence if it exists.
pattern PhotoSequence_GpsSource_PHOTOSEQUENCE :: PhotoSequence_GpsSource
pattern PhotoSequence_GpsSource_PHOTOSEQUENCE = PhotoSequence_GpsSource "PHOTO_SEQUENCE"

-- | GPS in Camera Motion Metadata Track (CAMM) takes precedence if it exists.
pattern PhotoSequence_GpsSource_CAMERAMOTIONMETADATATRACK :: PhotoSequence_GpsSource
pattern PhotoSequence_GpsSource_CAMERAMOTIONMETADATATRACK = PhotoSequence_GpsSource "CAMERA_MOTION_METADATA_TRACK"

{-# COMPLETE
  PhotoSequence_GpsSource_PHOTOSEQUENCE,
  PhotoSequence_GpsSource_CAMERAMOTIONMETADATATRACK,
  PhotoSequence_GpsSource #-}

-- | Output only. The processing state of this sequence.
newtype PhotoSequence_ProcessingState = PhotoSequence_ProcessingState { fromPhotoSequence_ProcessingState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The state is unspecified, this is the default value.
pattern PhotoSequence_ProcessingState_PROCESSINGSTATEUNSPECIFIED :: PhotoSequence_ProcessingState
pattern PhotoSequence_ProcessingState_PROCESSINGSTATEUNSPECIFIED = PhotoSequence_ProcessingState "PROCESSING_STATE_UNSPECIFIED"

-- | The sequence has not yet started processing.
pattern PhotoSequence_ProcessingState_Pending :: PhotoSequence_ProcessingState
pattern PhotoSequence_ProcessingState_Pending = PhotoSequence_ProcessingState "PENDING"

-- | The sequence is currently in processing.
pattern PhotoSequence_ProcessingState_Processing :: PhotoSequence_ProcessingState
pattern PhotoSequence_ProcessingState_Processing = PhotoSequence_ProcessingState "PROCESSING"

-- | The sequence has finished processing including refining position.
pattern PhotoSequence_ProcessingState_Processed :: PhotoSequence_ProcessingState
pattern PhotoSequence_ProcessingState_Processed = PhotoSequence_ProcessingState "PROCESSED"

-- | The sequence failed processing. See FailureReason for more details.
pattern PhotoSequence_ProcessingState_Failed :: PhotoSequence_ProcessingState
pattern PhotoSequence_ProcessingState_Failed = PhotoSequence_ProcessingState "FAILED"

{-# COMPLETE
  PhotoSequence_ProcessingState_PROCESSINGSTATEUNSPECIFIED,
  PhotoSequence_ProcessingState_Pending,
  PhotoSequence_ProcessingState_Processing,
  PhotoSequence_ProcessingState_Processed,
  PhotoSequence_ProcessingState_Failed,
  PhotoSequence_ProcessingState #-}

-- | Required. Specifies if a download URL for the photo bytes should be returned in the Photo response.
newtype PhotoGetView = PhotoGetView { fromPhotoGetView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Server responses do not include the download URL for the photo bytes. The default value.
pattern PhotoGetView_Basic :: PhotoGetView
pattern PhotoGetView_Basic = PhotoGetView "BASIC"

-- | Server responses include the download URL for the photo bytes.
pattern PhotoGetView_INCLUDEDOWNLOADURL :: PhotoGetView
pattern PhotoGetView_INCLUDEDOWNLOADURL = PhotoGetView "INCLUDE_DOWNLOAD_URL"

{-# COMPLETE
  PhotoGetView_Basic,
  PhotoGetView_INCLUDEDOWNLOADURL,
  PhotoGetView #-}

-- | Required. The input form of PhotoSequence.
newtype PhotoSequenceCreateInputType = PhotoSequenceCreateInputType { fromPhotoSequenceCreateInputType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified. Server will return google.rpc.Code.INVALID_ARGUMENT.
pattern PhotoSequenceCreateInputType_INPUTTYPEUNSPECIFIED :: PhotoSequenceCreateInputType
pattern PhotoSequenceCreateInputType_INPUTTYPEUNSPECIFIED = PhotoSequenceCreateInputType "INPUT_TYPE_UNSPECIFIED"

-- | 360 Video.
pattern PhotoSequenceCreateInputType_Video :: PhotoSequenceCreateInputType
pattern PhotoSequenceCreateInputType_Video = PhotoSequenceCreateInputType "VIDEO"

-- | Extensible Device Metadata, http:\/\/www.xdm.org
pattern PhotoSequenceCreateInputType_Xdm :: PhotoSequenceCreateInputType
pattern PhotoSequenceCreateInputType_Xdm = PhotoSequenceCreateInputType "XDM"

{-# COMPLETE
  PhotoSequenceCreateInputType_INPUTTYPEUNSPECIFIED,
  PhotoSequenceCreateInputType_Video,
  PhotoSequenceCreateInputType_Xdm,
  PhotoSequenceCreateInputType #-}

-- | Specifies if a download URL for the photo sequence should be returned in @download_url@ of individual photos in the PhotoSequence response. > Note: Currently not implemented.
newtype PhotoSequenceGetView = PhotoSequenceGetView { fromPhotoSequenceGetView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Server responses do not include the download URL for the photo bytes. The default value.
pattern PhotoSequenceGetView_Basic :: PhotoSequenceGetView
pattern PhotoSequenceGetView_Basic = PhotoSequenceGetView "BASIC"

-- | Server responses include the download URL for the photo bytes.
pattern PhotoSequenceGetView_INCLUDEDOWNLOADURL :: PhotoSequenceGetView
pattern PhotoSequenceGetView_INCLUDEDOWNLOADURL = PhotoSequenceGetView "INCLUDE_DOWNLOAD_URL"

{-# COMPLETE
  PhotoSequenceGetView_Basic,
  PhotoSequenceGetView_INCLUDEDOWNLOADURL,
  PhotoSequenceGetView #-}

-- | Required. Specifies if a download URL for the photo bytes should be returned in the Photo response.
newtype PhotosBatchGetView = PhotosBatchGetView { fromPhotosBatchGetView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Server responses do not include the download URL for the photo bytes. The default value.
pattern PhotosBatchGetView_Basic :: PhotosBatchGetView
pattern PhotosBatchGetView_Basic = PhotosBatchGetView "BASIC"

-- | Server responses include the download URL for the photo bytes.
pattern PhotosBatchGetView_INCLUDEDOWNLOADURL :: PhotosBatchGetView
pattern PhotosBatchGetView_INCLUDEDOWNLOADURL = PhotosBatchGetView "INCLUDE_DOWNLOAD_URL"

{-# COMPLETE
  PhotosBatchGetView_Basic,
  PhotosBatchGetView_INCLUDEDOWNLOADURL,
  PhotosBatchGetView #-}

-- | Required. Specifies if a download URL for the photos bytes should be returned in the Photos response.
newtype PhotosListView = PhotosListView { fromPhotosListView :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Server responses do not include the download URL for the photo bytes. The default value.
pattern PhotosListView_Basic :: PhotosListView
pattern PhotosListView_Basic = PhotosListView "BASIC"

-- | Server responses include the download URL for the photo bytes.
pattern PhotosListView_INCLUDEDOWNLOADURL :: PhotosListView
pattern PhotosListView_INCLUDEDOWNLOADURL = PhotosListView "INCLUDE_DOWNLOAD_URL"

{-# COMPLETE
  PhotosListView_Basic,
  PhotosListView_INCLUDEDOWNLOADURL,
  PhotosListView #-}
