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
-- Module      : Gogol.CloudSearch.Stats.User.Searchapplications.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the users statistics for search application. __Note:__ This API requires a standard end user account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.stats.user.searchapplications.get@.
module Gogol.CloudSearch.Stats.User.Searchapplications.Get
  ( -- * Resource
    CloudSearchStatsUserSearchapplicationsGetResource,

    -- ** Constructing a Request
    CloudSearchStatsUserSearchapplicationsGet (..),
    newCloudSearchStatsUserSearchapplicationsGet,
  )
where

import Gogol.CloudSearch.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudsearch.stats.user.searchapplications.get@ method which the
-- 'CloudSearchStatsUserSearchapplicationsGet' request conforms to.
type CloudSearchStatsUserSearchapplicationsGetResource =
  "v1"
    Core.:> "stats"
    Core.:> "user"
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
    Core.:> Core.Get '[Core.JSON] GetSearchApplicationUserStatsResponse

-- | Get the users statistics for search application. __Note:__ This API requires a standard end user account to execute.
--
-- /See:/ 'newCloudSearchStatsUserSearchapplicationsGet' smart constructor.
data CloudSearchStatsUserSearchapplicationsGet = CloudSearchStatsUserSearchapplicationsGet
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

-- | Creates a value of 'CloudSearchStatsUserSearchapplicationsGet' with the minimum fields required to make a request.
newCloudSearchStatsUserSearchapplicationsGet ::
  -- |  The resource id of the search application session stats, in the following format: searchapplications\/{application_id} See 'name'.
  Core.Text ->
  CloudSearchStatsUserSearchapplicationsGet
newCloudSearchStatsUserSearchapplicationsGet name =
  CloudSearchStatsUserSearchapplicationsGet
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
    CloudSearchStatsUserSearchapplicationsGet
  where
  type
    Rs CloudSearchStatsUserSearchapplicationsGet =
      GetSearchApplicationUserStatsResponse
  type
    Scopes CloudSearchStatsUserSearchapplicationsGet =
      '[ CloudSearch'FullControl,
         CloudSearch'Stats,
         CloudSearch'Stats'Indexing
       ]
  requestClient CloudSearchStatsUserSearchapplicationsGet {..} =
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
              Core.Proxy CloudSearchStatsUserSearchapplicationsGetResource
          )
          Core.mempty
