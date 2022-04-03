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
-- Module      : Gogol.Compute.Regions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified Region resource. Gets a list of available regions by making a list() request. To decrease latency for this method, you can optionally omit any unneeded information from the response by using a field mask. This practice is especially recommended for unused quota information (the @quotas@ field). To exclude one or more fields, set your request\'s @fields@ query parameter to only include the fields you need. For example, to only include the @id@ and @selfLink@ fields, add the query parameter @?fields=id,selfLink@ to your request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regions.get@.
module Gogol.Compute.Regions.Get
  ( -- * Resource
    ComputeRegionsGetResource,

    -- ** Constructing a Request
    ComputeRegionsGet (..),
    newComputeRegionsGet,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.regions.get@ method which the
-- 'ComputeRegionsGet' request conforms to.
type ComputeRegionsGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Region

-- | Returns the specified Region resource. Gets a list of available regions by making a list() request. To decrease latency for this method, you can optionally omit any unneeded information from the response by using a field mask. This practice is especially recommended for unused quota information (the @quotas@ field). To exclude one or more fields, set your request\'s @fields@ query parameter to only include the fields you need. For example, to only include the @id@ and @selfLink@ fields, add the query parameter @?fields=id,selfLink@ to your request.
--
-- /See:/ 'newComputeRegionsGet' smart constructor.
data ComputeRegionsGet = ComputeRegionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region resource to return.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionsGet' with the minimum fields required to make a request.
newComputeRegionsGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region resource to return. See 'region'.
  Core.Text ->
  ComputeRegionsGet
newComputeRegionsGet project region =
  ComputeRegionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeRegionsGet where
  type Rs ComputeRegionsGet = Region
  type
    Scopes ComputeRegionsGet =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputeRegionsGet {..} =
    go
      project
      region
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ComputeRegionsGetResource)
          Core.mempty
