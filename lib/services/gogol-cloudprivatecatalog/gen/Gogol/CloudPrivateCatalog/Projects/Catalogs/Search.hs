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
-- Module      : Gogol.CloudPrivateCatalog.Projects.Catalogs.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Catalog resources that consumers have access to, within the scope of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference> for @cloudprivatecatalog.projects.catalogs.search@.
module Gogol.CloudPrivateCatalog.Projects.Catalogs.Search
  ( -- * Resource
    CloudPrivateCatalogProjectsCatalogsSearchResource,

    -- ** Constructing a Request
    CloudPrivateCatalogProjectsCatalogsSearch (..),
    newCloudPrivateCatalogProjectsCatalogsSearch,
  )
where

import Gogol.CloudPrivateCatalog.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudprivatecatalog.projects.catalogs.search@ method which the
-- 'CloudPrivateCatalogProjectsCatalogsSearch' request conforms to.
type CloudPrivateCatalogProjectsCatalogsSearchResource =
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
-- /See:/ 'newCloudPrivateCatalogProjectsCatalogsSearch' smart constructor.
data CloudPrivateCatalogProjectsCatalogsSearch = CloudPrivateCatalogProjectsCatalogsSearch
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

-- | Creates a value of 'CloudPrivateCatalogProjectsCatalogsSearch' with the minimum fields required to make a request.
newCloudPrivateCatalogProjectsCatalogsSearch ::
  -- |  Required. The name of the resource context. It can be in following formats:
  --
  -- -   @projects\/{project_id}@
  -- -   @folders\/{folder_id}@
  -- -   @organizations\/{organization_id}@ See 'resource'.
  Core.Text ->
  CloudPrivateCatalogProjectsCatalogsSearch
newCloudPrivateCatalogProjectsCatalogsSearch resource =
  CloudPrivateCatalogProjectsCatalogsSearch
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
    CloudPrivateCatalogProjectsCatalogsSearch
  where
  type
    Rs CloudPrivateCatalogProjectsCatalogsSearch =
      GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
  type
    Scopes CloudPrivateCatalogProjectsCatalogsSearch =
      '[CloudPlatform'FullControl]
  requestClient
    CloudPrivateCatalogProjectsCatalogsSearch {..} =
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
                  CloudPrivateCatalogProjectsCatalogsSearchResource
            )
            Core.mempty
