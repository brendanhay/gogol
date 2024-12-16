{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudPrivateCatalog.Folders.Products.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Product resources that consumers have access to, within the scope of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference> for @cloudprivatecatalog.folders.products.search@.
module Gogol.CloudPrivateCatalog.Folders.Products.Search
    (
    -- * Resource
      CloudPrivateCatalogFoldersProductsSearchResource

    -- ** Constructing a Request
    , CloudPrivateCatalogFoldersProductsSearch (..)
    , newCloudPrivateCatalogFoldersProductsSearch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudPrivateCatalog.Types

-- | A resource alias for @cloudprivatecatalog.folders.products.search@ method which the
-- 'CloudPrivateCatalogFoldersProductsSearch' request conforms to.
type CloudPrivateCatalogFoldersProductsSearchResource
     =
     "v1beta1" Core.:>
       Core.Capture "resource" Core.Text Core.:>
         "products:search" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "query" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               GoogleCloudPrivatecatalogV1beta1SearchProductsResponse

-- | Search Product resources that consumers have access to, within the scope of the consumer cloud resource hierarchy context.
--
-- /See:/ 'newCloudPrivateCatalogFoldersProductsSearch' smart constructor.
data CloudPrivateCatalogFoldersProductsSearch = CloudPrivateCatalogFoldersProductsSearch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of entries that are requested.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A pagination token returned from a previous call to SearchProducts that indicates where this listing should continue from. This field is optional.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The query to filter the products.
      -- 
      -- The supported queries are: * List products of all catalogs: empty * List products under a catalog: @parent=catalogs\/{catalog_id}@ * Get a product by name: @name=catalogs\/{catalog_id}\/products\/{product_id}@
    , query :: (Core.Maybe Core.Text)
      -- | Required. The name of the resource context. See SearchCatalogsRequest.resource for details.
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogFoldersProductsSearch' with the minimum fields required to make a request.
newCloudPrivateCatalogFoldersProductsSearch 
    ::  Core.Text
       -- ^  Required. The name of the resource context. See SearchCatalogsRequest.resource for details. See 'resource'.
    -> CloudPrivateCatalogFoldersProductsSearch
newCloudPrivateCatalogFoldersProductsSearch resource =
  CloudPrivateCatalogFoldersProductsSearch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , query = Core.Nothing
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudPrivateCatalogFoldersProductsSearch
         where
        type Rs CloudPrivateCatalogFoldersProductsSearch =
             GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
        type Scopes CloudPrivateCatalogFoldersProductsSearch
             = '[CloudPlatform'FullControl]
        requestClient
          CloudPrivateCatalogFoldersProductsSearch{..}
          = go resource xgafv accessToken callback pageSize
              pageToken
              query
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudPrivateCatalogService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudPrivateCatalogFoldersProductsSearchResource)
                      Core.mempty

