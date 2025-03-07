{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AccessApproval.Folders.ApprovalRequests.Dismiss
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Dismisses a request. Returns the updated ApprovalRequest. NOTE: This does not deny access to the resource if another request has been made and approved. It is equivalent in effect to ignoring the request altogether. Returns NOT/FOUND if the request does not exist. Returns FAILED/PRECONDITION if the request exists but is not in a pending state.
--
-- /See:/ <https://cloud.google.com/assured-workloads/access-approval/docs Access Approval API Reference> for @accessapproval.folders.approvalRequests.dismiss@.
module Gogol.AccessApproval.Folders.ApprovalRequests.Dismiss
  ( -- * Resource
    AccessApprovalFoldersApprovalRequestsDismissResource,

    -- ** Constructing a Request
    AccessApprovalFoldersApprovalRequestsDismiss (..),
    newAccessApprovalFoldersApprovalRequestsDismiss,
  )
where

import Gogol.AccessApproval.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @accessapproval.folders.approvalRequests.dismiss@ method which the
-- 'AccessApprovalFoldersApprovalRequestsDismiss' request conforms to.
type AccessApprovalFoldersApprovalRequestsDismissResource =
  "v1"
    Core.:> Core.CaptureMode "name" "dismiss" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DismissApprovalRequestMessage
    Core.:> Core.Post '[Core.JSON] ApprovalRequest

-- | Dismisses a request. Returns the updated ApprovalRequest. NOTE: This does not deny access to the resource if another request has been made and approved. It is equivalent in effect to ignoring the request altogether. Returns NOT/FOUND if the request does not exist. Returns FAILED/PRECONDITION if the request exists but is not in a pending state.
--
-- /See:/ 'newAccessApprovalFoldersApprovalRequestsDismiss' smart constructor.
data AccessApprovalFoldersApprovalRequestsDismiss = AccessApprovalFoldersApprovalRequestsDismiss
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the ApprovalRequest to dismiss.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: DismissApprovalRequestMessage,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalFoldersApprovalRequestsDismiss' with the minimum fields required to make a request.
newAccessApprovalFoldersApprovalRequestsDismiss ::
  -- |  Name of the ApprovalRequest to dismiss. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DismissApprovalRequestMessage ->
  AccessApprovalFoldersApprovalRequestsDismiss
newAccessApprovalFoldersApprovalRequestsDismiss name payload =
  AccessApprovalFoldersApprovalRequestsDismiss
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
    AccessApprovalFoldersApprovalRequestsDismiss
  where
  type
    Rs AccessApprovalFoldersApprovalRequestsDismiss =
      ApprovalRequest
  type
    Scopes AccessApprovalFoldersApprovalRequestsDismiss =
      '[CloudPlatform'FullControl]
  requestClient AccessApprovalFoldersApprovalRequestsDismiss {..} =
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
              Core.Proxy AccessApprovalFoldersApprovalRequestsDismissResource
          )
          Core.mempty
