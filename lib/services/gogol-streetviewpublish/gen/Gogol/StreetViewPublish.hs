{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.StreetViewPublish
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes 360 photos to Google Maps, along with position, orientation, and connectivity metadata. Apps can offer an interface for positioning, connecting, and uploading user-generated Street View images.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference>
module Gogol.StreetViewPublish
    (
    -- * Configuration
      streetViewPublishService

    -- * OAuth Scopes
    , streetViewPublishScope

    -- * Resources

    -- ** streetviewpublish.photo.create
    , StreetViewPublishPhotoCreateResource
    , newStreetViewPublishPhotoCreate
    , StreetViewPublishPhotoCreate

    -- ** streetviewpublish.photo.delete
    , StreetViewPublishPhotoDeleteResource
    , newStreetViewPublishPhotoDelete
    , StreetViewPublishPhotoDelete

    -- ** streetviewpublish.photo.get
    , StreetViewPublishPhotoGetResource
    , newStreetViewPublishPhotoGet
    , StreetViewPublishPhotoGet

    -- ** streetviewpublish.photo.startUpload
    , StreetViewPublishPhotoStartUploadResource
    , newStreetViewPublishPhotoStartUpload
    , StreetViewPublishPhotoStartUpload

    -- ** streetviewpublish.photo.update
    , StreetViewPublishPhotoUpdateResource
    , newStreetViewPublishPhotoUpdate
    , StreetViewPublishPhotoUpdate

    -- ** streetviewpublish.photos.batchDelete
    , StreetViewPublishPhotosBatchDeleteResource
    , newStreetViewPublishPhotosBatchDelete
    , StreetViewPublishPhotosBatchDelete

    -- ** streetviewpublish.photos.batchGet
    , StreetViewPublishPhotosBatchGetResource
    , newStreetViewPublishPhotosBatchGet
    , StreetViewPublishPhotosBatchGet

    -- ** streetviewpublish.photos.batchUpdate
    , StreetViewPublishPhotosBatchUpdateResource
    , newStreetViewPublishPhotosBatchUpdate
    , StreetViewPublishPhotosBatchUpdate

    -- ** streetviewpublish.photos.list
    , StreetViewPublishPhotosListResource
    , newStreetViewPublishPhotosList
    , StreetViewPublishPhotosList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** BatchDeletePhotosRequest
    , BatchDeletePhotosRequest (..)
    , newBatchDeletePhotosRequest

    -- ** BatchDeletePhotosResponse
    , BatchDeletePhotosResponse (..)
    , newBatchDeletePhotosResponse

    -- ** BatchGetPhotosResponse
    , BatchGetPhotosResponse (..)
    , newBatchGetPhotosResponse

    -- ** BatchUpdatePhotosRequest
    , BatchUpdatePhotosRequest (..)
    , newBatchUpdatePhotosRequest

    -- ** BatchUpdatePhotosResponse
    , BatchUpdatePhotosResponse (..)
    , newBatchUpdatePhotosResponse

    -- ** Connection
    , Connection (..)
    , newConnection

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** LatLng
    , LatLng (..)
    , newLatLng

    -- ** Level
    , Level (..)
    , newLevel

    -- ** ListPhotosResponse
    , ListPhotosResponse (..)
    , newListPhotosResponse

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** Photo
    , Photo (..)
    , newPhoto

    -- ** Photo_MapsPublishStatus
    , Photo_MapsPublishStatus (..)

    -- ** Photo_TransferStatus
    , Photo_TransferStatus (..)

    -- ** PhotoId
    , PhotoId (..)
    , newPhotoId

    -- ** PhotoResponse
    , PhotoResponse (..)
    , newPhotoResponse

    -- ** Place
    , Place (..)
    , newPlace

    -- ** Pose
    , Pose (..)
    , newPose

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** UpdatePhotoRequest
    , UpdatePhotoRequest (..)
    , newUpdatePhotoRequest

    -- ** UploadRef
    , UploadRef (..)
    , newUploadRef

    -- ** PhotoGetView
    , PhotoGetView (..)

    -- ** PhotosBatchGetView
    , PhotosBatchGetView (..)

    -- ** PhotosListView
    , PhotosListView (..)
    ) where

import Gogol.StreetViewPublish.Photo.Create
import Gogol.StreetViewPublish.Photo.Delete
import Gogol.StreetViewPublish.Photo.Get
import Gogol.StreetViewPublish.Photo.StartUpload
import Gogol.StreetViewPublish.Photo.Update
import Gogol.StreetViewPublish.Photos.BatchDelete
import Gogol.StreetViewPublish.Photos.BatchGet
import Gogol.StreetViewPublish.Photos.BatchUpdate
import Gogol.StreetViewPublish.Photos.List
import Gogol.StreetViewPublish.Types
