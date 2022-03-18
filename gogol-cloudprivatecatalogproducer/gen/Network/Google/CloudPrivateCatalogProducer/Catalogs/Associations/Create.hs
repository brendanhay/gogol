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
-- Module      : Network.Google.CloudPrivateCatalogProducer.Catalogs.Associations.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Association instance under a given Catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.associations.create@.
module Network.Google.CloudPrivateCatalogProducer.Catalogs.Associations.Create
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsAssociationsCreateResource,

    -- ** Constructing a Request
    newCloudPrivateCatalogProducerCatalogsAssociationsCreate,
    CloudPrivateCatalogProducerCatalogsAssociationsCreate,
  )
where

import Network.Google.CloudPrivateCatalogProducer.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.associations.create@ method which the
-- 'CloudPrivateCatalogProducerCatalogsAssociationsCreate' request conforms to.
type CloudPrivateCatalogProducerCatalogsAssociationsCreateResource =
  "v1beta1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "associations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1Association

-- | Creates an Association instance under a given Catalog.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsAssociationsCreate' smart constructor.
data CloudPrivateCatalogProducerCatalogsAssociationsCreate = CloudPrivateCatalogProducerCatalogsAssociationsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The @Catalog@ resource\'s name.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsAssociationsCreate' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsAssociationsCreate ::
  -- |  The @Catalog@ resource\'s name. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest ->
  CloudPrivateCatalogProducerCatalogsAssociationsCreate
newCloudPrivateCatalogProducerCatalogsAssociationsCreate parent payload =
  CloudPrivateCatalogProducerCatalogsAssociationsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudPrivateCatalogProducerCatalogsAssociationsCreate
  where
  type
    Rs
      CloudPrivateCatalogProducerCatalogsAssociationsCreate =
      GoogleCloudPrivatecatalogproducerV1beta1Association
  type
    Scopes
      CloudPrivateCatalogProducerCatalogsAssociationsCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudPrivateCatalogProducerCatalogsAssociationsCreate {..} =
      go
        parent
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
                Core.Proxy
                  CloudPrivateCatalogProducerCatalogsAssociationsCreateResource
            )
            Core.mempty