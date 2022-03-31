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
-- Module      : Gogol.CloudSearch.Stats.GetSearchapplication
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get search application stats for customer. __Note:__ This API requires a standard end user account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.stats.getSearchapplication@.
module Gogol.CloudSearch.Stats.GetSearchapplication
  ( -- * Resource
    CloudSearchStatsGetSearchapplicationResource,

    -- ** Constructing a Request
    newCloudSearchStatsGetSearchapplication,
    CloudSearchStatsGetSearchapplication,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.stats.getSearchapplication@ method which the
-- 'CloudSearchStatsGetSearchapplication' request conforms to.
type CloudSearchStatsGetSearchapplicationResource =
  "v1"
    Core.:> "stats"
    Core.:> "searchapplication"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endDate.day" Core.Int32
    Core.:> Core.QueryParam "endDate.month" Core.Int32
    Core.:> Core.QueryParam "endDate.year" Core.Int32
    Core.:> Core.QueryParam "startDate.day" Core.Int32
    Core.:> Core.QueryParam "startDate.month" Core.Int32
    Core.:> Core.QueryParam "startDate.year" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GetCustomerSearchApplicationStatsResponse

-- | Get search application stats for customer. __Note:__ This API requires a standard end user account to execute.
--
-- /See:/ 'newCloudSearchStatsGetSearchapplication' smart constructor.
data CloudSearchStatsGetSearchapplication = CloudSearchStatsGetSearchapplication
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Day of month. Must be from 1 to 31 and valid for the year and month.
    endDateDay :: (Core.Maybe Core.Int32),
    -- | Month of date. Must be from 1 to 12.
    endDateMonth :: (Core.Maybe Core.Int32),
    -- | Year of date. Must be from 1 to 9999.
    endDateYear :: (Core.Maybe Core.Int32),
    -- | Day of month. Must be from 1 to 31 and valid for the year and month.
    startDateDay :: (Core.Maybe Core.Int32),
    -- | Month of date. Must be from 1 to 12.
    startDateMonth :: (Core.Maybe Core.Int32),
    -- | Year of date. Must be from 1 to 9999.
    startDateYear :: (Core.Maybe Core.Int32),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchStatsGetSearchapplication' with the minimum fields required to make a request.
newCloudSearchStatsGetSearchapplication ::
  CloudSearchStatsGetSearchapplication
newCloudSearchStatsGetSearchapplication =
  CloudSearchStatsGetSearchapplication
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      endDateDay = Core.Nothing,
      endDateMonth = Core.Nothing,
      endDateYear = Core.Nothing,
      startDateDay = Core.Nothing,
      startDateMonth = Core.Nothing,
      startDateYear = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudSearchStatsGetSearchapplication
  where
  type
    Rs CloudSearchStatsGetSearchapplication =
      GetCustomerSearchApplicationStatsResponse
  type
    Scopes CloudSearchStatsGetSearchapplication =
      '[ CloudSearch'FullControl,
         CloudSearch'Stats,
         CloudSearch'Stats'Indexing
       ]
  requestClient
    CloudSearchStatsGetSearchapplication {..} =
      go
        xgafv
        accessToken
        callback
        endDateDay
        endDateMonth
        endDateYear
        startDateDay
        startDateMonth
        startDateYear
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudSearchService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudSearchStatsGetSearchapplicationResource
            )
            Core.mempty
