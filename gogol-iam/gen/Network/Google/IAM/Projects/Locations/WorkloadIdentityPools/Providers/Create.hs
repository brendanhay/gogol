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
-- Module      : Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new WorkloadIdentityPoolProvider in a WorkloadIdentityPool. You cannot reuse the name of a deleted provider until 30 days after deletion.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.providers.create@.
module Network.Google.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Create
  ( -- * Resource
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreateResource,

    -- ** Constructing a Request
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate,
  )
where

import Network.Google.IAM.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.providers.create@ method which the
-- 'IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate' request conforms to.
type IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "providers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam
              "workloadIdentityPoolProviderId"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              WorkloadIdentityPoolProvider
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new WorkloadIdentityPoolProvider in a WorkloadIdentityPool. You cannot reuse the name of a deleted provider until 30 days after deletion.
--
-- /See:/ 'newIAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate' smart constructor.
data IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate = IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The pool to create this provider in.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: WorkloadIdentityPoolProvider,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Required. The ID for the provider, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix @gcp-@ is reserved for use by Google, and may not be specified.
    workloadIdentityPoolProviderId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate' with the minimum fields required to make a request.
newIAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate ::
  -- |  Required. The pool to create this provider in. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WorkloadIdentityPoolProvider ->
  IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate
newIAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate parent payload =
  IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      workloadIdentityPoolProviderId = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate
  where
  type
    Rs
      IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate =
      Operation
  type
    Scopes
      IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        workloadIdentityPoolProviderId
        (Core.Just Core.AltJSON)
        payload
        iAMService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IAMProjectsLocationsWorkloadIdentityPoolsProvidersCreateResource
            )
            Core.mempty
