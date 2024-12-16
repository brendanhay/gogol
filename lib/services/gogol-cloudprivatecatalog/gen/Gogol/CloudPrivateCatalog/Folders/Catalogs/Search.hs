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
-- Module      : Gogol.CloudPrivateCatalog.Folders.Catalogs.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Catalog resources that consumers have access to, within the scope of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference> for @cloudprivatecatalog.folders.catalogs.search@.
module Gogol.CloudPrivateCatalog.Folders.Catalogs.Search
    (
    -- * Resource
      CloudPrivateCatalogFoldersCatalogsSearchResource

    -- ** Constructing a Request
    , CloudPrivateCatalogFoldersCatalogsSearch (..)
    , newCloudPrivateCatalogFoldersCatalogsSearch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudPrivateCatalog.Types

-- | A resource alias for @cloudprivatecatalog.folders.catalogs.search@ method which the
-- 'CloudPrivateCatalogFoldersCatalogsSearch' request conforms to.
type CloudPrivateCatalogFoldersCatalogsSearchResource
     =
     "v1beta1" Core.:>
       Core.Capture "resource" Core.Text Core.:>
         "catalogs:search" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "query" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse

-- | Search Catalog resources that consumers have access to, within the scope of the consumer cloud resource hierarchy context.
--
-- /See:/ 'newCloudPrivateCatalogFoldersCatalogsSearch' smart constructor.
data CloudPrivateCatalogFoldersCatalogsSearch = CloudPrivateCatalogFoldersCatalogsSearch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of entries that are requested.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A pagination token returned from a previous call to SearchCatalogs that indicates where this listing should continue from. This field is optional.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The query to filter the catalogs. The supported queries are:
      -- 
      -- -   Get a single catalog: @name=catalogs\/{catalog_id}@
    , query :: (Core.Maybe Core.Text)
      -- | Required. The name of the resource context. It can be in following formats:
      -- 
      -- -   @projects\/{project_id}@
      -- -   @folders\/{folder_id}@
      -- -   @organizations\/{organization_id}@
    , resource :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogFoldersCatalogsSearch' with the minimum fields required to make a request.
newCloudPrivateCatalogFoldersCatalogsSearch 
    ::  Core.Text
       -- ^  Required. The name of the resource context. It can be in following formats:
       -- 
       -- -   @projects\/{project_id}@
       -- -   @folders\/{folder_id}@
       -- -   @organizations\/{organization_id}@ See 'resource'.
    -> CloudPrivateCatalogFoldersCatalogsSearch
newCloudPrivateCatalogFoldersCatalogsSearch resource =
  CloudPrivateCatalogFoldersCatalogsSearch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , query = Core.Nothing
    , resource = resource
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudPrivateCatalogFoldersCatalogsSearch
         where
        type Rs CloudPrivateCatalogFoldersCatalogsSearch =
             GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
        type Scopes CloudPrivateCatalogFoldersCatalogsSearch
             = '[CloudPlatform'FullControl]
        requestClient
          CloudPrivateCatalogFoldersCatalogsSearch{..}
          = go resource xgafv accessToken callback pageSize
              pageToken
              query
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudPrivateCatalogService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudPrivateCatalogFoldersCatalogsSearchResource)
                      Core.mempty

