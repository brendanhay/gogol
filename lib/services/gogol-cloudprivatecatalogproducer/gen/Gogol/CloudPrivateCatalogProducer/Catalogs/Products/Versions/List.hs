{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Version resources that the producer has access to, within the scope of the parent Product.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.versions.list@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.List
    (
    -- * Resource
      CloudPrivateCatalogProducerCatalogsProductsVersionsListResource

    -- ** Constructing a Request
    , newCloudPrivateCatalogProducerCatalogsProductsVersionsList
    , CloudPrivateCatalogProducerCatalogsProductsVersionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudPrivateCatalogProducer.Types

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.versions.list@ method which the
-- 'CloudPrivateCatalogProducerCatalogsProductsVersionsList' request conforms to.
type CloudPrivateCatalogProducerCatalogsProductsVersionsListResource
     =
     "v1beta1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "versions" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON]
                             GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse

-- | Lists Version resources that the producer has access to, within the scope of the parent Product.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsProductsVersionsList' smart constructor.
data CloudPrivateCatalogProducerCatalogsProductsVersionsList = CloudPrivateCatalogProducerCatalogsProductsVersionsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of versions to return.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A pagination token returned from a previous call to ListVersions that indicates where this listing should continue from. This field is optional.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The resource name of the parent resource.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsProductsVersionsList' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsProductsVersionsList 
    ::  Core.Text
       -- ^  The resource name of the parent resource. See 'parent'.
    -> CloudPrivateCatalogProducerCatalogsProductsVersionsList
newCloudPrivateCatalogProducerCatalogsProductsVersionsList parent =
  CloudPrivateCatalogProducerCatalogsProductsVersionsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudPrivateCatalogProducerCatalogsProductsVersionsList
         where
        type Rs
               CloudPrivateCatalogProducerCatalogsProductsVersionsList
             =
             GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
        type Scopes
               CloudPrivateCatalogProducerCatalogsProductsVersionsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudPrivateCatalogProducerCatalogsProductsVersionsList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudPrivateCatalogProducerCatalogsProductsVersionsListResource)
                      Core.mempty

