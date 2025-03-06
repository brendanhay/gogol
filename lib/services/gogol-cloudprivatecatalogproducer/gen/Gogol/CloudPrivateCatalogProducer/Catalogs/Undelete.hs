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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Undelete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a deleted Catalog and all resources under it.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.undelete@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Undelete
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsUndeleteResource,

    -- ** Constructing a Request
    CloudPrivateCatalogProducerCatalogsUndelete (..),
    newCloudPrivateCatalogProducerCatalogsUndelete,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.undelete@ method which the
-- 'CloudPrivateCatalogProducerCatalogsUndelete' request conforms to.
type CloudPrivateCatalogProducerCatalogsUndeleteResource =
  "v1beta1"
    Core.:> Core.CaptureMode "name" "undelete" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1Catalog

-- | Undeletes a deleted Catalog and all resources under it.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsUndelete' smart constructor.
data CloudPrivateCatalogProducerCatalogsUndelete = CloudPrivateCatalogProducerCatalogsUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the catalog.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsUndelete' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsUndelete ::
  -- |  The resource name of the catalog. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest ->
  CloudPrivateCatalogProducerCatalogsUndelete
newCloudPrivateCatalogProducerCatalogsUndelete name payload =
  CloudPrivateCatalogProducerCatalogsUndelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudPrivateCatalogProducerCatalogsUndelete
  where
  type
    Rs CloudPrivateCatalogProducerCatalogsUndelete =
      GoogleCloudPrivatecatalogproducerV1beta1Catalog
  type
    Scopes CloudPrivateCatalogProducerCatalogsUndelete =
      '[CloudPlatform'FullControl]
  requestClient CloudPrivateCatalogProducerCatalogsUndelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudPrivateCatalogProducerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudPrivateCatalogProducerCatalogsUndeleteResource
          )
          Core.mempty
