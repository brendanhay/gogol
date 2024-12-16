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
-- Module      : Gogol.DFAReporting.UserRoles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of user roles, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userRoles.list@.
module Gogol.DFAReporting.UserRoles.List
    (
    -- * Resource
      DFAReportingUserRolesListResource

    -- ** Constructing a Request
    , DFAReportingUserRolesList (..)
    , newDFAReportingUserRolesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.userRoles.list@ method which the
-- 'DFAReportingUserRolesList' request conforms to.
type DFAReportingUserRolesListResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "userRoles" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "accountUserRoleOnly" Core.Bool
                     Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParams "ids" Core.Int64 Core.:>
                         Core.QueryParam "maxResults" Core.Int32 Core.:>
                           Core.QueryParam "pageToken" Core.Text Core.:>
                             Core.QueryParam "searchString" Core.Text Core.:>
                               Core.QueryParam "sortField"
                                 UserRolesListSortField
                                 Core.:>
                                 Core.QueryParam "sortOrder"
                                   UserRolesListSortOrder
                                   Core.:>
                                   Core.QueryParam "subaccountId" Core.Int64
                                     Core.:>
                                     Core.QueryParam "uploadType" Core.Text
                                       Core.:>
                                       Core.QueryParam "upload_protocol"
                                         Core.Text
                                         Core.:>
                                         Core.QueryParam "alt" Core.AltJSON
                                           Core.:>
                                           Core.Get '[Core.JSON]
                                             UserRolesListResponse

-- | Retrieves a list of user roles, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingUserRolesList' smart constructor.
data DFAReportingUserRolesList = DFAReportingUserRolesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Select only account level user roles not associated with any specific subaccount.
    , accountUserRoleOnly :: (Core.Maybe Core.Bool)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Select only user roles with the specified IDs.
    , ids :: (Core.Maybe [Core.Int64])
      -- | Maximum number of results to return.
    , maxResults :: Core.Int32
      -- | Value of the nextPageToken from the previous result page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Allows searching for objects by name or ID. Wildcards (/) are allowed. For example, \"userrole/2015\" will return objects with names like \"userrole June 2015\", \"userrole April 2015\", or simply \"userrole 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"userrole\" will match objects with name \"my userrole\", \"userrole 2015\", or simply \"userrole\".
    , searchString :: (Core.Maybe Core.Text)
      -- | Field by which to sort the list.
    , sortField :: UserRolesListSortField
      -- | Order of sorted results.
    , sortOrder :: UserRolesListSortOrder
      -- | Select only user roles that belong to this subaccount.
    , subaccountId :: (Core.Maybe Core.Int64)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingUserRolesList' with the minimum fields required to make a request.
newDFAReportingUserRolesList 
    ::  Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> DFAReportingUserRolesList
newDFAReportingUserRolesList profileId =
  DFAReportingUserRolesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountUserRoleOnly = Core.Nothing
    , callback = Core.Nothing
    , ids = Core.Nothing
    , maxResults = 1000
    , pageToken = Core.Nothing
    , profileId = profileId
    , searchString = Core.Nothing
    , sortField = UserRolesListSortField_ID
    , sortOrder = UserRolesListSortOrder_Ascending
    , subaccountId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingUserRolesList
         where
        type Rs DFAReportingUserRolesList =
             UserRolesListResponse
        type Scopes DFAReportingUserRolesList =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingUserRolesList{..}
          = go profileId xgafv accessToken accountUserRoleOnly
              callback
              (ids Core.^. Core._Default)
              (Core.Just maxResults)
              pageToken
              searchString
              (Core.Just sortField)
              (Core.Just sortOrder)
              subaccountId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingUserRolesListResource)
                      Core.mempty

