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
-- Module      : Gogol.Compute.Disks.RemoveResourcePolicies
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes resource policies from a disk.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.disks.removeResourcePolicies@.
module Gogol.Compute.Disks.RemoveResourcePolicies
    (
    -- * Resource
      ComputeDisksRemoveResourcePoliciesResource

    -- ** Constructing a Request
    , ComputeDisksRemoveResourcePolicies (..)
    , newComputeDisksRemoveResourcePolicies
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.disks.removeResourcePolicies@ method which the
-- 'ComputeDisksRemoveResourcePolicies' request conforms to.
type ComputeDisksRemoveResourcePoliciesResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "disks" Core.:>
                   Core.Capture "disk" Core.Text Core.:>
                     "removeResourcePolicies" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "requestId" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON]
                                       DisksRemoveResourcePoliciesRequest
                                       Core.:> Core.Post '[Core.JSON] Operation

-- | Removes resource policies from a disk.
--
-- /See:/ 'newComputeDisksRemoveResourcePolicies' smart constructor.
data ComputeDisksRemoveResourcePolicies = ComputeDisksRemoveResourcePolicies
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The disk name for this request.
    , disk :: Core.Text
      -- | Multipart request metadata.
    , payload :: DisksRemoveResourcePoliciesRequest
      -- | Project ID for this request.
    , project :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The name of the zone for this request.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeDisksRemoveResourcePolicies' with the minimum fields required to make a request.
newComputeDisksRemoveResourcePolicies 
    ::  Core.Text
       -- ^  The disk name for this request. See 'disk'.
    -> DisksRemoveResourcePoliciesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  The name of the zone for this request. See 'zone'.
    -> ComputeDisksRemoveResourcePolicies
newComputeDisksRemoveResourcePolicies disk payload project zone =
  ComputeDisksRemoveResourcePolicies
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , disk = disk
    , payload = payload
    , project = project
    , requestId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , zone = zone
    }

instance Core.GoogleRequest
           ComputeDisksRemoveResourcePolicies
         where
        type Rs ComputeDisksRemoveResourcePolicies =
             Operation
        type Scopes ComputeDisksRemoveResourcePolicies =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient ComputeDisksRemoveResourcePolicies{..}
          = go project zone disk xgafv accessToken callback
              requestId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ComputeDisksRemoveResourcePoliciesResource)
                      Core.mempty

