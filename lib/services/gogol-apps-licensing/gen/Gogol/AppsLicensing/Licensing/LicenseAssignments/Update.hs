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
-- Module      : Gogol.AppsLicensing.Licensing.LicenseAssignments.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reassign a user\'s product SKU with a different SKU in the same product.
--
-- /See:/ <https://developers.google.com/admin-sdk/licensing/ Enterprise License Manager API Reference> for @licensing.licenseAssignments.update@.
module Gogol.AppsLicensing.Licensing.LicenseAssignments.Update
  ( -- * Resource
    LicensingLicenseAssignmentsUpdateResource,

    -- ** Constructing a Request
    LicensingLicenseAssignmentsUpdate (..),
    newLicensingLicenseAssignmentsUpdate,
  )
where

import Gogol.AppsLicensing.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @licensing.licenseAssignments.update@ method which the
-- 'LicensingLicenseAssignmentsUpdate' request conforms to.
type LicensingLicenseAssignmentsUpdateResource =
  "apps"
    Core.:> "licensing"
    Core.:> "v1"
    Core.:> "product"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "sku"
    Core.:> Core.Capture "skuId" Core.Text
    Core.:> "user"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LicenseAssignment
    Core.:> Core.Put '[Core.JSON] LicenseAssignment

-- | Reassign a user\'s product SKU with a different SKU in the same product.
--
-- /See:/ 'newLicensingLicenseAssignmentsUpdate' smart constructor.
data LicensingLicenseAssignmentsUpdate = LicensingLicenseAssignmentsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: LicenseAssignment,
    -- | A product\'s unique identifier. For more information about products in this version of the API, see Products and SKUs.
    productId :: Core.Text,
    -- | A product SKU\'s unique identifier. For more information about available SKUs in this version of the API, see Products and SKUs.
    skuId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user\'s current primary email address. If the user\'s email address changes, use the new email address in your API requests. Since a @userId@ is subject to change, do not use a @userId@ value as a key for persistent data. This key could break if the current user\'s email address changes. If the @userId@ is suspended, the license status changes.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LicensingLicenseAssignmentsUpdate' with the minimum fields required to make a request.
newLicensingLicenseAssignmentsUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  LicenseAssignment ->
  -- |  A product\'s unique identifier. For more information about products in this version of the API, see Products and SKUs. See 'productId'.
  Core.Text ->
  -- |  A product SKU\'s unique identifier. For more information about available SKUs in this version of the API, see Products and SKUs. See 'skuId'.
  Core.Text ->
  -- |  The user\'s current primary email address. If the user\'s email address changes, use the new email address in your API requests. Since a @userId@ is subject to change, do not use a @userId@ value as a key for persistent data. This key could break if the current user\'s email address changes. If the @userId@ is suspended, the license status changes. See 'userId'.
  Core.Text ->
  LicensingLicenseAssignmentsUpdate
newLicensingLicenseAssignmentsUpdate payload productId skuId userId =
  LicensingLicenseAssignmentsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      productId = productId,
      skuId = skuId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance Core.GoogleRequest LicensingLicenseAssignmentsUpdate where
  type Rs LicensingLicenseAssignmentsUpdate = LicenseAssignment
  type Scopes LicensingLicenseAssignmentsUpdate = '[Apps'Licensing]
  requestClient LicensingLicenseAssignmentsUpdate {..} =
    go
      productId
      skuId
      userId
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
              Core.Proxy LicensingLicenseAssignmentsUpdateResource
          )
          Core.mempty
