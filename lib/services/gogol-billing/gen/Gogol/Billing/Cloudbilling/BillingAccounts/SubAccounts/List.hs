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
-- Module      : Gogol.Billing.Cloudbilling.BillingAccounts.SubAccounts.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the billing accounts that the current authenticated user has permission to <https://cloud.google.com/billing/docs/how-to/billing-access view>.
--
-- /See:/ <https://cloud.google.com/billing/docs/apis Cloud Billing API Reference> for @cloudbilling.billingAccounts.subAccounts.list@.
module Gogol.Billing.Cloudbilling.BillingAccounts.SubAccounts.List
  ( -- * Resource
    CloudbillingBillingAccountsSubAccountsListResource,

    -- ** Constructing a Request
    CloudbillingBillingAccountsSubAccountsList (..),
    newCloudbillingBillingAccountsSubAccountsList,
  )
where

import Gogol.Billing.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudbilling.billingAccounts.subAccounts.list@ method which the
-- 'CloudbillingBillingAccountsSubAccountsList' request conforms to.
type CloudbillingBillingAccountsSubAccountsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "subAccounts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBillingAccountsResponse

-- | Lists the billing accounts that the current authenticated user has permission to <https://cloud.google.com/billing/docs/how-to/billing-access view>.
--
-- /See:/ 'newCloudbillingBillingAccountsSubAccountsList' smart constructor.
data CloudbillingBillingAccountsSubAccountsList = CloudbillingBillingAccountsSubAccountsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Options for how to filter the returned billing accounts. This only supports filtering for <https://cloud.google.com/billing/docs/concepts subaccounts> under a single provided parent billing account. (for example, @master_billing_account=billingAccounts\/012345-678901-ABCDEF@). Boolean algebra and other fields are not currently supported.
    filter :: (Core.Maybe Core.Text),
    -- | Requested page size. The maximum page size is 100; this is also the default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results to return. This should be a @next_page_token@ value returned from a previous @ListBillingAccounts@ call. If unspecified, the first page of results is returned.
    pageToken :: (Core.Maybe Core.Text),
    -- | Optional. The parent resource to list billing accounts from. Format: - @organizations\/{organization_id}@, for example, @organizations\/12345678@ - @billingAccounts\/{billing_account_id}@, for example, @billingAccounts\/012345-567890-ABCDEF@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingBillingAccountsSubAccountsList' with the minimum fields required to make a request.
newCloudbillingBillingAccountsSubAccountsList ::
  -- |  Optional. The parent resource to list billing accounts from. Format: - @organizations\/{organization_id}@, for example, @organizations\/12345678@ - @billingAccounts\/{billing_account_id}@, for example, @billingAccounts\/012345-567890-ABCDEF@ See 'parent'.
  Core.Text ->
  CloudbillingBillingAccountsSubAccountsList
newCloudbillingBillingAccountsSubAccountsList parent =
  CloudbillingBillingAccountsSubAccountsList
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
    CloudbillingBillingAccountsSubAccountsList
  where
  type
    Rs CloudbillingBillingAccountsSubAccountsList =
      ListBillingAccountsResponse
  type
    Scopes CloudbillingBillingAccountsSubAccountsList =
      '[ CloudBilling'FullControl,
         CloudBilling'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient CloudbillingBillingAccountsSubAccountsList {..} =
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
      billingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbillingBillingAccountsSubAccountsListResource
          )
          Core.mempty
