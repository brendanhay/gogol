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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Product instance under a given Catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.create@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Create
    (
    -- * Resource
      CloudPrivateCatalogProducerCatalogsProductsCreateResource

    -- ** Constructing a Request
    , CloudPrivateCatalogProducerCatalogsProductsCreate (..)
    , newCloudPrivateCatalogProducerCatalogsProductsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudPrivateCatalogProducer.Types

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.create@ method which the
-- 'CloudPrivateCatalogProducerCatalogsProductsCreate' request conforms to.
type CloudPrivateCatalogProducerCatalogsProductsCreateResource
     =
     "v1beta1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "products" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GoogleCloudPrivatecatalogproducerV1beta1Product
                         Core.:>
                         Core.Post '[Core.JSON]
                           GoogleCloudPrivatecatalogproducerV1beta1Product

-- | Creates a Product instance under a given Catalog.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsProductsCreate' smart constructor.
data CloudPrivateCatalogProducerCatalogsProductsCreate = CloudPrivateCatalogProducerCatalogsProductsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The catalog name of the new product\'s parent.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GoogleCloudPrivatecatalogproducerV1beta1Product
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsProductsCreate' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsProductsCreate 
    ::  Core.Text
       -- ^  The catalog name of the new product\'s parent. See 'parent'.
    -> GoogleCloudPrivatecatalogproducerV1beta1Product
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudPrivateCatalogProducerCatalogsProductsCreate
newCloudPrivateCatalogProducerCatalogsProductsCreate parent payload =
  CloudPrivateCatalogProducerCatalogsProductsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudPrivateCatalogProducerCatalogsProductsCreate
         where
        type Rs
               CloudPrivateCatalogProducerCatalogsProductsCreate
             = GoogleCloudPrivatecatalogproducerV1beta1Product
        type Scopes
               CloudPrivateCatalogProducerCatalogsProductsCreate
             = '[CloudPlatform'FullControl]
        requestClient
          CloudPrivateCatalogProducerCatalogsProductsCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudPrivateCatalogProducerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudPrivateCatalogProducerCatalogsProductsCreateResource)
                      Core.mempty

