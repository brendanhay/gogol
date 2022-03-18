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
-- Module      : Gogol.AndroidEnterprise.Products.GetAppRestrictionsSchema
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the schema that defines the configurable properties for this product. All products have a schema, but this schema may be empty if no managed configurations have been defined. This schema can be used to populate a UI that allows an admin to configure the product. To apply a managed configuration based on the schema obtained using this API, see Managed Configurations through Play.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.products.getAppRestrictionsSchema@.
module Gogol.AndroidEnterprise.Products.GetAppRestrictionsSchema
  ( -- * Resource
    AndroidEnterpriseProductsGetAppRestrictionsSchemaResource,

    -- ** Constructing a Request
    newAndroidEnterpriseProductsGetAppRestrictionsSchema,
    AndroidEnterpriseProductsGetAppRestrictionsSchema,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.products.getAppRestrictionsSchema@ method which the
-- 'AndroidEnterpriseProductsGetAppRestrictionsSchema' request conforms to.
type AndroidEnterpriseProductsGetAppRestrictionsSchemaResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "products"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "appRestrictionsSchema"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AppRestrictionsSchema

-- | Retrieves the schema that defines the configurable properties for this product. All products have a schema, but this schema may be empty if no managed configurations have been defined. This schema can be used to populate a UI that allows an admin to configure the product. To apply a managed configuration based on the schema obtained using this API, see Managed Configurations through Play.
--
-- /See:/ 'newAndroidEnterpriseProductsGetAppRestrictionsSchema' smart constructor.
data AndroidEnterpriseProductsGetAppRestrictionsSchema = AndroidEnterpriseProductsGetAppRestrictionsSchema
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\", \"de\").
    language :: (Core.Maybe Core.Text),
    -- | The ID of the product.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseProductsGetAppRestrictionsSchema' with the minimum fields required to make a request.
newAndroidEnterpriseProductsGetAppRestrictionsSchema ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the product. See 'productId'.
  Core.Text ->
  AndroidEnterpriseProductsGetAppRestrictionsSchema
newAndroidEnterpriseProductsGetAppRestrictionsSchema enterpriseId productId =
  AndroidEnterpriseProductsGetAppRestrictionsSchema
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      language = Core.Nothing,
      productId = productId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseProductsGetAppRestrictionsSchema
  where
  type
    Rs
      AndroidEnterpriseProductsGetAppRestrictionsSchema =
      AppRestrictionsSchema
  type
    Scopes
      AndroidEnterpriseProductsGetAppRestrictionsSchema =
      '["https://www.googleapis.com/auth/androidenterprise"]
  requestClient
    AndroidEnterpriseProductsGetAppRestrictionsSchema {..} =
      go
        enterpriseId
        productId
        xgafv
        accessToken
        callback
        language
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidEnterpriseService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidEnterpriseProductsGetAppRestrictionsSchemaResource
            )
            Core.mempty
