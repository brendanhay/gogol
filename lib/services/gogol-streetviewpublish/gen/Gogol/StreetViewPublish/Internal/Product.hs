{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
module Gogol.StreetViewPublish.Internal.Product
  ( -- * BatchDeletePhotosRequest
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

    -- * LatLng
    LatLng (..),
    newLatLng,

    -- * Level
    Level (..),
    newLevel,

    -- * ListPhotosResponse
    ListPhotosResponse (..),
    newListPhotosResponse,

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

    -- * Place
    Place (..),
    newPlace,

    -- * Pose
    Pose (..),
    newPose,

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
  )
where

import qualified Gogol.Prelude as Core
import Gogol.StreetViewPublish.Internal.Sum

-- | Request to delete multiple Photos.
--
-- /See:/ 'newBatchDeletePhotosRequest' smart constructor.
newtype BatchDeletePhotosRequest = BatchDeletePhotosRequest
  { -- | Required. IDs of the Photos. HTTP GET requests require the following syntax for the URL query parameter: @photoIds=&photoIds=&...@.
    photoIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeletePhotosRequest' with the minimum fields required to make a request.
newBatchDeletePhotosRequest ::
  BatchDeletePhotosRequest
newBatchDeletePhotosRequest = BatchDeletePhotosRequest {photoIds = Core.Nothing}

instance Core.FromJSON BatchDeletePhotosRequest where
  parseJSON =
    Core.withObject
      "BatchDeletePhotosRequest"
      ( \o ->
          BatchDeletePhotosRequest
            Core.<$> (o Core..:? "photoIds" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchDeletePhotosRequest where
  toJSON BatchDeletePhotosRequest {..} =
    Core.object
      ( Core.catMaybes
          [("photoIds" Core..=) Core.<$> photoIds]
      )

-- | Response to batch delete of one or more Photos.
--
-- /See:/ 'newBatchDeletePhotosResponse' smart constructor.
newtype BatchDeletePhotosResponse = BatchDeletePhotosResponse
  { -- | The status for the operation to delete a single Photo in the batch request.
    status :: (Core.Maybe [Status])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeletePhotosResponse' with the minimum fields required to make a request.
newBatchDeletePhotosResponse ::
  BatchDeletePhotosResponse
newBatchDeletePhotosResponse = BatchDeletePhotosResponse {status = Core.Nothing}

instance Core.FromJSON BatchDeletePhotosResponse where
  parseJSON =
    Core.withObject
      "BatchDeletePhotosResponse"
      ( \o ->
          BatchDeletePhotosResponse
            Core.<$> (o Core..:? "status" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchDeletePhotosResponse where
  toJSON BatchDeletePhotosResponse {..} =
    Core.object
      (Core.catMaybes [("status" Core..=) Core.<$> status])

-- | Response to batch get of Photos.
--
-- /See:/ 'newBatchGetPhotosResponse' smart constructor.
newtype BatchGetPhotosResponse = BatchGetPhotosResponse
  { -- | List of results for each individual Photo requested, in the same order as the requests in BatchGetPhotos.
    results :: (Core.Maybe [PhotoResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchGetPhotosResponse' with the minimum fields required to make a request.
newBatchGetPhotosResponse ::
  BatchGetPhotosResponse
newBatchGetPhotosResponse = BatchGetPhotosResponse {results = Core.Nothing}

instance Core.FromJSON BatchGetPhotosResponse where
  parseJSON =
    Core.withObject
      "BatchGetPhotosResponse"
      ( \o ->
          BatchGetPhotosResponse
            Core.<$> (o Core..:? "results" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchGetPhotosResponse where
  toJSON BatchGetPhotosResponse {..} =
    Core.object
      ( Core.catMaybes
          [("results" Core..=) Core.<$> results]
      )

-- | Request to update the metadata of photos. Updating the pixels of photos is not supported.
--
-- /See:/ 'newBatchUpdatePhotosRequest' smart constructor.
newtype BatchUpdatePhotosRequest = BatchUpdatePhotosRequest
  { -- | Required. List of UpdatePhotoRequests.
    updatePhotoRequests :: (Core.Maybe [UpdatePhotoRequest])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdatePhotosRequest' with the minimum fields required to make a request.
newBatchUpdatePhotosRequest ::
  BatchUpdatePhotosRequest
newBatchUpdatePhotosRequest =
  BatchUpdatePhotosRequest {updatePhotoRequests = Core.Nothing}

instance Core.FromJSON BatchUpdatePhotosRequest where
  parseJSON =
    Core.withObject
      "BatchUpdatePhotosRequest"
      ( \o ->
          BatchUpdatePhotosRequest
            Core.<$> ( o Core..:? "updatePhotoRequests"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON BatchUpdatePhotosRequest where
  toJSON BatchUpdatePhotosRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("updatePhotoRequests" Core..=)
              Core.<$> updatePhotoRequests
          ]
      )

-- | Response to batch update of metadata of one or more Photos.
--
-- /See:/ 'newBatchUpdatePhotosResponse' smart constructor.
newtype BatchUpdatePhotosResponse = BatchUpdatePhotosResponse
  { -- | List of results for each individual Photo updated, in the same order as the request.
    results :: (Core.Maybe [PhotoResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdatePhotosResponse' with the minimum fields required to make a request.
newBatchUpdatePhotosResponse ::
  BatchUpdatePhotosResponse
newBatchUpdatePhotosResponse =
  BatchUpdatePhotosResponse {results = Core.Nothing}

instance Core.FromJSON BatchUpdatePhotosResponse where
  parseJSON =
    Core.withObject
      "BatchUpdatePhotosResponse"
      ( \o ->
          BatchUpdatePhotosResponse
            Core.<$> (o Core..:? "results" Core..!= Core.mempty)
      )

instance Core.ToJSON BatchUpdatePhotosResponse where
  toJSON BatchUpdatePhotosResponse {..} =
    Core.object
      ( Core.catMaybes
          [("results" Core..=) Core.<$> results]
      )

-- | A connection is the link from a source photo to a destination photo.
--
-- /See:/ 'newConnection' smart constructor.
newtype Connection = Connection
  { -- | Required. The destination of the connection from the containing photo to another photo.
    target :: (Core.Maybe PhotoId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Connection' with the minimum fields required to make a request.
newConnection ::
  Connection
newConnection = Connection {target = Core.Nothing}

instance Core.FromJSON Connection where
  parseJSON =
    Core.withObject
      "Connection"
      (\o -> Connection Core.<$> (o Core..:? "target"))

instance Core.ToJSON Connection where
  toJSON Connection {..} =
    Core.object
      (Core.catMaybes [("target" Core..=) Core.<$> target])

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | An object that represents a latitude\/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.
--
-- /See:/ 'newLatLng' smart constructor.
data LatLng = LatLng
  { -- | The latitude in degrees. It must be in the range [-90.0, +90.0].
    latitude :: (Core.Maybe Core.Double),
    -- | The longitude in degrees. It must be in the range [-180.0, +180.0].
    longitude :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
newLatLng ::
  LatLng
newLatLng = LatLng {latitude = Core.Nothing, longitude = Core.Nothing}

instance Core.FromJSON LatLng where
  parseJSON =
    Core.withObject
      "LatLng"
      ( \o ->
          LatLng
            Core.<$> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
      )

instance Core.ToJSON LatLng where
  toJSON LatLng {..} =
    Core.object
      ( Core.catMaybes
          [ ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude
          ]
      )

-- | Level information containing level number and its corresponding name.
--
-- /See:/ 'newLevel' smart constructor.
data Level = Level
  { -- | Required. A name assigned to this Level, restricted to 3 characters. Consider how the elevator buttons would be labeled for this level if there was an elevator.
    name :: (Core.Maybe Core.Text),
    -- | Optional. Floor number, used for ordering. 0 indicates the ground level, 1 indicates the first level above ground level, -1 indicates the first level under ground level. Non-integer values are OK.
    number :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Level' with the minimum fields required to make a request.
newLevel ::
  Level
newLevel = Level {name = Core.Nothing, number = Core.Nothing}

instance Core.FromJSON Level where
  parseJSON =
    Core.withObject
      "Level"
      ( \o ->
          Level
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "number")
      )

instance Core.ToJSON Level where
  toJSON Level {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("number" Core..=) Core.<$> number
          ]
      )

-- | Response to list all photos that belong to a user.
--
-- /See:/ 'newListPhotosResponse' smart constructor.
data ListPhotosResponse = ListPhotosResponse
  { -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of photos. The pageSize field in the request determines the number of items returned.
    photos :: (Core.Maybe [Photo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPhotosResponse' with the minimum fields required to make a request.
newListPhotosResponse ::
  ListPhotosResponse
newListPhotosResponse =
  ListPhotosResponse {nextPageToken = Core.Nothing, photos = Core.Nothing}

instance Core.FromJSON ListPhotosResponse where
  parseJSON =
    Core.withObject
      "ListPhotosResponse"
      ( \o ->
          ListPhotosResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "photos" Core..!= Core.mempty)
      )

instance Core.ToJSON ListPhotosResponse where
  toJSON ListPhotosResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("photos" Core..=) Core.<$> photos
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | Photo is used to store 360 photos along with photo metadata.
--
-- /See:/ 'newPhoto' smart constructor.
data Photo = Photo
  { -- | Optional. Absolute time when the photo was captured. When the photo has no exif timestamp, this is used to set a timestamp in the photo metadata.
    captureTime :: (Core.Maybe Core.DateTime'),
    -- | Optional. Connections to other photos. A connection represents the link from this photo to another photo.
    connections :: (Core.Maybe [Connection]),
    -- | Output only. The download URL for the photo bytes. This field is set only when GetPhotoRequest.view is set to PhotoView.INCLUDE/DOWNLOAD/URL.
    downloadUrl :: (Core.Maybe Core.Text),
    -- | Output only. Status in Google Maps, whether this photo was published or rejected.
    mapsPublishStatus :: (Core.Maybe Photo_MapsPublishStatus),
    -- | Required. Output only. Required when updating a photo. Output only when creating a photo. Identifier for the photo, which is unique among all photos in Google.
    photoId :: (Core.Maybe PhotoId),
    -- | Optional. Places where this photo belongs.
    places :: (Core.Maybe [Place]),
    -- | Optional. Pose of the photo.
    pose :: (Core.Maybe Pose),
    -- | Output only. The share link for the photo.
    shareLink :: (Core.Maybe Core.Text),
    -- | Output only. The thumbnail URL for showing a preview of the given photo.
    thumbnailUrl :: (Core.Maybe Core.Text),
    -- | Output only. Status of rights transfer on this photo.
    transferStatus :: (Core.Maybe Photo_TransferStatus),
    -- | Input only. Required when creating a photo. Input only. The resource URL where the photo bytes are uploaded to.
    uploadReference :: (Core.Maybe UploadRef),
    -- | Output only. Time when the image was uploaded.
    uploadTime :: (Core.Maybe Core.DateTime'),
    -- | Output only. View count of the photo.
    viewCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Photo' with the minimum fields required to make a request.
newPhoto ::
  Photo
newPhoto =
  Photo
    { captureTime = Core.Nothing,
      connections = Core.Nothing,
      downloadUrl = Core.Nothing,
      mapsPublishStatus = Core.Nothing,
      photoId = Core.Nothing,
      places = Core.Nothing,
      pose = Core.Nothing,
      shareLink = Core.Nothing,
      thumbnailUrl = Core.Nothing,
      transferStatus = Core.Nothing,
      uploadReference = Core.Nothing,
      uploadTime = Core.Nothing,
      viewCount = Core.Nothing
    }

instance Core.FromJSON Photo where
  parseJSON =
    Core.withObject
      "Photo"
      ( \o ->
          Photo
            Core.<$> (o Core..:? "captureTime")
            Core.<*> (o Core..:? "connections" Core..!= Core.mempty)
            Core.<*> (o Core..:? "downloadUrl")
            Core.<*> (o Core..:? "mapsPublishStatus")
            Core.<*> (o Core..:? "photoId")
            Core.<*> (o Core..:? "places" Core..!= Core.mempty)
            Core.<*> (o Core..:? "pose")
            Core.<*> (o Core..:? "shareLink")
            Core.<*> (o Core..:? "thumbnailUrl")
            Core.<*> (o Core..:? "transferStatus")
            Core.<*> (o Core..:? "uploadReference")
            Core.<*> (o Core..:? "uploadTime")
            Core.<*> (o Core..:? "viewCount")
      )

instance Core.ToJSON Photo where
  toJSON Photo {..} =
    Core.object
      ( Core.catMaybes
          [ ("captureTime" Core..=) Core.<$> captureTime,
            ("connections" Core..=) Core.<$> connections,
            ("downloadUrl" Core..=) Core.<$> downloadUrl,
            ("mapsPublishStatus" Core..=)
              Core.<$> mapsPublishStatus,
            ("photoId" Core..=) Core.<$> photoId,
            ("places" Core..=) Core.<$> places,
            ("pose" Core..=) Core.<$> pose,
            ("shareLink" Core..=) Core.<$> shareLink,
            ("thumbnailUrl" Core..=) Core.<$> thumbnailUrl,
            ("transferStatus" Core..=) Core.<$> transferStatus,
            ("uploadReference" Core..=) Core.<$> uploadReference,
            ("uploadTime" Core..=) Core.<$> uploadTime,
            ("viewCount" Core..=) Core.. Core.AsText
              Core.<$> viewCount
          ]
      )

-- | Identifier for a Photo.
--
-- /See:/ 'newPhotoId' smart constructor.
newtype PhotoId = PhotoId
  { -- | A unique identifier for a photo.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PhotoId' with the minimum fields required to make a request.
newPhotoId ::
  PhotoId
newPhotoId = PhotoId {id = Core.Nothing}

instance Core.FromJSON PhotoId where
  parseJSON =
    Core.withObject
      "PhotoId"
      (\o -> PhotoId Core.<$> (o Core..:? "id"))

instance Core.ToJSON PhotoId where
  toJSON PhotoId {..} =
    Core.object
      (Core.catMaybes [("id" Core..=) Core.<$> id])

-- | Response payload for a single Photo in batch operations including BatchGetPhotos and BatchUpdatePhotos.
--
-- /See:/ 'newPhotoResponse' smart constructor.
data PhotoResponse = PhotoResponse
  { -- | The Photo resource, if the request was successful.
    photo :: (Core.Maybe Photo),
    -- | The status for the operation to get or update a single photo in the batch request.
    status :: (Core.Maybe Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PhotoResponse' with the minimum fields required to make a request.
newPhotoResponse ::
  PhotoResponse
newPhotoResponse = PhotoResponse {photo = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON PhotoResponse where
  parseJSON =
    Core.withObject
      "PhotoResponse"
      ( \o ->
          PhotoResponse
            Core.<$> (o Core..:? "photo") Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON PhotoResponse where
  toJSON PhotoResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("photo" Core..=) Core.<$> photo,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Place metadata for an entity.
--
-- /See:/ 'newPlace' smart constructor.
data Place = Place
  { -- | Output only. The language/code that the name is localized with. This should be the language/code specified in the request, but may be a fallback.
    languageCode :: (Core.Maybe Core.Text),
    -- | Output only. The name of the place, localized to the language_code.
    name :: (Core.Maybe Core.Text),
    -- | Place identifier, as described in https:\/\/developers.google.com\/places\/place-id.
    placeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Place' with the minimum fields required to make a request.
newPlace ::
  Place
newPlace =
  Place
    { languageCode = Core.Nothing,
      name = Core.Nothing,
      placeId = Core.Nothing
    }

instance Core.FromJSON Place where
  parseJSON =
    Core.withObject
      "Place"
      ( \o ->
          Place
            Core.<$> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "placeId")
      )

instance Core.ToJSON Place where
  toJSON Place {..} =
    Core.object
      ( Core.catMaybes
          [ ("languageCode" Core..=) Core.<$> languageCode,
            ("name" Core..=) Core.<$> name,
            ("placeId" Core..=) Core.<$> placeId
          ]
      )

-- | Raw pose measurement for an entity.
--
-- /See:/ 'newPose' smart constructor.
data Pose = Pose
  { -- | The estimated horizontal accuracy of this pose in meters with 68% confidence (one standard deviation). For example, on Android, this value is available from this method: https:\/\/developer.android.com\/reference\/android\/location\/Location#getAccuracy(). Other platforms have different methods of obtaining similar accuracy estimations.
    accuracyMeters :: (Core.Maybe Core.Double),
    -- | Altitude of the pose in meters above WGS84 ellipsoid. NaN indicates an unmeasured quantity.
    altitude :: (Core.Maybe Core.Double),
    -- | The following pose parameters pertain to the center of the photo. They match https:\/\/developers.google.com\/streetview\/spherical-metadata. Compass heading, measured at the center of the photo in degrees clockwise from North. Value must be >=0 and \<360. NaN indicates an unmeasured quantity.
    heading :: (Core.Maybe Core.Double),
    -- | Latitude and longitude pair of the pose, as explained here: https:\/\/cloud.google.com\/datastore\/docs\/reference\/rest\/Shared.Types\/LatLng When creating a Photo, if the latitude and longitude pair are not provided, the geolocation from the exif header is used. A latitude and longitude pair not provided in the photo or exif header causes the photo process to fail.
    latLngPair :: (Core.Maybe LatLng),
    -- | Level (the floor in a building) used to configure vertical navigation.
    level :: (Core.Maybe Level),
    -- | Pitch, measured at the center of the photo in degrees. Value must be >=-90 and \<= 90. A value of -90 means looking directly down, and a value of 90 means looking directly up. NaN indicates an unmeasured quantity.
    pitch :: (Core.Maybe Core.Double),
    -- | Roll, measured in degrees. Value must be >= 0 and \<360. A value of 0 means level with the horizon. NaN indicates an unmeasured quantity.
    roll :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Pose' with the minimum fields required to make a request.
newPose ::
  Pose
newPose =
  Pose
    { accuracyMeters = Core.Nothing,
      altitude = Core.Nothing,
      heading = Core.Nothing,
      latLngPair = Core.Nothing,
      level = Core.Nothing,
      pitch = Core.Nothing,
      roll = Core.Nothing
    }

instance Core.FromJSON Pose where
  parseJSON =
    Core.withObject
      "Pose"
      ( \o ->
          Pose
            Core.<$> (o Core..:? "accuracyMeters")
            Core.<*> (o Core..:? "altitude")
            Core.<*> (o Core..:? "heading")
            Core.<*> (o Core..:? "latLngPair")
            Core.<*> (o Core..:? "level")
            Core.<*> (o Core..:? "pitch")
            Core.<*> (o Core..:? "roll")
      )

instance Core.ToJSON Pose where
  toJSON Pose {..} =
    Core.object
      ( Core.catMaybes
          [ ("accuracyMeters" Core..=) Core.<$> accuracyMeters,
            ("altitude" Core..=) Core.<$> altitude,
            ("heading" Core..=) Core.<$> heading,
            ("latLngPair" Core..=) Core.<$> latLngPair,
            ("level" Core..=) Core.<$> level,
            ("pitch" Core..=) Core.<$> pitch,
            ("roll" Core..=) Core.<$> roll
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | Request to update the metadata of a Photo. Updating the pixels of a photo is not supported.
--
-- /See:/ 'newUpdatePhotoRequest' smart constructor.
data UpdatePhotoRequest = UpdatePhotoRequest
  { -- | Required. Photo object containing the new metadata.
    photo :: (Core.Maybe Photo),
    -- | Required. Mask that identifies fields on the photo metadata to update. If not present, the old Photo metadata is entirely replaced with the new Photo metadata in this request. The update fails if invalid fields are specified. Multiple fields can be specified in a comma-delimited list. The following fields are valid: * @pose.heading@ * @pose.latLngPair@ * @pose.pitch@ * @pose.roll@ * @pose.level@ * @pose.altitude@ * @connections@ * @places@ > Note: When updateMask contains repeated fields, the entire set of repeated values get replaced with the new contents. For example, if updateMask contains @connections@ and @UpdatePhotoRequest.photo.connections@ is empty, all connections are removed.
    updateMask :: (Core.Maybe Core.GFieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdatePhotoRequest' with the minimum fields required to make a request.
newUpdatePhotoRequest ::
  UpdatePhotoRequest
newUpdatePhotoRequest =
  UpdatePhotoRequest {photo = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON UpdatePhotoRequest where
  parseJSON =
    Core.withObject
      "UpdatePhotoRequest"
      ( \o ->
          UpdatePhotoRequest
            Core.<$> (o Core..:? "photo")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON UpdatePhotoRequest where
  toJSON UpdatePhotoRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("photo" Core..=) Core.<$> photo,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Upload reference for media files.
--
-- /See:/ 'newUploadRef' smart constructor.
newtype UploadRef = UploadRef
  { -- | An upload reference should be unique for each user. It follows the form: \"https:\/\/streetviewpublish.googleapis.com\/media\/user\/{account/id}\/photo\/{upload/reference}\"
    uploadUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UploadRef' with the minimum fields required to make a request.
newUploadRef ::
  UploadRef
newUploadRef = UploadRef {uploadUrl = Core.Nothing}

instance Core.FromJSON UploadRef where
  parseJSON =
    Core.withObject
      "UploadRef"
      (\o -> UploadRef Core.<$> (o Core..:? "uploadUrl"))

instance Core.ToJSON UploadRef where
  toJSON UploadRef {..} =
    Core.object
      ( Core.catMaybes
          [("uploadUrl" Core..=) Core.<$> uploadUrl]
      )
