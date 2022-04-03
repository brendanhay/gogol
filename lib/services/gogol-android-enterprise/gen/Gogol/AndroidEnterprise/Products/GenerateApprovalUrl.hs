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
-- Module      : Gogol.AndroidEnterprise.Products.GenerateApprovalUrl
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a URL that can be rendered in an iframe to display the permissions (if any) of a product. An enterprise admin must view these permissions and accept them on behalf of their organization in order to approve that product. Admins should accept the displayed permissions by interacting with a separate UI element in the EMM console, which in turn should trigger the use of this URL as the approvalUrlInfo.approvalUrl property in a Products.approve call to approve the product. This URL can only be used to display permissions for up to 1 day.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.products.generateApprovalUrl@.
module Gogol.AndroidEnterprise.Products.GenerateApprovalUrl
  ( -- * Resource
    AndroidEnterpriseProductsGenerateApprovalUrlResource,

    -- ** Constructing a Request
    AndroidEnterpriseProductsGenerateApprovalUrl (..),
    newAndroidEnterpriseProductsGenerateApprovalUrl,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.products.generateApprovalUrl@ method which the
-- 'AndroidEnterpriseProductsGenerateApprovalUrl' request conforms to.
type AndroidEnterpriseProductsGenerateApprovalUrlResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "products"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "generateApprovalUrl"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post
              '[Core.JSON]
              ProductsGenerateApprovalUrlResponse

-- | Generates a URL that can be rendered in an iframe to display the permissions (if any) of a product. An enterprise admin must view these permissions and accept them on behalf of their organization in order to approve that product. Admins should accept the displayed permissions by interacting with a separate UI element in the EMM console, which in turn should trigger the use of this URL as the approvalUrlInfo.approvalUrl property in a Products.approve call to approve the product. This URL can only be used to display permissions for up to 1 day.
--
-- /See:/ 'newAndroidEnterpriseProductsGenerateApprovalUrl' smart constructor.
data AndroidEnterpriseProductsGenerateApprovalUrl = AndroidEnterpriseProductsGenerateApprovalUrl
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | The BCP 47 language code used for permission names and descriptions in the returned iframe, for instance \"en-US\".
    languageCode :: (Core.Maybe Core.Text),
    -- | The ID of the product.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseProductsGenerateApprovalUrl' with the minimum fields required to make a request.
newAndroidEnterpriseProductsGenerateApprovalUrl ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the product. See 'productId'.
  Core.Text ->
  AndroidEnterpriseProductsGenerateApprovalUrl
newAndroidEnterpriseProductsGenerateApprovalUrl enterpriseId productId =
  AndroidEnterpriseProductsGenerateApprovalUrl
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      languageCode = Core.Nothing,
      productId = productId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseProductsGenerateApprovalUrl
  where
  type
    Rs AndroidEnterpriseProductsGenerateApprovalUrl =
      ProductsGenerateApprovalUrlResponse
  type
    Scopes
      AndroidEnterpriseProductsGenerateApprovalUrl =
      '[Androidenterprise'FullControl]
  requestClient
    AndroidEnterpriseProductsGenerateApprovalUrl {..} =
      go
        enterpriseId
        productId
        xgafv
        accessToken
        callback
        languageCode
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidEnterpriseService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidEnterpriseProductsGenerateApprovalUrlResource
            )
            Core.mempty
