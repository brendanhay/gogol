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
-- Module      : Gogol.Billing.Cloudbilling.BillingAccounts.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a billing account. The caller must have the @billing.accounts.getIamPolicy@ permission on the account, which is often given to billing account <https://cloud.google.com/billing/docs/how-to/billing-access viewers>.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.billingAccounts.getIamPolicy@.
module Gogol.Billing.Cloudbilling.BillingAccounts.GetIamPolicy
  ( -- * Resource
    CloudbillingBillingAccountsGetIamPolicyResource,

    -- ** Constructing a Request
    CloudbillingBillingAccountsGetIamPolicy (..),
    newCloudbillingBillingAccountsGetIamPolicy,
  )
where

import Gogol.Billing.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbilling.billingAccounts.getIamPolicy@ method which the
-- 'CloudbillingBillingAccountsGetIamPolicy' request conforms to.
type CloudbillingBillingAccountsGetIamPolicyResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "getIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "options.requestedPolicyVersion"
              Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Policy

-- | Gets the access control policy for a billing account. The caller must have the @billing.accounts.getIamPolicy@ permission on the account, which is often given to billing account <https://cloud.google.com/billing/docs/how-to/billing-access viewers>.
--
-- /See:/ 'newCloudbillingBillingAccountsGetIamPolicy' smart constructor.
data CloudbillingBillingAccountsGetIamPolicy = CloudbillingBillingAccountsGetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    optionsRequestedPolicyVersion :: (Core.Maybe Core.Int32),
    -- | REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingBillingAccountsGetIamPolicy' with the minimum fields required to make a request.
newCloudbillingBillingAccountsGetIamPolicy ::
  -- |  REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  CloudbillingBillingAccountsGetIamPolicy
newCloudbillingBillingAccountsGetIamPolicy resource =
  CloudbillingBillingAccountsGetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      optionsRequestedPolicyVersion = Core.Nothing,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbillingBillingAccountsGetIamPolicy
  where
  type
    Rs CloudbillingBillingAccountsGetIamPolicy =
      Policy
  type
    Scopes CloudbillingBillingAccountsGetIamPolicy =
      '[ CloudBilling'FullControl,
         CloudBilling'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient
    CloudbillingBillingAccountsGetIamPolicy {..} =
      go
        resource
        xgafv
        accessToken
        callback
        optionsRequestedPolicyVersion
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        billingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbillingBillingAccountsGetIamPolicyResource
            )
            Core.mempty
