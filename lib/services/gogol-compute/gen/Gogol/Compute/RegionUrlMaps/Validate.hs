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
-- Module      : Gogol.Compute.RegionUrlMaps.Validate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs static validation for the UrlMap. In particular, the tests of the provided UrlMap will be run. Calling this method does NOT create the UrlMap.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionUrlMaps.validate@.
module Gogol.Compute.RegionUrlMaps.Validate
  ( -- * Resource
    ComputeRegionUrlMapsValidateResource,

    -- ** Constructing a Request
    ComputeRegionUrlMapsValidate (..),
    newComputeRegionUrlMapsValidate,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.regionUrlMaps.validate@ method which the
-- 'ComputeRegionUrlMapsValidate' request conforms to.
type ComputeRegionUrlMapsValidateResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "urlMaps"
    Core.:> Core.Capture "urlMap" Core.Text
    Core.:> "validate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              RegionUrlMapsValidateRequest
    Core.:> Core.Post
              '[Core.JSON]
              UrlMapsValidateResponse

-- | Runs static validation for the UrlMap. In particular, the tests of the provided UrlMap will be run. Calling this method does NOT create the UrlMap.
--
-- /See:/ 'newComputeRegionUrlMapsValidate' smart constructor.
data ComputeRegionUrlMapsValidate = ComputeRegionUrlMapsValidate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: RegionUrlMapsValidateRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Name of the UrlMap resource to be validated as.
    urlMap :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionUrlMapsValidate' with the minimum fields required to make a request.
newComputeRegionUrlMapsValidate ::
  -- |  Multipart request metadata. See 'payload'.
  RegionUrlMapsValidateRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  -- |  Name of the UrlMap resource to be validated as. See 'urlMap'.
  Core.Text ->
  ComputeRegionUrlMapsValidate
newComputeRegionUrlMapsValidate payload project region urlMap =
  ComputeRegionUrlMapsValidate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      urlMap = urlMap
    }

instance
  Core.GoogleRequest
    ComputeRegionUrlMapsValidate
  where
  type
    Rs ComputeRegionUrlMapsValidate =
      UrlMapsValidateResponse
  type
    Scopes ComputeRegionUrlMapsValidate =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeRegionUrlMapsValidate {..} =
    go
      project
      region
      urlMap
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeRegionUrlMapsValidateResource
          )
          Core.mempty
