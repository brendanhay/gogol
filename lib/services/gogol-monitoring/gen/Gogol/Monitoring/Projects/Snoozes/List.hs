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
-- Module      : Gogol.Monitoring.Projects.Snoozes.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Snoozes associated with a project. Can optionally pass in filter, which specifies predicates to match Snoozes.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.snoozes.list@.
module Gogol.Monitoring.Projects.Snoozes.List
    (
    -- * Resource
      MonitoringProjectsSnoozesListResource

    -- ** Constructing a Request
    , MonitoringProjectsSnoozesList (..)
    , newMonitoringProjectsSnoozesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Monitoring.Types

-- | A resource alias for @monitoring.projects.snoozes.list@ method which the
-- 'MonitoringProjectsSnoozesList' request conforms to.
type MonitoringProjectsSnoozesListResource =
     "v3" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "snoozes" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListSnoozesResponse

-- | Lists the Snoozes associated with a project. Can optionally pass in filter, which specifies predicates to match Snoozes.
--
-- /See:/ 'newMonitoringProjectsSnoozesList' smart constructor.
data MonitoringProjectsSnoozesList = MonitoringProjectsSnoozesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Optional filter to restrict results to the given criteria. The following fields are supported. interval.start/time interval.end/timeFor example: @interval.start_time > \"2022-03-11T00:00:00-08:00\" AND interval.end_time \< \"2022-03-12T00:00:00-08:00\"@
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of results to return for a single query. The server may further constrain the maximum number of results returned in a single page. The value should be in the range 1, 1000. If the value given is outside this range, the server will decide the number of results to be returned.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. The next/page/token from a previous call to ListSnoozesRequest to get the next page of results.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) whose Snoozes should be listed. The format is: projects\/[PROJECT/ID/OR/NUMBER]
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MonitoringProjectsSnoozesList' with the minimum fields required to make a request.
newMonitoringProjectsSnoozesList 
    ::  Core.Text
       -- ^  Required. The project (https:\/\/cloud.google.com\/monitoring\/api\/v3#project/name) whose Snoozes should be listed. The format is: projects\/[PROJECT/ID/OR/NUMBER] See 'parent'.
    -> MonitoringProjectsSnoozesList
newMonitoringProjectsSnoozesList parent =
  MonitoringProjectsSnoozesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           MonitoringProjectsSnoozesList
         where
        type Rs MonitoringProjectsSnoozesList =
             ListSnoozesResponse
        type Scopes MonitoringProjectsSnoozesList =
             '[CloudPlatform'FullControl, Monitoring'FullControl,
               Monitoring'Read]
        requestClient MonitoringProjectsSnoozesList{..}
          = go parent xgafv accessToken callback filter
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              monitoringService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy MonitoringProjectsSnoozesListResource)
                      Core.mempty

