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
-- Module      : Network.Google.Billing.Cloudbilling.Projects.UpdateBillingInfo
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets or updates the billing account associated with a project. You specify the new billing account by setting the @billing_account_name@ in the @ProjectBillingInfo@ resource to the resource name of a billing account. Associating a project with an open billing account enables billing on the project and allows charges for resource usage. If the project already had a billing account, this method changes the billing account used for resource usage charges. /Note:/ Incurred charges that have not yet been reported in the transaction history of the Google Cloud Console might be billed to the new billing account, even if the charge occurred before the new billing account was assigned to the project. The current authenticated user must have ownership privileges for both the <https://cloud.google.com/docs/permissions-overview#h.bgs0oxofvnoo project> and the <https://cloud.google.com/billing/docs/how-to/billing-access billing account>. You can disable billing on the project by setting the @billing_account_name@ field to
-- empty. This action disassociates the current billing account from the project. Any billable activity of your in-use services will stop, and your application could stop functioning as expected. Any unbilled charges to date will be billed to the previously associated account. The current authenticated user must be either an owner of the project or an owner of the billing account for the project. Note that associating a project with a /closed/ billing account will have much the same effect as disabling billing on the project: any paid resources used by the project will be shut down. Thus, unless you wish to disable billing, you should always call this method with the name of an /open/ billing account.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.projects.updateBillingInfo@.
module Network.Google.Billing.Cloudbilling.Projects.UpdateBillingInfo
  ( -- * Resource
    CloudbillingProjectsUpdateBillingInfoResource,

    -- ** Constructing a Request
    newCloudbillingProjectsUpdateBillingInfo,
    CloudbillingProjectsUpdateBillingInfo,
  )
where

import Network.Google.Billing.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudbilling.projects.updateBillingInfo@ method which the
-- 'CloudbillingProjectsUpdateBillingInfo' request conforms to.
type CloudbillingProjectsUpdateBillingInfoResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "billingInfo"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ProjectBillingInfo
    Core.:> Core.Put '[Core.JSON] ProjectBillingInfo

-- | Sets or updates the billing account associated with a project. You specify the new billing account by setting the @billing_account_name@ in the @ProjectBillingInfo@ resource to the resource name of a billing account. Associating a project with an open billing account enables billing on the project and allows charges for resource usage. If the project already had a billing account, this method changes the billing account used for resource usage charges. /Note:/ Incurred charges that have not yet been reported in the transaction history of the Google Cloud Console might be billed to the new billing account, even if the charge occurred before the new billing account was assigned to the project. The current authenticated user must have ownership privileges for both the <https://cloud.google.com/docs/permissions-overview#h.bgs0oxofvnoo project> and the <https://cloud.google.com/billing/docs/how-to/billing-access billing account>. You can disable billing on the project by setting the @billing_account_name@ field to
-- empty. This action disassociates the current billing account from the project. Any billable activity of your in-use services will stop, and your application could stop functioning as expected. Any unbilled charges to date will be billed to the previously associated account. The current authenticated user must be either an owner of the project or an owner of the billing account for the project. Note that associating a project with a /closed/ billing account will have much the same effect as disabling billing on the project: any paid resources used by the project will be shut down. Thus, unless you wish to disable billing, you should always call this method with the name of an /open/ billing account.
--
-- /See:/ 'newCloudbillingProjectsUpdateBillingInfo' smart constructor.
data CloudbillingProjectsUpdateBillingInfo = CloudbillingProjectsUpdateBillingInfo
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the project associated with the billing information that you want to update. For example, @projects\/tokyo-rain-123@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ProjectBillingInfo,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingProjectsUpdateBillingInfo' with the minimum fields required to make a request.
newCloudbillingProjectsUpdateBillingInfo ::
  -- |  Required. The resource name of the project associated with the billing information that you want to update. For example, @projects\/tokyo-rain-123@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ProjectBillingInfo ->
  CloudbillingProjectsUpdateBillingInfo
newCloudbillingProjectsUpdateBillingInfo name payload =
  CloudbillingProjectsUpdateBillingInfo
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
    CloudbillingProjectsUpdateBillingInfo
  where
  type
    Rs CloudbillingProjectsUpdateBillingInfo =
      ProjectBillingInfo
  type
    Scopes CloudbillingProjectsUpdateBillingInfo =
      '[ "https://www.googleapis.com/auth/cloud-billing",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient
    CloudbillingProjectsUpdateBillingInfo {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        billingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbillingProjectsUpdateBillingInfoResource
            )
            Core.mempty
