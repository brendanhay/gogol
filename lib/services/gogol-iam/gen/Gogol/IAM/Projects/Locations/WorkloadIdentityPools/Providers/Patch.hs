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
-- Module      : Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing WorkloadIdentityPoolProvider.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.providers.patch@.
module Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Patch
    (
    -- * Resource
      IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatchResource

    -- ** Constructing a Request
    , newIAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch
    , IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IAM.Types

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.providers.patch@ method which the
-- 'IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch' request conforms to.
type IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatchResource
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
                       Core.ReqBody '[Core.JSON]
                         WorkloadIdentityPoolProvider
                         Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates an existing WorkloadIdentityPoolProvider.
--
-- /See:/ 'newIAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch' smart constructor.
data IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch = IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Output only. The resource name of the provider.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: WorkloadIdentityPoolProvider
      -- | Required. The list of fields to update.
    , updateMask :: (Core.Maybe Core.GFieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch' with the minimum fields required to make a request.
newIAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch 
    ::  Core.Text
       -- ^  Output only. The resource name of the provider. See 'name'.
    -> WorkloadIdentityPoolProvider
       -- ^  Multipart request metadata. See 'payload'.
    -> IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch
newIAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch name payload =
  IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch
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
           IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch
         where
        type Rs
               IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch
             = Operation
        type Scopes
               IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatch{..}
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
                           IAMProjectsLocationsWorkloadIdentityPoolsProvidersPatchResource)
                      Core.mempty

