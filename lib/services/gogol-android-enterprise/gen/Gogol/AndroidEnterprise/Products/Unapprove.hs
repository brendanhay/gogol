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
-- Module      : Gogol.AndroidEnterprise.Products.Unapprove
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unapproves the specified product (and the relevant app permissions, if any) __Note:__ This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.products.unapprove@.
module Gogol.AndroidEnterprise.Products.Unapprove
  ( -- * Resource
    AndroidEnterpriseProductsUnapproveResource,

    -- ** Constructing a Request
    AndroidEnterpriseProductsUnapprove (..),
    newAndroidEnterpriseProductsUnapprove,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.products.unapprove@ method which the
-- 'AndroidEnterpriseProductsUnapprove' request conforms to.
type AndroidEnterpriseProductsUnapproveResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "products"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "unapprove"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Unapproves the specified product (and the relevant app permissions, if any) __Note:__ This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.
--
-- /See:/ 'newAndroidEnterpriseProductsUnapprove' smart constructor.
data AndroidEnterpriseProductsUnapprove = AndroidEnterpriseProductsUnapprove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | The ID of the product.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseProductsUnapprove' with the minimum fields required to make a request.
newAndroidEnterpriseProductsUnapprove ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the product. See 'productId'.
  Core.Text ->
  AndroidEnterpriseProductsUnapprove
newAndroidEnterpriseProductsUnapprove enterpriseId productId =
  AndroidEnterpriseProductsUnapprove
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      productId = productId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseProductsUnapprove
  where
  type Rs AndroidEnterpriseProductsUnapprove = ()
  type
    Scopes AndroidEnterpriseProductsUnapprove =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseProductsUnapprove {..} =
    go
      enterpriseId
      productId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                AndroidEnterpriseProductsUnapproveResource
          )
          Core.mempty
