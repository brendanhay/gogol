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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Associations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Association resources under a catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.associations.list@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Associations.List
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsAssociationsListResource,

    -- ** Constructing a Request
    CloudPrivateCatalogProducerCatalogsAssociationsList (..),
    newCloudPrivateCatalogProducerCatalogsAssociationsList,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.associations.list@ method which the
-- 'CloudPrivateCatalogProducerCatalogsAssociationsList' request conforms to.
type CloudPrivateCatalogProducerCatalogsAssociationsListResource =
  "v1beta1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "associations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse

-- | Lists all Association resources under a catalog.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsAssociationsList' smart constructor.
data CloudPrivateCatalogProducerCatalogsAssociationsList = CloudPrivateCatalogProducerCatalogsAssociationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of catalog associations to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A pagination token returned from the previous call to @ListAssociations@.
    pageToken :: (Core.Maybe Core.Text),
    -- | The resource name of the @Catalog@ whose @Associations@ are being retrieved. In the format @catalogs\/\<catalog>@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsAssociationsList' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsAssociationsList ::
  -- |  The resource name of the @Catalog@ whose @Associations@ are being retrieved. In the format @catalogs\/\<catalog>@. See 'parent'.
  Core.Text ->
  CloudPrivateCatalogProducerCatalogsAssociationsList
newCloudPrivateCatalogProducerCatalogsAssociationsList parent =
  CloudPrivateCatalogProducerCatalogsAssociationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudPrivateCatalogProducerCatalogsAssociationsList
  where
  type
    Rs
      CloudPrivateCatalogProducerCatalogsAssociationsList =
      GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
  type
    Scopes
      CloudPrivateCatalogProducerCatalogsAssociationsList =
      '[CloudPlatform'FullControl]
  requestClient
    CloudPrivateCatalogProducerCatalogsAssociationsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
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
                  CloudPrivateCatalogProducerCatalogsAssociationsListResource
            )
            Core.mempty
