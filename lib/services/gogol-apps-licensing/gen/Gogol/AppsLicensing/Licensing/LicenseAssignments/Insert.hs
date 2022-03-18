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
-- Module      : Gogol.AppsLicensing.Licensing.LicenseAssignments.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Assign a license.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.insert@.
module Gogol.AppsLicensing.Licensing.LicenseAssignments.Insert
  ( -- * Resource
    LicensingLicenseAssignmentsInsertResource,

    -- ** Constructing a Request
    newLicensingLicenseAssignmentsInsert,
    LicensingLicenseAssignmentsInsert,
  )
where

import Gogol.AppsLicensing.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @licensing.licenseAssignments.insert@ method which the
-- 'LicensingLicenseAssignmentsInsert' request conforms to.
type LicensingLicenseAssignmentsInsertResource =
  "apps"
    Core.:> "licensing"
    Core.:> "v1"
    Core.:> "product"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "sku"
    Core.:> Core.Capture "skuId" Core.Text
    Core.:> "user"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              LicenseAssignmentInsert
    Core.:> Core.Post '[Core.JSON] LicenseAssignment

-- | Assign a license.
--
-- /See:/ 'newLicensingLicenseAssignmentsInsert' smart constructor.
data LicensingLicenseAssignmentsInsert = LicensingLicenseAssignmentsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: LicenseAssignmentInsert,
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

-- | Creates a value of 'LicensingLicenseAssignmentsInsert' with the minimum fields required to make a request.
newLicensingLicenseAssignmentsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  LicenseAssignmentInsert ->
  -- |  A product\'s unique identifier. For more information about products in this version of the API, see Products and SKUs. See 'productId'.
  Core.Text ->
  -- |  A product SKU\'s unique identifier. For more information about available SKUs in this version of the API, see Products and SKUs. See 'skuId'.
  Core.Text ->
  LicensingLicenseAssignmentsInsert
newLicensingLicenseAssignmentsInsert payload productId skuId =
  LicensingLicenseAssignmentsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      productId = productId,
      skuId = skuId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LicensingLicenseAssignmentsInsert
  where
  type
    Rs LicensingLicenseAssignmentsInsert =
      LicenseAssignment
  type
    Scopes LicensingLicenseAssignmentsInsert =
      '["https://www.googleapis.com/auth/apps.licensing"]
  requestClient LicensingLicenseAssignmentsInsert {..} =
    go
      productId
      skuId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      appsLicensingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LicensingLicenseAssignmentsInsertResource
          )
          Core.mempty
