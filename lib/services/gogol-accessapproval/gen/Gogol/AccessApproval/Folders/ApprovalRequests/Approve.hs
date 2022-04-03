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
-- Module      : Gogol.AccessApproval.Folders.ApprovalRequests.Approve
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Approves a request and returns the updated ApprovalRequest. Returns NOT/FOUND if the request does not exist. Returns FAILED/PRECONDITION if the request exists but is not in a pending state.
--
-- /See:/ <https://cloud.google.com/cloud-provider-access-management/access-approval/docs Access Approval API Reference> for @accessapproval.folders.approvalRequests.approve@.
module Gogol.AccessApproval.Folders.ApprovalRequests.Approve
  ( -- * Resource
    AccessApprovalFoldersApprovalRequestsApproveResource,

    -- ** Constructing a Request
    AccessApprovalFoldersApprovalRequestsApprove (..),
    newAccessApprovalFoldersApprovalRequestsApprove,
  )
where

import Gogol.AccessApproval.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @accessapproval.folders.approvalRequests.approve@ method which the
-- 'AccessApprovalFoldersApprovalRequestsApprove' request conforms to.
type AccessApprovalFoldersApprovalRequestsApproveResource =
  "v1"
    Core.:> Core.CaptureMode "name" "approve" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              ApproveApprovalRequestMessage
    Core.:> Core.Post '[Core.JSON] ApprovalRequest

-- | Approves a request and returns the updated ApprovalRequest. Returns NOT/FOUND if the request does not exist. Returns FAILED/PRECONDITION if the request exists but is not in a pending state.
--
-- /See:/ 'newAccessApprovalFoldersApprovalRequestsApprove' smart constructor.
data AccessApprovalFoldersApprovalRequestsApprove = AccessApprovalFoldersApprovalRequestsApprove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the approval request to approve.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ApproveApprovalRequestMessage,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalFoldersApprovalRequestsApprove' with the minimum fields required to make a request.
newAccessApprovalFoldersApprovalRequestsApprove ::
  -- |  Name of the approval request to approve. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ApproveApprovalRequestMessage ->
  AccessApprovalFoldersApprovalRequestsApprove
newAccessApprovalFoldersApprovalRequestsApprove name payload =
  AccessApprovalFoldersApprovalRequestsApprove
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
    AccessApprovalFoldersApprovalRequestsApprove
  where
  type
    Rs AccessApprovalFoldersApprovalRequestsApprove =
      ApprovalRequest
  type
    Scopes
      AccessApprovalFoldersApprovalRequestsApprove =
      '[CloudPlatform'FullControl]
  requestClient
    AccessApprovalFoldersApprovalRequestsApprove {..} =
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
                Core.Proxy
                  AccessApprovalFoldersApprovalRequestsApproveResource
            )
            Core.mempty
