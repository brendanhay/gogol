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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Organizations.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches organization resources that are visible to the user and satisfy the specified filter. This method returns organizations in an unspecified order. New organizations do not necessarily appear at the end of the results, and may take a small amount of time to appear. Search will only return organizations on which the user has the permission @resourcemanager.organizations.get@
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.organizations.search@.
module Gogol.ResourceManager.Cloudresourcemanager.Organizations.Search
  ( -- * Resource
    CloudresourcemanagerOrganizationsSearchResource,

    -- ** Constructing a Request
    newCloudresourcemanagerOrganizationsSearch,
    CloudresourcemanagerOrganizationsSearch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.organizations.search@ method which the
-- 'CloudresourcemanagerOrganizationsSearch' request conforms to.
type CloudresourcemanagerOrganizationsSearchResource =
  "v3"
    Core.:> "organizations:search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SearchOrganizationsResponse

-- | Searches organization resources that are visible to the user and satisfy the specified filter. This method returns organizations in an unspecified order. New organizations do not necessarily appear at the end of the results, and may take a small amount of time to appear. Search will only return organizations on which the user has the permission @resourcemanager.organizations.get@
--
-- /See:/ 'newCloudresourcemanagerOrganizationsSearch' smart constructor.
data CloudresourcemanagerOrganizationsSearch = CloudresourcemanagerOrganizationsSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of organizations to return in the response. The server can return fewer organizations than requested. If unspecified, server picks an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A pagination token returned from a previous call to @SearchOrganizations@ that indicates from where listing should continue.
    pageToken :: (Core.Maybe Core.Text),
    -- | Optional. An optional query string used to filter the Organizations to return in the response. Query rules are case-insensitive. @| Field | Description | |------------------|--------------------------------------------| | directoryCustomerId, owner.directoryCustomerId | Filters by directory customer id. | | domain | Filters by domain. |@ Organizations may be queried by @directoryCustomerId@ or by @domain@, where the domain is a G Suite domain, for example: * Query @directorycustomerid:123456789@ returns Organization resources with @owner.directory_customer_id@ equal to @123456789@. * Query @domain:google.com@ returns Organization resources corresponding to the domain @google.com@.
    query :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerOrganizationsSearch' with the minimum fields required to make a request.
newCloudresourcemanagerOrganizationsSearch ::
  CloudresourcemanagerOrganizationsSearch
newCloudresourcemanagerOrganizationsSearch =
  CloudresourcemanagerOrganizationsSearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      query = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerOrganizationsSearch
  where
  type
    Rs CloudresourcemanagerOrganizationsSearch =
      SearchOrganizationsResponse
  type
    Scopes CloudresourcemanagerOrganizationsSearch =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient
    CloudresourcemanagerOrganizationsSearch {..} =
      go
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        query
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        resourceManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudresourcemanagerOrganizationsSearchResource
            )
            Core.mempty
