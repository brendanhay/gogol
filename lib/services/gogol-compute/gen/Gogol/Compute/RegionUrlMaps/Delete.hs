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
-- Module      : Gogol.Compute.RegionUrlMaps.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified UrlMap resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionUrlMaps.delete@.
module Gogol.Compute.RegionUrlMaps.Delete
  ( -- * Resource
    ComputeRegionUrlMapsDeleteResource,

    -- ** Constructing a Request
    ComputeRegionUrlMapsDelete (..),
    newComputeRegionUrlMapsDelete,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.regionUrlMaps.delete@ method which the
-- 'ComputeRegionUrlMapsDelete' request conforms to.
type ComputeRegionUrlMapsDeleteResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "urlMaps"
    Core.:> Core.Capture "urlMap" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes the specified UrlMap resource.
--
-- /See:/ 'newComputeRegionUrlMapsDelete' smart constructor.
data ComputeRegionUrlMapsDelete = ComputeRegionUrlMapsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | begin_interface: MixerMutationRequestBuilder Request ID to support idempotency.
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Name of the UrlMap resource to delete.
    urlMap :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionUrlMapsDelete' with the minimum fields required to make a request.
newComputeRegionUrlMapsDelete ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  -- |  Name of the UrlMap resource to delete. See 'urlMap'.
  Core.Text ->
  ComputeRegionUrlMapsDelete
newComputeRegionUrlMapsDelete project region urlMap =
  ComputeRegionUrlMapsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      region = region,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      urlMap = urlMap
    }

instance
  Core.GoogleRequest
    ComputeRegionUrlMapsDelete
  where
  type Rs ComputeRegionUrlMapsDelete = Operation
  type
    Scopes ComputeRegionUrlMapsDelete =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient ComputeRegionUrlMapsDelete {..} =
    go
      project
      region
      urlMap
      xgafv
      accessToken
      callback
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeRegionUrlMapsDeleteResource
          )
          Core.mempty
