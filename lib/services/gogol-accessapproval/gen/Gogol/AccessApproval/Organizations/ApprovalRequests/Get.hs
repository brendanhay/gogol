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
-- Module      : Gogol.AccessApproval.Organizations.ApprovalRequests.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an approval request. Returns NOT_FOUND if the request does not exist.
--
-- /See:/ <https://cloud.google.com/cloud-provider-access-management/access-approval/docs Access Approval API Reference> for @accessapproval.organizations.approvalRequests.get@.
module Gogol.AccessApproval.Organizations.ApprovalRequests.Get
  ( -- * Resource
    AccessApprovalOrganizationsApprovalRequestsGetResource,

    -- ** Constructing a Request
    AccessApprovalOrganizationsApprovalRequestsGet (..),
    newAccessApprovalOrganizationsApprovalRequestsGet,
  )
where

import Gogol.AccessApproval.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @accessapproval.organizations.approvalRequests.get@ method which the
-- 'AccessApprovalOrganizationsApprovalRequestsGet' request conforms to.
type AccessApprovalOrganizationsApprovalRequestsGetResource =
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
-- /See:/ 'newAccessApprovalOrganizationsApprovalRequestsGet' smart constructor.
data AccessApprovalOrganizationsApprovalRequestsGet = AccessApprovalOrganizationsApprovalRequestsGet
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

-- | Creates a value of 'AccessApprovalOrganizationsApprovalRequestsGet' with the minimum fields required to make a request.
newAccessApprovalOrganizationsApprovalRequestsGet ::
  -- |  The name of the approval request to retrieve. Format: \"{projects|folders|organizations}\/{id}\/approvalRequests\/{approval_request}\" See 'name'.
  Core.Text ->
  AccessApprovalOrganizationsApprovalRequestsGet
newAccessApprovalOrganizationsApprovalRequestsGet name =
  AccessApprovalOrganizationsApprovalRequestsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AccessApprovalOrganizationsApprovalRequestsGet
  where
  type
    Rs
      AccessApprovalOrganizationsApprovalRequestsGet =
      ApprovalRequest
  type
    Scopes
      AccessApprovalOrganizationsApprovalRequestsGet =
      '[CloudPlatform'FullControl]
  requestClient
    AccessApprovalOrganizationsApprovalRequestsGet {..} =
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
                Core.Proxy
                  AccessApprovalOrganizationsApprovalRequestsGetResource
            )
            Core.mempty
