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
-- Module      : Gogol.AccessApproval.Folders.ApprovalRequests.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists approval requests associated with a project, folder, or organization. Approval requests can be filtered by state (pending, active, dismissed). The order is reverse chronological.
--
-- /See:/ <https://cloud.google.com/cloud-provider-access-management/access-approval/docs Access Approval API Reference> for @accessapproval.folders.approvalRequests.list@.
module Gogol.AccessApproval.Folders.ApprovalRequests.List
  ( -- * Resource
    AccessApprovalFoldersApprovalRequestsListResource,

    -- ** Constructing a Request
    AccessApprovalFoldersApprovalRequestsList (..),
    newAccessApprovalFoldersApprovalRequestsList,
  )
where

import Gogol.AccessApproval.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @accessapproval.folders.approvalRequests.list@ method which the
-- 'AccessApprovalFoldersApprovalRequestsList' request conforms to.
type AccessApprovalFoldersApprovalRequestsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "approvalRequests"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListApprovalRequestsResponse

-- | Lists approval requests associated with a project, folder, or organization. Approval requests can be filtered by state (pending, active, dismissed). The order is reverse chronological.
--
-- /See:/ 'newAccessApprovalFoldersApprovalRequestsList' smart constructor.
data AccessApprovalFoldersApprovalRequestsList = AccessApprovalFoldersApprovalRequestsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A filter on the type of approval requests to retrieve. Must be one of the following values: * [not set]: Requests that are pending or have active approvals. * ALL: All requests. * PENDING: Only pending requests. * ACTIVE: Only active (i.e. currently approved) requests. * DISMISSED: Only requests that have been dismissed, or requests that are not approved and past expiration. * EXPIRED: Only requests that have been approved, and the approval has expired. * HISTORY: Active, dismissed and expired requests.
    filter :: (Core.Maybe Core.Text),
    -- | Requested page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying the page of results to return.
    pageToken :: (Core.Maybe Core.Text),
    -- | The parent resource. This may be \"projects\/{project}\", \"folders\/{folder}\", or \"organizations\/{organization}\".
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalFoldersApprovalRequestsList' with the minimum fields required to make a request.
newAccessApprovalFoldersApprovalRequestsList ::
  -- |  The parent resource. This may be \"projects\/{project}\", \"folders\/{folder}\", or \"organizations\/{organization}\". See 'parent'.
  Core.Text ->
  AccessApprovalFoldersApprovalRequestsList
newAccessApprovalFoldersApprovalRequestsList parent =
  AccessApprovalFoldersApprovalRequestsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AccessApprovalFoldersApprovalRequestsList
  where
  type
    Rs AccessApprovalFoldersApprovalRequestsList =
      ListApprovalRequestsResponse
  type
    Scopes AccessApprovalFoldersApprovalRequestsList =
      '[CloudPlatform'FullControl]
  requestClient
    AccessApprovalFoldersApprovalRequestsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        accessApprovalService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AccessApprovalFoldersApprovalRequestsListResource
            )
            Core.mempty
