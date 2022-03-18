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
-- Module      : Gogol.Compute.RegionCommitments.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified commitment with the data included in the request. Update is performed only on selected fields included as part of update-mask. Only the following fields can be modified: auto_renew.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionCommitments.update@.
module Gogol.Compute.RegionCommitments.Update
    (
    -- * Resource
      ComputeRegionCommitmentsUpdateResource

    -- ** Constructing a Request
    , newComputeRegionCommitmentsUpdate
    , ComputeRegionCommitmentsUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Compute.Types

-- | A resource alias for @compute.regionCommitments.update@ method which the
-- 'ComputeRegionCommitmentsUpdate' request conforms to.
type ComputeRegionCommitmentsUpdateResource =
     "compute" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "regions" Core.:>
               Core.Capture "region" Core.Text Core.:>
                 "commitments" Core.:>
                   Core.Capture "commitment" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParams "paths" Core.Text Core.:>
                             Core.QueryParam "requestId" Core.Text Core.:>
                               Core.QueryParam "updateMask" Core.GFieldMask
                                 Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text
                                     Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.ReqBody '[Core.JSON] Commitment
                                         Core.:>
                                         Core.Patch '[Core.JSON] Operation

-- | Updates the specified commitment with the data included in the request. Update is performed only on selected fields included as part of update-mask. Only the following fields can be modified: auto_renew.
--
-- /See:/ 'newComputeRegionCommitmentsUpdate' smart constructor.
data ComputeRegionCommitmentsUpdate = ComputeRegionCommitmentsUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Name of the commitment for which auto renew is being updated.
    , commitment :: Core.Text
      -- | 
    , paths :: (Core.Maybe [Core.Text])
      -- | Multipart request metadata.
    , payload :: Commitment
      -- | Project ID for this request.
    , project :: Core.Text
      -- | Name of the region for this request.
    , region :: Core.Text
      -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    , requestId :: (Core.Maybe Core.Text)
      -- | update_mask indicates fields to be updated as part of this request.
    , updateMask :: (Core.Maybe Core.GFieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionCommitmentsUpdate' with the minimum fields required to make a request.
newComputeRegionCommitmentsUpdate 
    ::  Core.Text
       -- ^  Name of the commitment for which auto renew is being updated. See 'commitment'.
    -> Commitment
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID for this request. See 'project'.
    -> Core.Text
       -- ^  Name of the region for this request. See 'region'.
    -> ComputeRegionCommitmentsUpdate
newComputeRegionCommitmentsUpdate commitment payload project region =
  ComputeRegionCommitmentsUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , commitment = commitment
    , paths = Core.Nothing
    , payload = payload
    , project = project
    , region = region
    , requestId = Core.Nothing
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ComputeRegionCommitmentsUpdate
         where
        type Rs ComputeRegionCommitmentsUpdate = Operation
        type Scopes ComputeRegionCommitmentsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ComputeRegionCommitmentsUpdate{..}
          = go project region commitment xgafv accessToken
              callback
              (paths Core.^. Core._Default)
              requestId
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              computeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ComputeRegionCommitmentsUpdateResource)
                      Core.mempty

