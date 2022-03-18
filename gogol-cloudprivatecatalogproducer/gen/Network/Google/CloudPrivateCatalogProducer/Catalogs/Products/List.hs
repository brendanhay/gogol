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
-- Module      : Network.Google.CloudPrivateCatalogProducer.Catalogs.Products.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Product resources that the producer has access to, within the scope of the parent catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.list@.
module Network.Google.CloudPrivateCatalogProducer.Catalogs.Products.List
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsProductsListResource,

    -- ** Constructing a Request
    newCloudPrivateCatalogProducerCatalogsProductsList,
    CloudPrivateCatalogProducerCatalogsProductsList,
  )
where

import Network.Google.CloudPrivateCatalogProducer.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.list@ method which the
-- 'CloudPrivateCatalogProducerCatalogsProductsList' request conforms to.
type CloudPrivateCatalogProducerCatalogsProductsListResource =
  "v1beta1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "products"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse

-- | Lists Product resources that the producer has access to, within the scope of the parent catalog.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsProductsList' smart constructor.
data CloudPrivateCatalogProducerCatalogsProductsList = CloudPrivateCatalogProducerCatalogsProductsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A filter expression used to restrict the returned results based upon properties of the product.
    filter :: (Core.Maybe Core.Text),
    -- | The maximum number of products to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A pagination token returned from a previous call to ListProducts that indicates where this listing should continue from. This field is optional.
    pageToken :: (Core.Maybe Core.Text),
    -- | The resource name of the parent resource.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsProductsList' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsProductsList ::
  -- |  The resource name of the parent resource. See 'parent'.
  Core.Text ->
  CloudPrivateCatalogProducerCatalogsProductsList
newCloudPrivateCatalogProducerCatalogsProductsList parent =
  CloudPrivateCatalogProducerCatalogsProductsList
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
    CloudPrivateCatalogProducerCatalogsProductsList
  where
  type
    Rs
      CloudPrivateCatalogProducerCatalogsProductsList =
      GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
  type
    Scopes
      CloudPrivateCatalogProducerCatalogsProductsList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudPrivateCatalogProducerCatalogsProductsList {..} =
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
        cloudPrivateCatalogProducerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudPrivateCatalogProducerCatalogsProductsListResource
            )
            Core.mempty
