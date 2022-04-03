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
-- Module      : Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an individual WorkloadIdentityPool.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.get@.
module Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Get
  ( -- * Resource
    IAMProjectsLocationsWorkloadIdentityPoolsGetResource,

    -- ** Constructing a Request
    IAMProjectsLocationsWorkloadIdentityPoolsGet (..),
    newIAMProjectsLocationsWorkloadIdentityPoolsGet,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.get@ method which the
-- 'IAMProjectsLocationsWorkloadIdentityPoolsGet' request conforms to.
type IAMProjectsLocationsWorkloadIdentityPoolsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] WorkloadIdentityPool

-- | Gets an individual WorkloadIdentityPool.
--
-- /See:/ 'newIAMProjectsLocationsWorkloadIdentityPoolsGet' smart constructor.
data IAMProjectsLocationsWorkloadIdentityPoolsGet = IAMProjectsLocationsWorkloadIdentityPoolsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the pool to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsLocationsWorkloadIdentityPoolsGet' with the minimum fields required to make a request.
newIAMProjectsLocationsWorkloadIdentityPoolsGet ::
  -- |  Required. The name of the pool to retrieve. See 'name'.
  Core.Text ->
  IAMProjectsLocationsWorkloadIdentityPoolsGet
newIAMProjectsLocationsWorkloadIdentityPoolsGet name =
  IAMProjectsLocationsWorkloadIdentityPoolsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMProjectsLocationsWorkloadIdentityPoolsGet
  where
  type
    Rs IAMProjectsLocationsWorkloadIdentityPoolsGet =
      WorkloadIdentityPool
  type
    Scopes
      IAMProjectsLocationsWorkloadIdentityPoolsGet =
      '[CloudPlatform'FullControl]
  requestClient
    IAMProjectsLocationsWorkloadIdentityPoolsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        iAMService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IAMProjectsLocationsWorkloadIdentityPoolsGetResource
            )
            Core.mempty
