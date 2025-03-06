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
-- Module      : Gogol.Billing.Cloudbilling.BillingAccounts.Move
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes which parent organization a billing account belongs to.
--
-- /See:/ <https://cloud.google.com/billing/docs/apis Cloud Billing API Reference> for @cloudbilling.billingAccounts.move@.
module Gogol.Billing.Cloudbilling.BillingAccounts.Move
  ( -- * Resource
    CloudbillingBillingAccountsMoveResource,

    -- ** Constructing a Request
    CloudbillingBillingAccountsMove (..),
    newCloudbillingBillingAccountsMove,
  )
where

import Gogol.Billing.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbilling.billingAccounts.move@ method which the
-- 'CloudbillingBillingAccountsMove' request conforms to.
type CloudbillingBillingAccountsMoveResource =
  "v1"
    Core.:> Core.CaptureMode "name" "move" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] MoveBillingAccountRequest
    Core.:> Core.Post '[Core.JSON] BillingAccount

-- | Changes which parent organization a billing account belongs to.
--
-- /See:/ 'newCloudbillingBillingAccountsMove' smart constructor.
data CloudbillingBillingAccountsMove = CloudbillingBillingAccountsMove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the billing account to move. Must be of the form @billingAccounts\/{billing_account_id}@. The specified billing account cannot be a subaccount, since a subaccount always belongs to the same organization as its parent account.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: MoveBillingAccountRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingBillingAccountsMove' with the minimum fields required to make a request.
newCloudbillingBillingAccountsMove ::
  -- |  Required. The resource name of the billing account to move. Must be of the form @billingAccounts\/{billing_account_id}@. The specified billing account cannot be a subaccount, since a subaccount always belongs to the same organization as its parent account. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  MoveBillingAccountRequest ->
  CloudbillingBillingAccountsMove
newCloudbillingBillingAccountsMove name payload =
  CloudbillingBillingAccountsMove
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudbillingBillingAccountsMove where
  type Rs CloudbillingBillingAccountsMove = BillingAccount
  type
    Scopes CloudbillingBillingAccountsMove =
      '[CloudBilling'FullControl, CloudPlatform'FullControl]
  requestClient CloudbillingBillingAccountsMove {..} =
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
          (Core.Proxy :: Core.Proxy CloudbillingBillingAccountsMoveResource)
          Core.mempty
