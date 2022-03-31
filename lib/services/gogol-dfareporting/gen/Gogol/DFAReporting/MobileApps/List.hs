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
-- Module      : Gogol.DFAReporting.MobileApps.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves list of available mobile apps.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.mobileApps.list@.
module Gogol.DFAReporting.MobileApps.List
  ( -- * Resource
    DFAReportingMobileAppsListResource,

    -- ** Constructing a Request
    newDFAReportingMobileAppsList,
    DFAReportingMobileAppsList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.mobileApps.list@ method which the
-- 'DFAReportingMobileAppsList' request conforms to.
type DFAReportingMobileAppsListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "mobileApps"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "directories"
              MobileAppsListDirectories
    Core.:> Core.QueryParams "ids" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              MobileAppsListResponse

-- | Retrieves list of available mobile apps.
--
-- /See:/ 'newDFAReportingMobileAppsList' smart constructor.
data DFAReportingMobileAppsList = DFAReportingMobileAppsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only apps from these directories.
    directories :: (Core.Maybe [MobileAppsListDirectories]),
    -- | Select only apps with these IDs.
    ids :: (Core.Maybe [Core.Text]),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for objects by name or ID. Wildcards (/) are allowed. For example, \"app/2015\" will return objects with names like \"app Jan 2018\", \"app Jan 2018\", or simply \"app 2018\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"app\" will match objects with name \"my app\", \"app 2018\", or simply \"app\".
    searchString :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingMobileAppsList' with the minimum fields required to make a request.
newDFAReportingMobileAppsList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingMobileAppsList
newDFAReportingMobileAppsList profileId =
  DFAReportingMobileAppsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      directories = Core.Nothing,
      ids = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingMobileAppsList
  where
  type
    Rs DFAReportingMobileAppsList =
      MobileAppsListResponse
  type
    Scopes DFAReportingMobileAppsList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingMobileAppsList {..} =
    go
      profileId
      xgafv
      accessToken
      callback
      (directories Core.^. Core._Default)
      (ids Core.^. Core._Default)
      (Core.Just maxResults)
      pageToken
      searchString
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingMobileAppsListResource
          )
          Core.mempty
