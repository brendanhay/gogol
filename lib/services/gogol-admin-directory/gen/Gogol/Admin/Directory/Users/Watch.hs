{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Admin.Directory.Users.Watch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watches for changes in users list.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.watch@.
module Gogol.Admin.Directory.Users.Watch
    (
    -- * Resource
      DirectoryUsersWatchResource

    -- ** Constructing a Request
    , newDirectoryUsersWatch
    , DirectoryUsersWatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.users.watch@ method which the
-- 'DirectoryUsersWatch' request conforms to.
type DirectoryUsersWatchResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "users" Core.:>
             "watch" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "customFieldMask" Core.Text Core.:>
                       Core.QueryParam "customer" Core.Text Core.:>
                         Core.QueryParam "domain" Core.Text Core.:>
                           Core.QueryParam "event" UsersWatchEvent Core.:>
                             Core.QueryParam "maxResults" Core.Int32 Core.:>
                               Core.QueryParam "orderBy" UsersWatchOrderBy
                                 Core.:>
                                 Core.QueryParam "pageToken" Core.Text Core.:>
                                   Core.QueryParam "projection"
                                     UsersWatchProjection
                                     Core.:>
                                     Core.QueryParam "query" Core.Text Core.:>
                                       Core.QueryParam "showDeleted" Core.Text
                                         Core.:>
                                         Core.QueryParam "sortOrder"
                                           UsersWatchSortOrder
                                           Core.:>
                                           Core.QueryParam "uploadType"
                                             Core.Text
                                             Core.:>
                                             Core.QueryParam "upload_protocol"
                                               Core.Text
                                               Core.:>
                                               Core.QueryParam "viewType"
                                                 UsersWatchViewType
                                                 Core.:>
                                                 Core.QueryParam "alt"
                                                   Core.AltJSON
                                                   Core.:>
                                                   Core.ReqBody '[Core.JSON]
                                                     Channel
                                                     Core.:>
                                                     Core.Post '[Core.JSON]
                                                       Channel

-- | Watches for changes in users list.
--
-- /See:/ 'newDirectoryUsersWatch' smart constructor.
data DirectoryUsersWatch = DirectoryUsersWatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Comma-separated list of schema names. All fields from these schemas are fetched. This should only be set when projection=custom.
    , customFieldMask :: (Core.Maybe Core.Text)
      -- | Immutable ID of the Google Workspace account. In case of multi-domain, to fetch all users for a customer, fill this field instead of domain.
    , customer :: (Core.Maybe Core.Text)
      -- | Name of the domain. Fill this field to get users from only this domain. To return all users in a multi-domain fill customer field instead.\"
    , domain :: (Core.Maybe Core.Text)
      -- | Events to watch for.
    , event :: (Core.Maybe UsersWatchEvent)
      -- | Maximum number of results to return.
    , maxResults :: Core.Int32
      -- | Column to use for sorting results
    , orderBy :: (Core.Maybe UsersWatchOrderBy)
      -- | Token to specify next page in the list
    , pageToken :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Channel
      -- | What subset of fields to fetch for this user.
    , projection :: UsersWatchProjection
      -- | Query string search. Should be of the form \"\". Complete documentation is at https: \/\/developers.google.com\/admin-sdk\/directory\/v1\/guides\/search-users
    , query :: (Core.Maybe Core.Text)
      -- | If set to true, retrieves the list of deleted users. (Default: false)
    , showDeleted :: (Core.Maybe Core.Text)
      -- | Whether to return results in ascending or descending order.
    , sortOrder :: (Core.Maybe UsersWatchSortOrder)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Whether to fetch the administrator-only or domain-wide public view of the user. For more information, see </admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin Retrieve a user as a non-administrator>.
    , viewType :: UsersWatchViewType
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersWatch' with the minimum fields required to make a request.
newDirectoryUsersWatch 
    ::  Channel
       -- ^  Multipart request metadata. See 'payload'.
    -> DirectoryUsersWatch
newDirectoryUsersWatch payload =
  DirectoryUsersWatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customFieldMask = Core.Nothing
    , customer = Core.Nothing
    , domain = Core.Nothing
    , event = Core.Nothing
    , maxResults = 100
    , orderBy = Core.Nothing
    , pageToken = Core.Nothing
    , payload = payload
    , projection = UsersWatchProjection_Basic
    , query = Core.Nothing
    , showDeleted = Core.Nothing
    , sortOrder = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , viewType = UsersWatchViewType_AdminView
    }

instance Core.GoogleRequest DirectoryUsersWatch where
        type Rs DirectoryUsersWatch = Channel
        type Scopes DirectoryUsersWatch =
             '["https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/admin.directory.user.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient DirectoryUsersWatch{..}
          = go xgafv accessToken callback customFieldMask
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
              payload
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryUsersWatchResource)
                      Core.mempty

