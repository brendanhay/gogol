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
-- Module      : Gogol.CloudSearch.Stats.Session.Searchapplications.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the # of search sessions, % of successful sessions with a click query statistics for search application. __Note:__ This API requires a standard end user account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.stats.session.searchapplications.get@.
module Gogol.CloudSearch.Stats.Session.Searchapplications.Get
  ( -- * Resource
    CloudSearchStatsSessionSearchapplicationsGetResource,

    -- ** Constructing a Request
    newCloudSearchStatsSessionSearchapplicationsGet,
    CloudSearchStatsSessionSearchapplicationsGet,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.stats.session.searchapplications.get@ method which the
-- 'CloudSearchStatsSessionSearchapplicationsGet' request conforms to.
type CloudSearchStatsSessionSearchapplicationsGetResource =
  "v1"
    Core.:> "stats"
    Core.:> "session"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fromDate.day" Core.Int32
    Core.:> Core.QueryParam "fromDate.month" Core.Int32
    Core.:> Core.QueryParam "fromDate.year" Core.Int32
    Core.:> Core.QueryParam "toDate.day" Core.Int32
    Core.:> Core.QueryParam "toDate.month" Core.Int32
    Core.:> Core.QueryParam "toDate.year" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GetSearchApplicationSessionStatsResponse

-- | Get the # of search sessions, % of successful sessions with a click query statistics for search application. __Note:__ This API requires a standard end user account to execute.
--
-- /See:/ 'newCloudSearchStatsSessionSearchapplicationsGet' smart constructor.
data CloudSearchStatsSessionSearchapplicationsGet = CloudSearchStatsSessionSearchapplicationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Day of month. Must be from 1 to 31 and valid for the year and month.
    fromDateDay :: (Core.Maybe Core.Int32),
    -- | Month of date. Must be from 1 to 12.
    fromDateMonth :: (Core.Maybe Core.Int32),
    -- | Year of date. Must be from 1 to 9999.
    fromDateYear :: (Core.Maybe Core.Int32),
    -- | The resource id of the search application session stats, in the following format: searchapplications\/{application_id}
    name :: Core.Text,
    -- | Day of month. Must be from 1 to 31 and valid for the year and month.
    toDateDay :: (Core.Maybe Core.Int32),
    -- | Month of date. Must be from 1 to 12.
    toDateMonth :: (Core.Maybe Core.Int32),
    -- | Year of date. Must be from 1 to 9999.
    toDateYear :: (Core.Maybe Core.Int32),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchStatsSessionSearchapplicationsGet' with the minimum fields required to make a request.
newCloudSearchStatsSessionSearchapplicationsGet ::
  -- |  The resource id of the search application session stats, in the following format: searchapplications\/{application_id} See 'name'.
  Core.Text ->
  CloudSearchStatsSessionSearchapplicationsGet
newCloudSearchStatsSessionSearchapplicationsGet name =
  CloudSearchStatsSessionSearchapplicationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fromDateDay = Core.Nothing,
      fromDateMonth = Core.Nothing,
      fromDateYear = Core.Nothing,
      name = name,
      toDateDay = Core.Nothing,
      toDateMonth = Core.Nothing,
      toDateYear = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchStatsSessionSearchapplicationsGet
  where
  type
    Rs CloudSearchStatsSessionSearchapplicationsGet =
      GetSearchApplicationSessionStatsResponse
  type
    Scopes
      CloudSearchStatsSessionSearchapplicationsGet =
      '[ "https://www.googleapis.com/auth/cloud_search",
         "https://www.googleapis.com/auth/cloud_search.stats",
         "https://www.googleapis.com/auth/cloud_search.stats.indexing"
       ]
  requestClient
    CloudSearchStatsSessionSearchapplicationsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        fromDateDay
        fromDateMonth
        fromDateYear
        toDateDay
        toDateMonth
        toDateYear
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudSearchService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSearchStatsSessionSearchapplicationsGetResource
            )
            Core.mempty
