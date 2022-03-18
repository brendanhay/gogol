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
-- Module      : Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Undelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a WorkloadIdentityPool, as long as it was deleted fewer than 30 days ago.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.undelete@.
module Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Undelete
  ( -- * Resource
    IAMProjectsLocationsWorkloadIdentityPoolsUndeleteResource,

    -- ** Constructing a Request
    newIAMProjectsLocationsWorkloadIdentityPoolsUndelete,
    IAMProjectsLocationsWorkloadIdentityPoolsUndelete,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.undelete@ method which the
-- 'IAMProjectsLocationsWorkloadIdentityPoolsUndelete' request conforms to.
type IAMProjectsLocationsWorkloadIdentityPoolsUndeleteResource =
  "v1"
    Core.:> Core.CaptureMode "name" "undelete" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              UndeleteWorkloadIdentityPoolRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Undeletes a WorkloadIdentityPool, as long as it was deleted fewer than 30 days ago.
--
-- /See:/ 'newIAMProjectsLocationsWorkloadIdentityPoolsUndelete' smart constructor.
data IAMProjectsLocationsWorkloadIdentityPoolsUndelete = IAMProjectsLocationsWorkloadIdentityPoolsUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the pool to undelete.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UndeleteWorkloadIdentityPoolRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsLocationsWorkloadIdentityPoolsUndelete' with the minimum fields required to make a request.
newIAMProjectsLocationsWorkloadIdentityPoolsUndelete ::
  -- |  Required. The name of the pool to undelete. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UndeleteWorkloadIdentityPoolRequest ->
  IAMProjectsLocationsWorkloadIdentityPoolsUndelete
newIAMProjectsLocationsWorkloadIdentityPoolsUndelete name payload =
  IAMProjectsLocationsWorkloadIdentityPoolsUndelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMProjectsLocationsWorkloadIdentityPoolsUndelete
  where
  type
    Rs
      IAMProjectsLocationsWorkloadIdentityPoolsUndelete =
      Operation
  type
    Scopes
      IAMProjectsLocationsWorkloadIdentityPoolsUndelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    IAMProjectsLocationsWorkloadIdentityPoolsUndelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        iAMService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IAMProjectsLocationsWorkloadIdentityPoolsUndeleteResource
            )
            Core.mempty
