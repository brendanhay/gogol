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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Icons.Upload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Icon instance under a given Product. If Product only has a default icon, a new Icon instance is created and associated with the given Product. If Product already has a non-default icon, the action creates a new Icon instance, associates the newly created Icon with the given Product and deletes the old icon.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.icons.upload@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Icons.Upload
    (
    -- * Resource
      CloudPrivateCatalogProducerCatalogsProductsIconsUploadResource

    -- ** Constructing a Request
    , CloudPrivateCatalogProducerCatalogsProductsIconsUpload (..)
    , newCloudPrivateCatalogProducerCatalogsProductsIconsUpload
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudPrivateCatalogProducer.Types

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.icons.upload@ method which the
-- 'CloudPrivateCatalogProducerCatalogsProductsIconsUpload' request conforms to.
type CloudPrivateCatalogProducerCatalogsProductsIconsUploadResource
     =
     "v1beta1" Core.:>
       Core.Capture "product" Core.Text Core.:>
         "icons:upload" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
                         Core.:> Core.Post '[Core.JSON] GoogleProtobufEmpty

-- | Creates an Icon instance under a given Product. If Product only has a default icon, a new Icon instance is created and associated with the given Product. If Product already has a non-default icon, the action creates a new Icon instance, associates the newly created Icon with the given Product and deletes the old icon.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsProductsIconsUpload' smart constructor.
data CloudPrivateCatalogProducerCatalogsProductsIconsUpload = CloudPrivateCatalogProducerCatalogsProductsIconsUpload
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
      -- | The resource name of the product.
    , product :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsProductsIconsUpload' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsProductsIconsUpload 
    ::  GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The resource name of the product. See 'product'.
    -> CloudPrivateCatalogProducerCatalogsProductsIconsUpload
newCloudPrivateCatalogProducerCatalogsProductsIconsUpload payload product =
  CloudPrivateCatalogProducerCatalogsProductsIconsUpload
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , product = product
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudPrivateCatalogProducerCatalogsProductsIconsUpload
         where
        type Rs
               CloudPrivateCatalogProducerCatalogsProductsIconsUpload
             = GoogleProtobufEmpty
        type Scopes
               CloudPrivateCatalogProducerCatalogsProductsIconsUpload
             = '[CloudPlatform'FullControl]
        requestClient
          CloudPrivateCatalogProducerCatalogsProductsIconsUpload{..}
          = go product xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudPrivateCatalogProducerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudPrivateCatalogProducerCatalogsProductsIconsUploadResource)
                      Core.mempty

