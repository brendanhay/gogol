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
-- Module      : Network.Google.AccessApproval.Organizations.GetServiceAccount
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the service account that is used by Access Approval to access KMS keys for signing approved approval requests.
--
-- /See:/ <https://cloud.google.com/cloud-provider-access-management/access-approval/docs Access Approval API Reference> for @accessapproval.organizations.getServiceAccount@.
module Network.Google.AccessApproval.Organizations.GetServiceAccount
  ( -- * Resource
    AccessApprovalOrganizationsGetServiceAccountResource,

    -- ** Constructing a Request
    newAccessApprovalOrganizationsGetServiceAccount,
    AccessApprovalOrganizationsGetServiceAccount,
  )
where

import Network.Google.AccessApproval.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @accessapproval.organizations.getServiceAccount@ method which the
-- 'AccessApprovalOrganizationsGetServiceAccount' request conforms to.
type AccessApprovalOrganizationsGetServiceAccountResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AccessApprovalServiceAccount

-- | Retrieves the service account that is used by Access Approval to access KMS keys for signing approved approval requests.
--
-- /See:/ 'newAccessApprovalOrganizationsGetServiceAccount' smart constructor.
data AccessApprovalOrganizationsGetServiceAccount = AccessApprovalOrganizationsGetServiceAccount
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the AccessApprovalServiceAccount to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalOrganizationsGetServiceAccount' with the minimum fields required to make a request.
newAccessApprovalOrganizationsGetServiceAccount ::
  -- |  Name of the AccessApprovalServiceAccount to retrieve. See 'name'.
  Core.Text ->
  AccessApprovalOrganizationsGetServiceAccount
newAccessApprovalOrganizationsGetServiceAccount name =
  AccessApprovalOrganizationsGetServiceAccount
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AccessApprovalOrganizationsGetServiceAccount
  where
  type
    Rs AccessApprovalOrganizationsGetServiceAccount =
      AccessApprovalServiceAccount
  type
    Scopes
      AccessApprovalOrganizationsGetServiceAccount =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    AccessApprovalOrganizationsGetServiceAccount {..} =
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
                  AccessApprovalOrganizationsGetServiceAccountResource
            )
            Core.mempty
