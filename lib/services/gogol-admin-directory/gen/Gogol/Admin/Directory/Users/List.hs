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
-- Module      : Gogol.Admin.Directory.Users.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of either deleted users or all users in a domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.list@.
module Gogol.Admin.Directory.Users.List
  ( -- * Resource
    DirectoryUsersListResource,

    -- ** Constructing a Request
    DirectoryUsersList (..),
    newDirectoryUsersList,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.users.list@ method which the
-- 'DirectoryUsersList' request conforms to.
type DirectoryUsersListResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customFieldMask" Core.Text
    Core.:> Core.QueryParam "customer" Core.Text
    Core.:> Core.QueryParam "domain" Core.Text
    Core.:> Core.QueryParam "event" UsersListEvent
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "orderBy" UsersListOrderBy
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam
              "projection"
              UsersListProjection
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Text
    Core.:> Core.QueryParam
              "sortOrder"
              UsersListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam
              "viewType"
              UsersListViewType
    Core.:> Core.QueryParam
              "alt"
              Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Users

-- | Retrieves a paginated list of either deleted users or all users in a domain.
--
-- /See:/ 'newDirectoryUsersList' smart constructor.
data DirectoryUsersList = DirectoryUsersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A comma-separated list of schema names. All fields from these schemas are fetched. This should only be set when @projection=custom@.
    customFieldMask :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, fill this field instead of domain. You can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>. Either the @customer@ or the @domain@ parameter must be provided.
    customer :: (Core.Maybe Core.Text),
    -- | The domain name. Use this field to get groups from only one domain. To return all domains for a customer account, use the @customer@ query parameter instead. Either the @customer@ or the @domain@ parameter must be provided.
    domain :: (Core.Maybe Core.Text),
    -- | Event on which subscription is intended (if subscribing)
    event :: (Core.Maybe UsersListEvent),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Property to use for sorting results.
    orderBy :: (Core.Maybe UsersListOrderBy),
    -- | Token to specify next page in the list
    pageToken :: (Core.Maybe Core.Text),
    -- | What subset of fields to fetch for this user.
    projection :: UsersListProjection,
    -- | Query string for searching user fields. For more information on constructing user queries, see </admin-sdk/directory/v1/guides/search-users Search for Users>.
    query :: (Core.Maybe Core.Text),
    -- | If set to @true@, retrieves the list of deleted users. (Default: @false@)
    showDeleted :: (Core.Maybe Core.Text),
    -- | Whether to return results in ascending or descending order, ignoring case.
    sortOrder :: (Core.Maybe UsersListSortOrder),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Whether to fetch the administrator-only or domain-wide public view of the user. For more information, see </admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin Retrieve a user as a non-administrator>.
    viewType :: UsersListViewType
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersList' with the minimum fields required to make a request.
newDirectoryUsersList ::
  DirectoryUsersList
newDirectoryUsersList =
  DirectoryUsersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customFieldMask = Core.Nothing,
      customer = Core.Nothing,
      domain = Core.Nothing,
      event = Core.Nothing,
      maxResults = 100,
      orderBy = Core.Nothing,
      pageToken = Core.Nothing,
      projection = UsersListProjection_Basic,
      query = Core.Nothing,
      showDeleted = Core.Nothing,
      sortOrder = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      viewType = UsersListViewType_AdminView
    }

instance Core.GoogleRequest DirectoryUsersList where
  type Rs DirectoryUsersList = Users
  type
    Scopes DirectoryUsersList =
      '[ Admin'Directory'User,
         Admin'Directory'User'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient DirectoryUsersList {..} =
    go
      xgafv
      accessToken
      callback
      customFieldMask
      customer
      domain
      event
      (Core.Just maxResults)
      orderBy
      pageToken
      (Core.Just projection)
      query
      showDeleted
      sortOrder
      uploadType
      uploadProtocol
      (Core.Just viewType)
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryUsersListResource)
          Core.mempty
