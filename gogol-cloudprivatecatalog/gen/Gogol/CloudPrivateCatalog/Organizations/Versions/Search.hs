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
-- Module      : Gogol.CloudPrivateCatalog.Organizations.Versions.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Version resources that consumers have access to, within the scope of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference> for @cloudprivatecatalog.organizations.versions.search@.
module Gogol.CloudPrivateCatalog.Organizations.Versions.Search
  ( -- * Resource
    CloudPrivateCatalogOrganizationsVersionsSearchResource,

    -- ** Constructing a Request
    newCloudPrivateCatalogOrganizationsVersionsSearch,
    CloudPrivateCatalogOrganizationsVersionsSearch,
  )
where

import Gogol.CloudPrivateCatalog.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudprivatecatalog.organizations.versions.search@ method which the
-- 'CloudPrivateCatalogOrganizationsVersionsSearch' request conforms to.
type CloudPrivateCatalogOrganizationsVersionsSearchResource =
  "v1beta1"
    Core.:> Core.Capture "resource" Core.Text
    Core.:> "versions:search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse

-- | Search Version resources that consumers have access to, within the scope of the consumer cloud resource hierarchy context.
--
-- /See:/ 'newCloudPrivateCatalogOrganizationsVersionsSearch' smart constructor.
data CloudPrivateCatalogOrganizationsVersionsSearch = CloudPrivateCatalogOrganizationsVersionsSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of entries that are requested.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A pagination token returned from a previous call to SearchVersions that indicates where this listing should continue from. This field is optional.
    pageToken :: (Core.Maybe Core.Text),
    -- | The query to filter the versions. Required.
    --
    -- The supported queries are: * List versions under a product: @parent=catalogs\/{catalog_id}\/products\/{product_id}@ * Get a version by name: @name=catalogs\/{catalog_id}\/products\/{product_id}\/versions\/{version_id}@
    query :: (Core.Maybe Core.Text),
    -- | Required. The name of the resource context. See SearchCatalogsRequest.resource for details.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogOrganizationsVersionsSearch' with the minimum fields required to make a request.
newCloudPrivateCatalogOrganizationsVersionsSearch ::
  -- |  Required. The name of the resource context. See SearchCatalogsRequest.resource for details. See 'resource'.
  Core.Text ->
  CloudPrivateCatalogOrganizationsVersionsSearch
newCloudPrivateCatalogOrganizationsVersionsSearch resource =
  CloudPrivateCatalogOrganizationsVersionsSearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      query = Core.Nothing,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudPrivateCatalogOrganizationsVersionsSearch
  where
  type
    Rs
      CloudPrivateCatalogOrganizationsVersionsSearch =
      GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
  type
    Scopes
      CloudPrivateCatalogOrganizationsVersionsSearch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudPrivateCatalogOrganizationsVersionsSearch {..} =
      go
        resource
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        query
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudPrivateCatalogService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudPrivateCatalogOrganizationsVersionsSearchResource
            )
            Core.mempty
