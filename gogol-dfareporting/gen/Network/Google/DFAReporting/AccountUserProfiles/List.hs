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
-- Module      : Network.Google.DFAReporting.AccountUserProfiles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of account user profiles, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accountUserProfiles.list@.
module Network.Google.DFAReporting.AccountUserProfiles.List
  ( -- * Resource
    DFAReportingAccountUserProfilesListResource,

    -- ** Constructing a Request
    newDFAReportingAccountUserProfilesList,
    DFAReportingAccountUserProfilesList,
  )
where

import Network.Google.DFAReporting.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dfareporting.accountUserProfiles.list@ method which the
-- 'DFAReportingAccountUserProfilesList' request conforms to.
type DFAReportingAccountUserProfilesListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "accountUserProfiles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "active" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam
              "sortField"
              AccountUserProfilesListSortField
    Core.:> Core.QueryParam
              "sortOrder"
              AccountUserProfilesListSortOrder
    Core.:> Core.QueryParam "subaccountId" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "userRoleId" Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              AccountUserProfilesListResponse

-- | Retrieves a list of account user profiles, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingAccountUserProfilesList' smart constructor.
data DFAReportingAccountUserProfilesList = DFAReportingAccountUserProfilesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only active user profiles.
    active :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only user profiles with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for objects by name, ID or email. Wildcards (/) are allowed. For example, \"user profile/2015\" will return objects with names like \"user profile June 2015\", \"user profile April 2015\", or simply \"user profile 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"user profile\" will match objects with name \"my user profile\", \"user profile 2015\", or simply \"user profile\".
    searchString :: (Core.Maybe Core.Text),
    -- | Field by which to sort the list.
    sortField :: AccountUserProfilesListSortField,
    -- | Order of sorted results.
    sortOrder :: AccountUserProfilesListSortOrder,
    -- | Select only user profiles with the specified subaccount ID.
    subaccountId :: (Core.Maybe Core.Int64),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Select only user profiles with the specified user role ID.
    userRoleId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingAccountUserProfilesList' with the minimum fields required to make a request.
newDFAReportingAccountUserProfilesList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingAccountUserProfilesList
newDFAReportingAccountUserProfilesList profileId =
  DFAReportingAccountUserProfilesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      active = Core.Nothing,
      callback = Core.Nothing,
      ids = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      sortField = AccountUserProfilesListSortField_ID,
      sortOrder = AccountUserProfilesListSortOrder_Ascending,
      subaccountId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userRoleId = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingAccountUserProfilesList
  where
  type
    Rs DFAReportingAccountUserProfilesList =
      AccountUserProfilesListResponse
  type
    Scopes DFAReportingAccountUserProfilesList =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient DFAReportingAccountUserProfilesList {..} =
    go
      profileId
      xgafv
      accessToken
      active
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
      userRoleId
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                DFAReportingAccountUserProfilesListResource
          )
          Core.mempty
