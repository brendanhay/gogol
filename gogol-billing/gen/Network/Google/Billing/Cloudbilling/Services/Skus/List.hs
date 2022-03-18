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
-- Module      : Network.Google.Billing.Cloudbilling.Services.Skus.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all publicly available SKUs for a given cloud service.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.services.skus.list@.
module Network.Google.Billing.Cloudbilling.Services.Skus.List
  ( -- * Resource
    CloudbillingServicesSkusListResource,

    -- ** Constructing a Request
    newCloudbillingServicesSkusList,
    CloudbillingServicesSkusList,
  )
where

import Network.Google.Billing.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudbilling.services.skus.list@ method which the
-- 'CloudbillingServicesSkusList' request conforms to.
type CloudbillingServicesSkusListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "skus"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "currencyCode" Core.Text
    Core.:> Core.QueryParam "endTime" Core.DateTime'
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startTime" Core.DateTime'
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSkusResponse

-- | Lists all publicly available SKUs for a given cloud service.
--
-- /See:/ 'newCloudbillingServicesSkusList' smart constructor.
data CloudbillingServicesSkusList = CloudbillingServicesSkusList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ISO 4217 currency code for the pricing info in the response proto. Will use the conversion rate as of start_time. Optional. If not specified USD will be used.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Optional exclusive end time of the time range for which the pricing versions will be returned. Timestamps in the future are not allowed. The time range has to be within a single calendar month in America\/Los_Angeles timezone. Time range as a whole is optional. If not specified, the latest pricing will be returned (up to 12 hours old at most).
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Requested page size. Defaults to 5000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results to return. This should be a @next_page_token@ value returned from a previous @ListSkus@ call. If unspecified, the first page of results is returned.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the service. Example: \"services\/DA34-426B-A397\"
    parent :: Core.Text,
    -- | Optional inclusive start time of the time range for which the pricing versions will be returned. Timestamps in the future are not allowed. The time range has to be within a single calendar month in America\/Los_Angeles timezone. Time range as a whole is optional. If not specified, the latest pricing will be returned (up to 12 hours old at most).
    startTime :: (Core.Maybe Core.DateTime'),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingServicesSkusList' with the minimum fields required to make a request.
newCloudbillingServicesSkusList ::
  -- |  Required. The name of the service. Example: \"services\/DA34-426B-A397\" See 'parent'.
  Core.Text ->
  CloudbillingServicesSkusList
newCloudbillingServicesSkusList parent =
  CloudbillingServicesSkusList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      currencyCode = Core.Nothing,
      endTime = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      startTime = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbillingServicesSkusList
  where
  type
    Rs CloudbillingServicesSkusList =
      ListSkusResponse
  type
    Scopes CloudbillingServicesSkusList =
      '[ "https://www.googleapis.com/auth/cloud-billing",
         "https://www.googleapis.com/auth/cloud-billing.readonly",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient CloudbillingServicesSkusList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      currencyCode
      endTime
      pageSize
      pageToken
      startTime
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      billingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbillingServicesSkusListResource
          )
          Core.mempty
