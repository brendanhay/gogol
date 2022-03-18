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
-- Module      : Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new WorkloadIdentityPool. You cannot reuse the name of a deleted pool until 30 days after deletion.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.create@.
module Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Create
    (
    -- * Resource
      IAMProjectsLocationsWorkloadIdentityPoolsCreateResource

    -- ** Constructing a Request
    , newIAMProjectsLocationsWorkloadIdentityPoolsCreate
    , IAMProjectsLocationsWorkloadIdentityPoolsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IAM.Types

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.create@ method which the
-- 'IAMProjectsLocationsWorkloadIdentityPoolsCreate' request conforms to.
type IAMProjectsLocationsWorkloadIdentityPoolsCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "workloadIdentityPools" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "workloadIdentityPoolId" Core.Text
                       Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] WorkloadIdentityPool
                           Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new WorkloadIdentityPool. You cannot reuse the name of a deleted pool until 30 days after deletion.
--
-- /See:/ 'newIAMProjectsLocationsWorkloadIdentityPoolsCreate' smart constructor.
data IAMProjectsLocationsWorkloadIdentityPoolsCreate = IAMProjectsLocationsWorkloadIdentityPoolsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent resource to create the pool in. The only supported location is @global@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: WorkloadIdentityPool
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Required. The ID to use for the pool, which becomes the final component of the resource name. This value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix @gcp-@ is reserved for use by Google, and may not be specified.
    , workloadIdentityPoolId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsLocationsWorkloadIdentityPoolsCreate' with the minimum fields required to make a request.
newIAMProjectsLocationsWorkloadIdentityPoolsCreate 
    ::  Core.Text
       -- ^  Required. The parent resource to create the pool in. The only supported location is @global@. See 'parent'.
    -> WorkloadIdentityPool
       -- ^  Multipart request metadata. See 'payload'.
    -> IAMProjectsLocationsWorkloadIdentityPoolsCreate
newIAMProjectsLocationsWorkloadIdentityPoolsCreate parent payload =
  IAMProjectsLocationsWorkloadIdentityPoolsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , workloadIdentityPoolId = Core.Nothing
    }

instance Core.GoogleRequest
           IAMProjectsLocationsWorkloadIdentityPoolsCreate
         where
        type Rs
               IAMProjectsLocationsWorkloadIdentityPoolsCreate
             = Operation
        type Scopes
               IAMProjectsLocationsWorkloadIdentityPoolsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          IAMProjectsLocationsWorkloadIdentityPoolsCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              workloadIdentityPoolId
              (Core.Just Core.AltJSON)
              payload
              iAMService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IAMProjectsLocationsWorkloadIdentityPoolsCreateResource)
                      Core.mempty

