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
-- Module      : Gogol.AccessApproval.Projects.ApprovalRequests.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an approval request. Returns NOT_FOUND if the request does not exist.
--
-- /See:/ <https://cloud.google.com/assured-workloads/access-approval/docs Access Approval API Reference> for @accessapproval.projects.approvalRequests.get@.
module Gogol.AccessApproval.Projects.ApprovalRequests.Get
  ( -- * Resource
    AccessApprovalProjectsApprovalRequestsGetResource,

    -- ** Constructing a Request
    AccessApprovalProjectsApprovalRequestsGet (..),
    newAccessApprovalProjectsApprovalRequestsGet,
  )
where

import Gogol.AccessApproval.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @accessapproval.projects.approvalRequests.get@ method which the
-- 'AccessApprovalProjectsApprovalRequestsGet' request conforms to.
type AccessApprovalProjectsApprovalRequestsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ApprovalRequest

-- | Gets an approval request. Returns NOT_FOUND if the request does not exist.
--
-- /See:/ 'newAccessApprovalProjectsApprovalRequestsGet' smart constructor.
data AccessApprovalProjectsApprovalRequestsGet = AccessApprovalProjectsApprovalRequestsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the approval request to retrieve. Format: \"{projects|folders|organizations}\/{id}\/approvalRequests\/{approval_request}\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalProjectsApprovalRequestsGet' with the minimum fields required to make a request.
newAccessApprovalProjectsApprovalRequestsGet ::
  -- |  The name of the approval request to retrieve. Format: \"{projects|folders|organizations}\/{id}\/approvalRequests\/{approval_request}\" See 'name'.
  Core.Text ->
  AccessApprovalProjectsApprovalRequestsGet
newAccessApprovalProjectsApprovalRequestsGet name =
  AccessApprovalProjectsApprovalRequestsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AccessApprovalProjectsApprovalRequestsGet
  where
  type Rs AccessApprovalProjectsApprovalRequestsGet = ApprovalRequest
  type
    Scopes AccessApprovalProjectsApprovalRequestsGet =
      '[CloudPlatform'FullControl]
  requestClient AccessApprovalProjectsApprovalRequestsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      accessApprovalService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AccessApprovalProjectsApprovalRequestsGetResource
          )
          Core.mempty
