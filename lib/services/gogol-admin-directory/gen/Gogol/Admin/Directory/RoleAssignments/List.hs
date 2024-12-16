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
-- Module      : Gogol.Admin.Directory.RoleAssignments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of all roleAssignments.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roleAssignments.list@.
module Gogol.Admin.Directory.RoleAssignments.List
    (
    -- * Resource
      DirectoryRoleAssignmentsListResource

    -- ** Constructing a Request
    , DirectoryRoleAssignmentsList (..)
    , newDirectoryRoleAssignmentsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.roleAssignments.list@ method which the
-- 'DirectoryRoleAssignmentsList' request conforms to.
type DirectoryRoleAssignmentsListResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "customer" Core.:>
             Core.Capture "customer" Core.Text Core.:>
               "roleassignments" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "includeIndirectRoleAssignments"
                         Core.Bool
                         Core.:>
                         Core.QueryParam "maxResults" Core.Int32 Core.:>
                           Core.QueryParam "pageToken" Core.Text Core.:>
                             Core.QueryParam "roleId" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "userKey" Core.Text Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.Get '[Core.JSON] RoleAssignments

-- | Retrieves a paginated list of all roleAssignments.
--
-- /See:/ 'newDirectoryRoleAssignmentsList' smart constructor.
data DirectoryRoleAssignmentsList = DirectoryRoleAssignmentsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique ID for the customer\'s Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of @domain@. You can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users> resource. You must provide either the @customer@ or the @domain@ parameter.
    , customer :: Core.Text
      -- | When set to @true@, fetches indirect role assignments (i.e. role assignment via a group) as well as direct ones. Defaults to @false@. You must specify @user_key@ or the indirect role assignments will not be included.
    , includeIndirectRoleAssignments :: (Core.Maybe Core.Bool)
      -- | Maximum number of results to return.
    , maxResults :: (Core.Maybe Core.Int32)
      -- | Token to specify the next page in the list.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Immutable ID of a role. If included in the request, returns only role assignments containing this role ID.
    , roleId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The primary email address, alias email address, or unique user or group ID. If included in the request, returns role assignments only for this user or group.
    , userKey :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryRoleAssignmentsList' with the minimum fields required to make a request.
newDirectoryRoleAssignmentsList 
    ::  Core.Text
       -- ^  The unique ID for the customer\'s Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of @domain@. You can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users> resource. You must provide either the @customer@ or the @domain@ parameter. See 'customer'.
    -> DirectoryRoleAssignmentsList
newDirectoryRoleAssignmentsList customer =
  DirectoryRoleAssignmentsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customer = customer
    , includeIndirectRoleAssignments = Core.Nothing
    , maxResults = Core.Nothing
    , pageToken = Core.Nothing
    , roleId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userKey = Core.Nothing
    }

instance Core.GoogleRequest
           DirectoryRoleAssignmentsList
         where
        type Rs DirectoryRoleAssignmentsList =
             RoleAssignments
        type Scopes DirectoryRoleAssignmentsList =
             '[Admin'Directory'Rolemanagement,
               Admin'Directory'Rolemanagement'Readonly]
        requestClient DirectoryRoleAssignmentsList{..}
          = go customer xgafv accessToken callback
              includeIndirectRoleAssignments
              maxResults
              pageToken
              roleId
              uploadType
              uploadProtocol
              userKey
              (Core.Just Core.AltJSON)
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryRoleAssignmentsListResource)
                      Core.mempty

