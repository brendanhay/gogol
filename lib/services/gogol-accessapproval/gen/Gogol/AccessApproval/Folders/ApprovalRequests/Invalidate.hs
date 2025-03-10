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
-- Module      : Gogol.AccessApproval.Folders.ApprovalRequests.Invalidate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Invalidates an existing ApprovalRequest. Returns the updated ApprovalRequest. NOTE: This does not deny access to the resource if another request has been made and approved. It only invalidates a single approval. Returns FAILED_PRECONDITION if the request exists but is not in an approved state.
--
-- /See:/ <https://cloud.google.com/assured-workloads/access-approval/docs Access Approval API Reference> for @accessapproval.folders.approvalRequests.invalidate@.
module Gogol.AccessApproval.Folders.ApprovalRequests.Invalidate
  ( -- * Resource
    AccessApprovalFoldersApprovalRequestsInvalidateResource,

    -- ** Constructing a Request
    AccessApprovalFoldersApprovalRequestsInvalidate (..),
    newAccessApprovalFoldersApprovalRequestsInvalidate,
  )
where

import Gogol.AccessApproval.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @accessapproval.folders.approvalRequests.invalidate@ method which the
-- 'AccessApprovalFoldersApprovalRequestsInvalidate' request conforms to.
type AccessApprovalFoldersApprovalRequestsInvalidateResource =
  "v1"
    Core.:> Core.CaptureMode "name" "invalidate" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InvalidateApprovalRequestMessage
    Core.:> Core.Post '[Core.JSON] ApprovalRequest

-- | Invalidates an existing ApprovalRequest. Returns the updated ApprovalRequest. NOTE: This does not deny access to the resource if another request has been made and approved. It only invalidates a single approval. Returns FAILED_PRECONDITION if the request exists but is not in an approved state.
--
-- /See:/ 'newAccessApprovalFoldersApprovalRequestsInvalidate' smart constructor.
data AccessApprovalFoldersApprovalRequestsInvalidate = AccessApprovalFoldersApprovalRequestsInvalidate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the ApprovalRequest to invalidate.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: InvalidateApprovalRequestMessage,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalFoldersApprovalRequestsInvalidate' with the minimum fields required to make a request.
newAccessApprovalFoldersApprovalRequestsInvalidate ::
  -- |  Name of the ApprovalRequest to invalidate. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InvalidateApprovalRequestMessage ->
  AccessApprovalFoldersApprovalRequestsInvalidate
newAccessApprovalFoldersApprovalRequestsInvalidate name payload =
  AccessApprovalFoldersApprovalRequestsInvalidate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AccessApprovalFoldersApprovalRequestsInvalidate
  where
  type
    Rs AccessApprovalFoldersApprovalRequestsInvalidate =
      ApprovalRequest
  type
    Scopes AccessApprovalFoldersApprovalRequestsInvalidate =
      '[CloudPlatform'FullControl]
  requestClient AccessApprovalFoldersApprovalRequestsInvalidate {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      accessApprovalService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AccessApprovalFoldersApprovalRequestsInvalidateResource
          )
          Core.mempty
