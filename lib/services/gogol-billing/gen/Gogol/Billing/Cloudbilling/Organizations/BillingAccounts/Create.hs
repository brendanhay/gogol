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
-- Module      : Gogol.Billing.Cloudbilling.Organizations.BillingAccounts.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This method creates <https://cloud.google.com/billing/docs/concepts#subaccounts billing subaccounts>. Google Cloud resellers should use the Channel Services APIs, <https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers/create accounts.customers.create> and <https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers.entitlements/create accounts.customers.entitlements.create>. When creating a subaccount, the current authenticated user must have the @billing.accounts.update@ IAM permission on the parent account, which is typically given to billing account <https://cloud.google.com/billing/docs/how-to/billing-access administrators>. This method will return an error if the parent account has not been provisioned for subaccounts.
--
-- /See:/ <https://cloud.google.com/billing/docs/apis Cloud Billing API Reference> for @cloudbilling.organizations.billingAccounts.create@.
module Gogol.Billing.Cloudbilling.Organizations.BillingAccounts.Create
  ( -- * Resource
    CloudbillingOrganizationsBillingAccountsCreateResource,

    -- ** Constructing a Request
    CloudbillingOrganizationsBillingAccountsCreate (..),
    newCloudbillingOrganizationsBillingAccountsCreate,
  )
where

import Gogol.Billing.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbilling.organizations.billingAccounts.create@ method which the
-- 'CloudbillingOrganizationsBillingAccountsCreate' request conforms to.
type CloudbillingOrganizationsBillingAccountsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "billingAccounts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BillingAccount
    Core.:> Core.Post '[Core.JSON] BillingAccount

-- | This method creates <https://cloud.google.com/billing/docs/concepts#subaccounts billing subaccounts>. Google Cloud resellers should use the Channel Services APIs, <https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers/create accounts.customers.create> and <https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers.entitlements/create accounts.customers.entitlements.create>. When creating a subaccount, the current authenticated user must have the @billing.accounts.update@ IAM permission on the parent account, which is typically given to billing account <https://cloud.google.com/billing/docs/how-to/billing-access administrators>. This method will return an error if the parent account has not been provisioned for subaccounts.
--
-- /See:/ 'newCloudbillingOrganizationsBillingAccountsCreate' smart constructor.
data CloudbillingOrganizationsBillingAccountsCreate = CloudbillingOrganizationsBillingAccountsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The parent to create a billing account from. Format: - @billingAccounts\/{billing_account_id}@, for example, @billingAccounts\/012345-567890-ABCDEF@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: BillingAccount,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingOrganizationsBillingAccountsCreate' with the minimum fields required to make a request.
newCloudbillingOrganizationsBillingAccountsCreate ::
  -- |  Optional. The parent to create a billing account from. Format: - @billingAccounts\/{billing_account_id}@, for example, @billingAccounts\/012345-567890-ABCDEF@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BillingAccount ->
  CloudbillingOrganizationsBillingAccountsCreate
newCloudbillingOrganizationsBillingAccountsCreate parent payload =
  CloudbillingOrganizationsBillingAccountsCreate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbillingOrganizationsBillingAccountsCreate
  where
  type
    Rs CloudbillingOrganizationsBillingAccountsCreate =
      BillingAccount
  type
    Scopes CloudbillingOrganizationsBillingAccountsCreate =
      '[CloudBilling'FullControl, CloudPlatform'FullControl]
  requestClient CloudbillingOrganizationsBillingAccountsCreate {..} =
    go
      parent
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
              Core.Proxy CloudbillingOrganizationsBillingAccountsCreateResource
          )
          Core.mempty
