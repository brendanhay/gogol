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
-- Module      : Gogol.Admin.Directory.Groups.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all groups of a domain or of a user given a userKey (paginated).
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.groups.list@.
module Gogol.Admin.Directory.Groups.List
  ( -- * Resource
    DirectoryGroupsListResource,

    -- ** Constructing a Request
    DirectoryGroupsList (..),
    newDirectoryGroupsList,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.groups.list@ method which the
-- 'DirectoryGroupsList' request conforms to.
type DirectoryGroupsListResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "groups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customer" Core.Text
    Core.:> Core.QueryParam "domain" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "orderBy" GroupsListOrderBy
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "sortOrder" GroupsListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "userKey" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Groups

-- | Retrieves all groups of a domain or of a user given a userKey (paginated).
--
-- /See:/ 'newDirectoryGroupsList' smart constructor.
data DirectoryGroupsList = DirectoryGroupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of @domain@. You can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users> resource. You must provide either the @customer@ or the @domain@ parameter.
    customer :: (Core.Maybe Core.Text),
    -- | The domain name. Use this field to get groups from only one domain. To return all domains for a customer account, use the @customer@ query parameter instead.
    domain :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return. Max allowed value is 200.
    maxResults :: Core.Int32,
    -- | Column to use for sorting results
    orderBy :: (Core.Maybe GroupsListOrderBy),
    -- | Token to specify next page in the list
    pageToken :: (Core.Maybe Core.Text),
    -- | Query string search. Should be of the form \"\". Complete documentation is at https: \/\/developers.google.com\/admin-sdk\/directory\/v1\/guides\/search-groups
    query :: (Core.Maybe Core.Text),
    -- | Whether to return results in ascending or descending order. Only of use when orderBy is also used
    sortOrder :: (Core.Maybe GroupsListSortOrder),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Email or immutable ID of the user if only those groups are to be listed, the given user is a member of. If it\'s an ID, it should match with the ID of the user object. Cannot be used with the @customer@ parameter.
    userKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryGroupsList' with the minimum fields required to make a request.
newDirectoryGroupsList ::
  DirectoryGroupsList
newDirectoryGroupsList =
  DirectoryGroupsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = Core.Nothing,
      domain = Core.Nothing,
      maxResults = 200,
      orderBy = Core.Nothing,
      pageToken = Core.Nothing,
      query = Core.Nothing,
      sortOrder = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userKey = Core.Nothing
    }

instance Core.GoogleRequest DirectoryGroupsList where
  type Rs DirectoryGroupsList = Groups
  type
    Scopes DirectoryGroupsList =
      '[Admin'Directory'Group, Admin'Directory'Group'Readonly]
  requestClient DirectoryGroupsList {..} =
    go
      xgafv
      accessToken
      callback
      customer
      domain
      (Core.Just maxResults)
      orderBy
      pageToken
      query
      sortOrder
      uploadType
      uploadProtocol
      userKey
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryGroupsListResource)
          Core.mempty
