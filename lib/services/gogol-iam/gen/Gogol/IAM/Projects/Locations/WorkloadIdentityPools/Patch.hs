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
-- Module      : Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing WorkloadIdentityPool.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.patch@.
module Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Patch
    (
    -- * Resource
      IAMProjectsLocationsWorkloadIdentityPoolsPatchResource

    -- ** Constructing a Request
    , newIAMProjectsLocationsWorkloadIdentityPoolsPatch
    , IAMProjectsLocationsWorkloadIdentityPoolsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IAM.Types

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.patch@ method which the
-- 'IAMProjectsLocationsWorkloadIdentityPoolsPatch' request conforms to.
type IAMProjectsLocationsWorkloadIdentityPoolsPatchResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.GFieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] WorkloadIdentityPool
                         Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates an existing WorkloadIdentityPool.
--
-- /See:/ 'newIAMProjectsLocationsWorkloadIdentityPoolsPatch' smart constructor.
data IAMProjectsLocationsWorkloadIdentityPoolsPatch = IAMProjectsLocationsWorkloadIdentityPoolsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Output only. The resource name of the pool.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: WorkloadIdentityPool
      -- | Required. The list of fields to update.
    , updateMask :: (Core.Maybe Core.GFieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsLocationsWorkloadIdentityPoolsPatch' with the minimum fields required to make a request.
newIAMProjectsLocationsWorkloadIdentityPoolsPatch 
    ::  Core.Text
       -- ^  Output only. The resource name of the pool. See 'name'.
    -> WorkloadIdentityPool
       -- ^  Multipart request metadata. See 'payload'.
    -> IAMProjectsLocationsWorkloadIdentityPoolsPatch
newIAMProjectsLocationsWorkloadIdentityPoolsPatch name payload =
  IAMProjectsLocationsWorkloadIdentityPoolsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           IAMProjectsLocationsWorkloadIdentityPoolsPatch
         where
        type Rs
               IAMProjectsLocationsWorkloadIdentityPoolsPatch
             = Operation
        type Scopes
               IAMProjectsLocationsWorkloadIdentityPoolsPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          IAMProjectsLocationsWorkloadIdentityPoolsPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              iAMService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IAMProjectsLocationsWorkloadIdentityPoolsPatchResource)
                      Core.mempty

