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
-- Module      : Gogol.CloudSearch.Stats.GetIndex
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets indexed item statistics aggreggated across all data sources. This API only returns statistics for previous dates; it doesn\'t return statistics for the current day. __Note:__ This API requires a standard end user account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.stats.getIndex@.
module Gogol.CloudSearch.Stats.GetIndex
  ( -- * Resource
    CloudSearchStatsGetIndexResource,

    -- ** Constructing a Request
    CloudSearchStatsGetIndex (..),
    newCloudSearchStatsGetIndex,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.stats.getIndex@ method which the
-- 'CloudSearchStatsGetIndex' request conforms to.
type CloudSearchStatsGetIndexResource =
  "v1"
    Core.:> "stats"
    Core.:> "index"
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
              GetCustomerIndexStatsResponse

-- | Gets indexed item statistics aggreggated across all data sources. This API only returns statistics for previous dates; it doesn\'t return statistics for the current day. __Note:__ This API requires a standard end user account to execute.
--
-- /See:/ 'newCloudSearchStatsGetIndex' smart constructor.
data CloudSearchStatsGetIndex = CloudSearchStatsGetIndex
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

-- | Creates a value of 'CloudSearchStatsGetIndex' with the minimum fields required to make a request.
newCloudSearchStatsGetIndex ::
  CloudSearchStatsGetIndex
newCloudSearchStatsGetIndex =
  CloudSearchStatsGetIndex
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fromDateDay = Core.Nothing,
      fromDateMonth = Core.Nothing,
      fromDateYear = Core.Nothing,
      toDateDay = Core.Nothing,
      toDateMonth = Core.Nothing,
      toDateYear = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudSearchStatsGetIndex where
  type
    Rs CloudSearchStatsGetIndex =
      GetCustomerIndexStatsResponse
  type
    Scopes CloudSearchStatsGetIndex =
      '[ CloudSearch'FullControl,
         CloudSearch'Stats,
         CloudSearch'Stats'Indexing
       ]
  requestClient CloudSearchStatsGetIndex {..} =
    go
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
              Core.Proxy CloudSearchStatsGetIndexResource
          )
          Core.mempty
