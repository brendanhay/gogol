{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Associations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the requested Association resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.associations.get@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Associations.Get
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsAssociationsGetResource,

    -- ** Constructing a Request
    CloudPrivateCatalogProducerCatalogsAssociationsGet (..),
    newCloudPrivateCatalogProducerCatalogsAssociationsGet,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.associations.get@ method which the
-- 'CloudPrivateCatalogProducerCatalogsAssociationsGet' request conforms to.
type CloudPrivateCatalogProducerCatalogsAssociationsGetResource =
  "v1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1Association

-- | Returns the requested Association resource.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsAssociationsGet' smart constructor.
data CloudPrivateCatalogProducerCatalogsAssociationsGet = CloudPrivateCatalogProducerCatalogsAssociationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the @Association@ to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsAssociationsGet' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsAssociationsGet ::
  -- |  The resource name of the @Association@ to retrieve. See 'name'.
  Core.Text ->
  CloudPrivateCatalogProducerCatalogsAssociationsGet
newCloudPrivateCatalogProducerCatalogsAssociationsGet name =
  CloudPrivateCatalogProducerCatalogsAssociationsGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudPrivateCatalogProducerCatalogsAssociationsGet
  where
  type
    Rs CloudPrivateCatalogProducerCatalogsAssociationsGet =
      GoogleCloudPrivatecatalogproducerV1beta1Association
  type
    Scopes CloudPrivateCatalogProducerCatalogsAssociationsGet =
      '[CloudPlatform'FullControl]
  requestClient
    CloudPrivateCatalogProducerCatalogsAssociationsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudPrivateCatalogProducerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudPrivateCatalogProducerCatalogsAssociationsGetResource
            )
            Core.mempty
