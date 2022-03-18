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
-- Module      : Network.Google.Billing.Cloudbilling.BillingAccounts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the billing accounts that the current authenticated user has permission to <https://cloud.google.com/billing/docs/how-to/billing-access view>.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.billingAccounts.list@.
module Network.Google.Billing.Cloudbilling.BillingAccounts.List
  ( -- * Resource
    CloudbillingBillingAccountsListResource,

    -- ** Constructing a Request
    newCloudbillingBillingAccountsList,
    CloudbillingBillingAccountsList,
  )
where

import Network.Google.Billing.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudbilling.billingAccounts.list@ method which the
-- 'CloudbillingBillingAccountsList' request conforms to.
type CloudbillingBillingAccountsListResource =
  "v1"
    Core.:> "billingAccounts"
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
-- /See:/ 'newCloudbillingBillingAccountsList' smart constructor.
data CloudbillingBillingAccountsList = CloudbillingBillingAccountsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Options for how to filter the returned billing accounts. Currently this only supports filtering for <https://cloud.google.com/billing/docs/concepts subaccounts> under a single provided reseller billing account. (e.g. \"master/billing/account=billingAccounts\/012345-678901-ABCDEF\"). Boolean algebra and other fields are not currently supported.
    filter :: (Core.Maybe Core.Text),
    -- | Requested page size. The maximum page size is 100; this is also the default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results to return. This should be a @next_page_token@ value returned from a previous @ListBillingAccounts@ call. If unspecified, the first page of results is returned.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingBillingAccountsList' with the minimum fields required to make a request.
newCloudbillingBillingAccountsList ::
  CloudbillingBillingAccountsList
newCloudbillingBillingAccountsList =
  CloudbillingBillingAccountsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbillingBillingAccountsList
  where
  type
    Rs CloudbillingBillingAccountsList =
      ListBillingAccountsResponse
  type
    Scopes CloudbillingBillingAccountsList =
      '[ "https://www.googleapis.com/auth/cloud-billing",
         "https://www.googleapis.com/auth/cloud-billing.readonly",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient CloudbillingBillingAccountsList {..} =
    go
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
              Core.Proxy CloudbillingBillingAccountsListResource
          )
          Core.mempty
