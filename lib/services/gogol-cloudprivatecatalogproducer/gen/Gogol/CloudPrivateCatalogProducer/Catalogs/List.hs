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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Catalog resources that the producer has access to, within the scope of the parent resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.list@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.List
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsListResource,

    -- ** Constructing a Request
    CloudPrivateCatalogProducerCatalogsList (..),
    newCloudPrivateCatalogProducerCatalogsList,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.list@ method which the
-- 'CloudPrivateCatalogProducerCatalogsList' request conforms to.
type CloudPrivateCatalogProducerCatalogsListResource =
  "v1beta1"
    Core.:> "catalogs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse

-- | Lists Catalog resources that the producer has access to, within the scope of the parent resource.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsList' smart constructor.
data CloudPrivateCatalogProducerCatalogsList = CloudPrivateCatalogProducerCatalogsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of catalogs to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A pagination token returned from a previous call to ListCatalogs that indicates where this listing should continue from. This field is optional.
    pageToken :: (Core.Maybe Core.Text),
    -- | The resource name of the parent resource.
    parent :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsList' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsList ::
  CloudPrivateCatalogProducerCatalogsList
newCloudPrivateCatalogProducerCatalogsList =
  CloudPrivateCatalogProducerCatalogsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudPrivateCatalogProducerCatalogsList where
  type
    Rs CloudPrivateCatalogProducerCatalogsList =
      GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
  type
    Scopes CloudPrivateCatalogProducerCatalogsList =
      '[CloudPlatform'FullControl]
  requestClient CloudPrivateCatalogProducerCatalogsList {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      parent
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudPrivateCatalogProducerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudPrivateCatalogProducerCatalogsListResource
          )
          Core.mempty
