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
-- Module      : Gogol.Billing.Cloudbilling.Projects.GetBillingInfo
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the billing information for a project. The current authenticated user must have the @resourcemanager.projects.get@ permission for the project, which can be granted by assigning the <https://cloud.google.com/iam/docs/understanding-roles#predefined_roles Project Viewer> role.
--
-- /See:/ <https://cloud.google.com/billing/docs/apis Cloud Billing API Reference> for @cloudbilling.projects.getBillingInfo@.
module Gogol.Billing.Cloudbilling.Projects.GetBillingInfo
  ( -- * Resource
    CloudbillingProjectsGetBillingInfoResource,

    -- ** Constructing a Request
    CloudbillingProjectsGetBillingInfo (..),
    newCloudbillingProjectsGetBillingInfo,
  )
where

import Gogol.Billing.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbilling.projects.getBillingInfo@ method which the
-- 'CloudbillingProjectsGetBillingInfo' request conforms to.
type CloudbillingProjectsGetBillingInfoResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "billingInfo"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ProjectBillingInfo

-- | Gets the billing information for a project. The current authenticated user must have the @resourcemanager.projects.get@ permission for the project, which can be granted by assigning the <https://cloud.google.com/iam/docs/understanding-roles#predefined_roles Project Viewer> role.
--
-- /See:/ 'newCloudbillingProjectsGetBillingInfo' smart constructor.
data CloudbillingProjectsGetBillingInfo = CloudbillingProjectsGetBillingInfo
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the project for which billing information is retrieved. For example, @projects\/tokyo-rain-123@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingProjectsGetBillingInfo' with the minimum fields required to make a request.
newCloudbillingProjectsGetBillingInfo ::
  -- |  Required. The resource name of the project for which billing information is retrieved. For example, @projects\/tokyo-rain-123@. See 'name'.
  Core.Text ->
  CloudbillingProjectsGetBillingInfo
newCloudbillingProjectsGetBillingInfo name =
  CloudbillingProjectsGetBillingInfo
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudbillingProjectsGetBillingInfo where
  type Rs CloudbillingProjectsGetBillingInfo = ProjectBillingInfo
  type
    Scopes CloudbillingProjectsGetBillingInfo =
      '[ CloudBilling'FullControl,
         CloudBilling'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient CloudbillingProjectsGetBillingInfo {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      billingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbillingProjectsGetBillingInfoResource
          )
          Core.mempty
