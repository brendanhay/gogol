{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Soft deletes an existing Catalog and all resources under it. The catalog can only be deleted if there is no associations under it or DeleteCatalogRequest.force is true. The delete operation can be recovered by the PrivateCatalogProducer.UndeleteCatalog method.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.delete@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Delete
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsDeleteResource,

    -- ** Constructing a Request
    CloudPrivateCatalogProducerCatalogsDelete (..),
    newCloudPrivateCatalogProducerCatalogsDelete,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.delete@ method which the
-- 'CloudPrivateCatalogProducerCatalogsDelete' request conforms to.
type CloudPrivateCatalogProducerCatalogsDeleteResource =
  "v1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "force" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1Catalog

-- | Soft deletes an existing Catalog and all resources under it. The catalog can only be deleted if there is no associations under it or DeleteCatalogRequest.force is true. The delete operation can be recovered by the PrivateCatalogProducer.UndeleteCatalog method.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsDelete' smart constructor.
data CloudPrivateCatalogProducerCatalogsDelete = CloudPrivateCatalogProducerCatalogsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Forces deletion of the @Catalog@ and its @Association@ resources. If the @Catalog@ is still associated with other resources and force is not set to true, then the operation fails.
    force :: (Core.Maybe Core.Bool),
    -- | The resource name of the catalog.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsDelete' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsDelete ::
  -- |  The resource name of the catalog. See 'name'.
  Core.Text ->
  CloudPrivateCatalogProducerCatalogsDelete
newCloudPrivateCatalogProducerCatalogsDelete name =
  CloudPrivateCatalogProducerCatalogsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      force = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudPrivateCatalogProducerCatalogsDelete
  where
  type
    Rs CloudPrivateCatalogProducerCatalogsDelete =
      GoogleCloudPrivatecatalogproducerV1beta1Catalog
  type
    Scopes CloudPrivateCatalogProducerCatalogsDelete =
      '[CloudPlatform'FullControl]
  requestClient CloudPrivateCatalogProducerCatalogsDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      force
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudPrivateCatalogProducerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudPrivateCatalogProducerCatalogsDeleteResource
          )
          Core.mempty
