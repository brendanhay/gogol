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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Hard deletes a Version.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.versions.delete@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Delete
    (
    -- * Resource
      CloudPrivateCatalogProducerCatalogsProductsVersionsDeleteResource

    -- ** Constructing a Request
    , CloudPrivateCatalogProducerCatalogsProductsVersionsDelete (..)
    , newCloudPrivateCatalogProducerCatalogsProductsVersionsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudPrivateCatalogProducer.Types

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.versions.delete@ method which the
-- 'CloudPrivateCatalogProducerCatalogsProductsVersionsDelete' request conforms to.
type CloudPrivateCatalogProducerCatalogsProductsVersionsDeleteResource
     =
     "v1beta1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Hard deletes a Version.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsProductsVersionsDelete' smart constructor.
data CloudPrivateCatalogProducerCatalogsProductsVersionsDelete = CloudPrivateCatalogProducerCatalogsProductsVersionsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The resource name of the version.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsProductsVersionsDelete' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsProductsVersionsDelete 
    ::  Core.Text
       -- ^  The resource name of the version. See 'name'.
    -> CloudPrivateCatalogProducerCatalogsProductsVersionsDelete
newCloudPrivateCatalogProducerCatalogsProductsVersionsDelete name =
  CloudPrivateCatalogProducerCatalogsProductsVersionsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudPrivateCatalogProducerCatalogsProductsVersionsDelete
         where
        type Rs
               CloudPrivateCatalogProducerCatalogsProductsVersionsDelete
             = GoogleProtobufEmpty
        type Scopes
               CloudPrivateCatalogProducerCatalogsProductsVersionsDelete
             = '[CloudPlatform'FullControl]
        requestClient
          CloudPrivateCatalogProducerCatalogsProductsVersionsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudPrivateCatalogProducerCatalogsProductsVersionsDeleteResource)
                      Core.mempty

