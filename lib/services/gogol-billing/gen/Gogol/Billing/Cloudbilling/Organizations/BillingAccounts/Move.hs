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
-- Module      : Gogol.Billing.Cloudbilling.Organizations.BillingAccounts.Move
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes which parent organization a billing account belongs to.
--
-- /See:/ <https://cloud.google.com/billing/docs/apis Cloud Billing API Reference> for @cloudbilling.organizations.billingAccounts.move@.
module Gogol.Billing.Cloudbilling.Organizations.BillingAccounts.Move
  ( -- * Resource
    CloudbillingOrganizationsBillingAccountsMoveResource,

    -- ** Constructing a Request
    CloudbillingOrganizationsBillingAccountsMove (..),
    newCloudbillingOrganizationsBillingAccountsMove,
  )
where

import Gogol.Billing.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbilling.organizations.billingAccounts.move@ method which the
-- 'CloudbillingOrganizationsBillingAccountsMove' request conforms to.
type CloudbillingOrganizationsBillingAccountsMoveResource =
  "v1"
    Core.:> Core.Capture "destinationParent" Core.Text
    Core.:> Core.CaptureMode "name" "move" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] BillingAccount

-- | Changes which parent organization a billing account belongs to.
--
-- /See:/ 'newCloudbillingOrganizationsBillingAccountsMove' smart constructor.
data CloudbillingOrganizationsBillingAccountsMove = CloudbillingOrganizationsBillingAccountsMove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Organization to move the billing account under. Must be of the form @organizations\/{organization_id}@.
    destinationParent :: Core.Text,
    -- | Required. The resource name of the billing account to move. Must be of the form @billingAccounts\/{billing_account_id}@. The specified billing account cannot be a subaccount, since a subaccount always belongs to the same organization as its parent account.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingOrganizationsBillingAccountsMove' with the minimum fields required to make a request.
newCloudbillingOrganizationsBillingAccountsMove ::
  -- |  Required. The resource name of the Organization to move the billing account under. Must be of the form @organizations\/{organization_id}@. See 'destinationParent'.
  Core.Text ->
  -- |  Required. The resource name of the billing account to move. Must be of the form @billingAccounts\/{billing_account_id}@. The specified billing account cannot be a subaccount, since a subaccount always belongs to the same organization as its parent account. See 'name'.
  Core.Text ->
  CloudbillingOrganizationsBillingAccountsMove
newCloudbillingOrganizationsBillingAccountsMove
  destinationParent
  name =
    CloudbillingOrganizationsBillingAccountsMove
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        destinationParent = destinationParent,
        name = name,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudbillingOrganizationsBillingAccountsMove
  where
  type
    Rs CloudbillingOrganizationsBillingAccountsMove =
      BillingAccount
  type
    Scopes CloudbillingOrganizationsBillingAccountsMove =
      '[CloudBilling'FullControl, CloudPlatform'FullControl]
  requestClient CloudbillingOrganizationsBillingAccountsMove {..} =
    go
      destinationParent
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
              Core.Proxy CloudbillingOrganizationsBillingAccountsMoveResource
          )
          Core.mempty
