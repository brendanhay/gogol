{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SourceRepo.Projects.Repos.SetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the IAM policy on the specified resource. Replaces any existing policy.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.setIamPolicy@.
module Gogol.SourceRepo.Projects.Repos.SetIamPolicy
  ( -- * Resource
    SourceRepoProjectsReposSetIamPolicyResource,

    -- ** Constructing a Request
    SourceRepoProjectsReposSetIamPolicy (..),
    newSourceRepoProjectsReposSetIamPolicy,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.setIamPolicy@ method which the
-- 'SourceRepoProjectsReposSetIamPolicy' request conforms to.
type SourceRepoProjectsReposSetIamPolicyResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "setIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Sets the IAM policy on the specified resource. Replaces any existing policy.
--
-- /See:/ 'newSourceRepoProjectsReposSetIamPolicy' smart constructor.
data SourceRepoProjectsReposSetIamPolicy = SourceRepoProjectsReposSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceRepoProjectsReposSetIamPolicy' with the minimum fields required to make a request.
newSourceRepoProjectsReposSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  SetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
  Core.Text ->
  SourceRepoProjectsReposSetIamPolicy
newSourceRepoProjectsReposSetIamPolicy payload resource =
  SourceRepoProjectsReposSetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SourceRepoProjectsReposSetIamPolicy where
  type Rs SourceRepoProjectsReposSetIamPolicy = Policy
  type
    Scopes SourceRepoProjectsReposSetIamPolicy =
      '[CloudPlatform'FullControl, Source'FullControl]
  requestClient SourceRepoProjectsReposSetIamPolicy {..} =
    go
      resource
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      sourceRepoService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SourceRepoProjectsReposSetIamPolicyResource
          )
          Core.mempty
