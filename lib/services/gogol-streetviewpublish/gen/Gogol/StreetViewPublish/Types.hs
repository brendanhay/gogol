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
-- Module      : Gogol.StreetViewPublish.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.StreetViewPublish.Types
    (
    -- * Configuration
      streetViewPublishService

    -- * OAuth Scopes
    , streetViewPublishScope

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

import qualified Gogol.Prelude as Core
import Gogol.StreetViewPublish.Internal.Product
import Gogol.StreetViewPublish.Internal.Sum

-- | Default request referring to version @v1@ of the Street View Publish API. This contains the host and root path used as a starting point for constructing service requests.
streetViewPublishService :: Core.ServiceConfig
streetViewPublishService
  = Core.defaultService
      (Core.ServiceId "streetviewpublish:v1")
      "streetviewpublish.googleapis.com"

-- | Publish and manage your 360 photos on Google Street View
streetViewPublishScope :: Core.Proxy '["https://www.googleapis.com/auth/streetviewpublish"]
streetViewPublishScope = Core.Proxy
