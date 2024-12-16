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
-- Module      : Gogol.AdExchangeBuyer.PerformanceReport.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the authenticated user\'s list of performance metrics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.performanceReport.list@.
module Gogol.AdExchangeBuyer.PerformanceReport.List
    (
    -- * Resource
      AdExchangeBuyerPerformanceReportListResource

    -- ** Constructing a Request
    , AdExchangeBuyerPerformanceReportList (..)
    , newAdExchangeBuyerPerformanceReportList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.performanceReport.list@ method which the
-- 'AdExchangeBuyerPerformanceReportList' request conforms to.
type AdExchangeBuyerPerformanceReportListResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "performancereport" Core.:>
           Core.QueryParam "accountId" Core.Int64 Core.:>
             Core.QueryParam "endDateTime" Core.Text Core.:>
               Core.QueryParam "startDateTime" Core.Text Core.:>
                 Core.QueryParam "maxResults" Core.Word32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] PerformanceReportList

-- | Retrieves the authenticated user\'s list of performance metrics.
--
-- /See:/ 'newAdExchangeBuyerPerformanceReportList' smart constructor.
data AdExchangeBuyerPerformanceReportList = AdExchangeBuyerPerformanceReportList
    {
      -- | The account id to get the reports.
      accountId :: Core.Int64
      -- | The end time of the report in ISO 8601 timestamp format using UTC.
    , endDateTime :: Core.Text
      -- | Maximum number of entries returned on one result page. If not set, the default is 100. Optional.
    , maxResults :: (Core.Maybe Core.Word32)
      -- | A continuation token, used to page through performance reports. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response. Optional.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The start time of the report in ISO 8601 timestamp format using UTC.
    , startDateTime :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerPerformanceReportList' with the minimum fields required to make a request.
newAdExchangeBuyerPerformanceReportList 
    ::  Core.Int64
       -- ^  The account id to get the reports. See 'accountId'.
    -> Core.Text
       -- ^  The end time of the report in ISO 8601 timestamp format using UTC. See 'endDateTime'.
    -> Core.Text
       -- ^  The start time of the report in ISO 8601 timestamp format using UTC. See 'startDateTime'.
    -> AdExchangeBuyerPerformanceReportList
newAdExchangeBuyerPerformanceReportList accountId endDateTime startDateTime =
  AdExchangeBuyerPerformanceReportList
    { accountId = accountId
    , endDateTime = endDateTime
    , maxResults = Core.Nothing
    , pageToken = Core.Nothing
    , startDateTime = startDateTime
    }

instance Core.GoogleRequest
           AdExchangeBuyerPerformanceReportList
         where
        type Rs AdExchangeBuyerPerformanceReportList =
             PerformanceReportList
        type Scopes AdExchangeBuyerPerformanceReportList =
             '[Adexchange'Buyer]
        requestClient
          AdExchangeBuyerPerformanceReportList{..}
          = go (Core.Just accountId) (Core.Just endDateTime)
              (Core.Just startDateTime)
              maxResults
              pageToken
              (Core.Just Core.AltJSON)
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyerPerformanceReportListResource)
                      Core.mempty

