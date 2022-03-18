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
-- Module      : Network.Google.AppsLicensing.Licensing.LicenseAssignments.ListForProductAndSku
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all users assigned licenses for a specific product SKU.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.listForProductAndSku@.
module Network.Google.AppsLicensing.Licensing.LicenseAssignments.ListForProductAndSku
  ( -- * Resource
    LicensingLicenseAssignmentsListForProductAndSkuResource,

    -- ** Constructing a Request
    newLicensingLicenseAssignmentsListForProductAndSku,
    LicensingLicenseAssignmentsListForProductAndSku,
  )
where

import Network.Google.AppsLicensing.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @licensing.licenseAssignments.listForProductAndSku@ method which the
-- 'LicensingLicenseAssignmentsListForProductAndSku' request conforms to.
type LicensingLicenseAssignmentsListForProductAndSkuResource =
  "apps"
    Core.:> "licensing"
    Core.:> "v1"
    Core.:> "product"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "sku"
    Core.:> Core.Capture "skuId" Core.Text
    Core.:> "users"
    Core.:> Core.QueryParam "customerId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              LicenseAssignmentList

-- | List all users assigned licenses for a specific product SKU.
--
-- /See:/ 'newLicensingLicenseAssignmentsListForProductAndSku' smart constructor.
data LicensingLicenseAssignmentsListForProductAndSku = LicensingLicenseAssignmentsListForProductAndSku
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Customer\'s @customerId@. A previous version of this API accepted the primary domain name as a value for this field. If the customer is suspended, the server returns an error.
    customerId :: Core.Text,
    -- | The @maxResults@ query string determines how many entries are returned on each page of a large response. This is an optional parameter. The value must be a positive number.
    maxResults :: Core.Word32,
    -- | Token to fetch the next page of data. The @maxResults@ query string is related to the @pageToken@ since @maxResults@ determines how many entries are returned on each page. This is an optional query string. If not specified, the server returns the first page.
    pageToken :: Core.Text,
    -- | A product\'s unique identifier. For more information about products in this version of the API, see Products and SKUs.
    productId :: Core.Text,
    -- | A product SKU\'s unique identifier. For more information about available SKUs in this version of the API, see Products and SKUs.
    skuId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LicensingLicenseAssignmentsListForProductAndSku' with the minimum fields required to make a request.
newLicensingLicenseAssignmentsListForProductAndSku ::
  -- |  Customer\'s @customerId@. A previous version of this API accepted the primary domain name as a value for this field. If the customer is suspended, the server returns an error. See 'customerId'.
  Core.Text ->
  -- |  A product\'s unique identifier. For more information about products in this version of the API, see Products and SKUs. See 'productId'.
  Core.Text ->
  -- |  A product SKU\'s unique identifier. For more information about available SKUs in this version of the API, see Products and SKUs. See 'skuId'.
  Core.Text ->
  LicensingLicenseAssignmentsListForProductAndSku
newLicensingLicenseAssignmentsListForProductAndSku customerId productId skuId =
  LicensingLicenseAssignmentsListForProductAndSku
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      maxResults = 100,
      pageToken = "",
      productId = productId,
      skuId = skuId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LicensingLicenseAssignmentsListForProductAndSku
  where
  type
    Rs
      LicensingLicenseAssignmentsListForProductAndSku =
      LicenseAssignmentList
  type
    Scopes
      LicensingLicenseAssignmentsListForProductAndSku =
      '["https://www.googleapis.com/auth/apps.licensing"]
  requestClient
    LicensingLicenseAssignmentsListForProductAndSku {..} =
      go
        productId
        skuId
        (Core.Just customerId)
        xgafv
        accessToken
        callback
        (Core.Just maxResults)
        (Core.Just pageToken)
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        appsLicensingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  LicensingLicenseAssignmentsListForProductAndSkuResource
            )
            Core.mempty
