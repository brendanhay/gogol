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
-- Module      : Gogol.Compute.RegionInstantSnapshots.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified InstantSnapshot resource in the specified region.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionInstantSnapshots.get@.
module Gogol.Compute.RegionInstantSnapshots.Get
    (
    -- * Resource
      ComputeRegionInstantSnapshotsGetResource

    -- ** Constructing a Request
    , ComputeRegionInstantSnapshotsGet (..)
    , newComputeRegionInstantSnapshotsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.regionInstantSnapshots.get@ method which the
-- 'ComputeRegionInstantSnapshotsGet' request conforms to.
type ComputeRegionInstantSnapshotsGetResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "instantSnapshots" Core.:>
                   Core.Capture "instantSnapshot" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] InstantSnapshot

-- | Returns the specified InstantSnapshot resource in the specified region.
--
-- /See:/ 'newComputeRegionInstantSnapshotsGet' smart constructor.
data ComputeRegionInstantSnapshotsGet = ComputeRegionInstantSnapshotsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the InstantSnapshot resource to return.
    , instantSnapshot :: Core.Text
      -- | Project ID for this request.
    , project :: Core.Text
      -- | The name of the region for this request.
    , region :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionInstantSnapshotsGet' with the minimum fields required to make a request.
newComputeRegionInstantSnapshotsGet 
    ::  Core.Text
       -- ^  Name of the InstantSnapshot resource to return. See 'instantSnapshot'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the region for this request. See 'region'.
    -> ComputeRegionInstantSnapshotsGet
newComputeRegionInstantSnapshotsGet instantSnapshot project region =
  ComputeRegionInstantSnapshotsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , instantSnapshot = instantSnapshot
    , project = project
    , region = region
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeRegionInstantSnapshotsGet
         where
        type Rs ComputeRegionInstantSnapshotsGet =
             InstantSnapshot
        type Scopes ComputeRegionInstantSnapshotsGet =
             '[CloudPlatform'FullControl, Compute'FullControl,
               Compute'Readonly]
        requestClient ComputeRegionInstantSnapshotsGet{..}
          = go project region instantSnapshot xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeRegionInstantSnapshotsGetResource)
                      Core.mempty

