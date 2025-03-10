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
-- Module      : Gogol.CloudPrivateCatalog.Organizations.Catalogs.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Catalog resources that consumers have access to, within the scope of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference> for @cloudprivatecatalog.organizations.catalogs.search@.
module Gogol.CloudPrivateCatalog.Organizations.Catalogs.Search
  ( -- * Resource
    CloudPrivateCatalogOrganizationsCatalogsSearchResource,

    -- ** Constructing a Request
    CloudPrivateCatalogOrganizationsCatalogsSearch (..),
    newCloudPrivateCatalogOrganizationsCatalogsSearch,
  )
where

import Gogol.CloudPrivateCatalog.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudprivatecatalog.organizations.catalogs.search@ method which the
-- 'CloudPrivateCatalogOrganizationsCatalogsSearch' request conforms to.
type CloudPrivateCatalogOrganizationsCatalogsSearchResource =
  "v1beta1"
    Core.:> Core.Capture "resource" Core.Text
    Core.:> "catalogs:search"
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
              GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse

-- | Search Catalog resources that consumers have access to, within the scope of the consumer cloud resource hierarchy context.
--
-- /See:/ 'newCloudPrivateCatalogOrganizationsCatalogsSearch' smart constructor.
data CloudPrivateCatalogOrganizationsCatalogsSearch = CloudPrivateCatalogOrganizationsCatalogsSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of entries that are requested.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A pagination token returned from a previous call to SearchCatalogs that indicates where this listing should continue from. This field is optional.
    pageToken :: (Core.Maybe Core.Text),
    -- | The query to filter the catalogs. The supported queries are:
    --
    -- -   Get a single catalog: @name=catalogs\/{catalog_id}@
    query :: (Core.Maybe Core.Text),
    -- | Required. The name of the resource context. It can be in following formats:
    --
    -- -   @projects\/{project_id}@
    -- -   @folders\/{folder_id}@
    -- -   @organizations\/{organization_id}@
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogOrganizationsCatalogsSearch' with the minimum fields required to make a request.
newCloudPrivateCatalogOrganizationsCatalogsSearch ::
  -- |  Required. The name of the resource context. It can be in following formats:
  --
  -- -   @projects\/{project_id}@
  -- -   @folders\/{folder_id}@
  -- -   @organizations\/{organization_id}@ See 'resource'.
  Core.Text ->
  CloudPrivateCatalogOrganizationsCatalogsSearch
newCloudPrivateCatalogOrganizationsCatalogsSearch resource =
  CloudPrivateCatalogOrganizationsCatalogsSearch
    { xgafv =
        Core.Nothing,
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
    CloudPrivateCatalogOrganizationsCatalogsSearch
  where
  type
    Rs CloudPrivateCatalogOrganizationsCatalogsSearch =
      GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
  type
    Scopes CloudPrivateCatalogOrganizationsCatalogsSearch =
      '[CloudPlatform'FullControl]
  requestClient CloudPrivateCatalogOrganizationsCatalogsSearch {..} =
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
              Core.Proxy CloudPrivateCatalogOrganizationsCatalogsSearchResource
          )
          Core.mempty
