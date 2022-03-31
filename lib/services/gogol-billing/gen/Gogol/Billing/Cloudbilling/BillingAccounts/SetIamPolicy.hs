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
-- Module      : Gogol.Billing.Cloudbilling.BillingAccounts.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy for a billing account. Replaces any existing policy. The caller must have the @billing.accounts.setIamPolicy@ permission on the account, which is often given to billing account <https://cloud.google.com/billing/docs/how-to/billing-access administrators>.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.billingAccounts.setIamPolicy@.
module Gogol.Billing.Cloudbilling.BillingAccounts.SetIamPolicy
  ( -- * Resource
    CloudbillingBillingAccountsSetIamPolicyResource,

    -- ** Constructing a Request
    newCloudbillingBillingAccountsSetIamPolicy,
    CloudbillingBillingAccountsSetIamPolicy,
  )
where

import Gogol.Billing.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbilling.billingAccounts.setIamPolicy@ method which the
-- 'CloudbillingBillingAccountsSetIamPolicy' request conforms to.
type CloudbillingBillingAccountsSetIamPolicyResource =
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

-- | Sets the access control policy for a billing account. Replaces any existing policy. The caller must have the @billing.accounts.setIamPolicy@ permission on the account, which is often given to billing account <https://cloud.google.com/billing/docs/how-to/billing-access administrators>.
--
-- /See:/ 'newCloudbillingBillingAccountsSetIamPolicy' smart constructor.
data CloudbillingBillingAccountsSetIamPolicy = CloudbillingBillingAccountsSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingBillingAccountsSetIamPolicy' with the minimum fields required to make a request.
newCloudbillingBillingAccountsSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  SetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  CloudbillingBillingAccountsSetIamPolicy
newCloudbillingBillingAccountsSetIamPolicy payload resource =
  CloudbillingBillingAccountsSetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbillingBillingAccountsSetIamPolicy
  where
  type
    Rs CloudbillingBillingAccountsSetIamPolicy =
      Policy
  type
    Scopes CloudbillingBillingAccountsSetIamPolicy =
      '[ CloudBilling'FullControl,
         CloudPlatform'FullControl
       ]
  requestClient
    CloudbillingBillingAccountsSetIamPolicy {..} =
      go
        resource
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
                  CloudbillingBillingAccountsSetIamPolicyResource
            )
            Core.mempty
