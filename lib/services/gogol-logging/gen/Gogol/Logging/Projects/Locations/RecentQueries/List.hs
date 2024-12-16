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
-- Module      : Gogol.Logging.Projects.Locations.RecentQueries.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the RecentQueries that were created by the user making the request.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.recentQueries.list@.
module Gogol.Logging.Projects.Locations.RecentQueries.List
    (
    -- * Resource
      LoggingProjectsLocationsRecentQueriesListResource

    -- ** Constructing a Request
    , LoggingProjectsLocationsRecentQueriesList (..)
    , newLoggingProjectsLocationsRecentQueriesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.projects.locations.recentQueries.list@ method which the
-- 'LoggingProjectsLocationsRecentQueriesList' request conforms to.
type LoggingProjectsLocationsRecentQueriesListResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "recentQueries" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] ListRecentQueriesResponse

-- | Lists the RecentQueries that were created by the user making the request.
--
-- /See:/ 'newLoggingProjectsLocationsRecentQueriesList' smart constructor.
data LoggingProjectsLocationsRecentQueriesList = LoggingProjectsLocationsRecentQueriesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Specifies the type (\"Logging\" or \"OpsAnalytics\") of the recent queries to list. The only valid value for this field is one of the two allowable type function calls, which are the following: type(\"Logging\") type(\"OpsAnalytics\")
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The resource to which the listed queries belong. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\" For example:projects\/my-project\/locations\/us-central1Note: The location portion of the resource must be specified, but supplying the character - in place of LOCATION/ID will return all recent queries.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingProjectsLocationsRecentQueriesList' with the minimum fields required to make a request.
newLoggingProjectsLocationsRecentQueriesList 
    ::  Core.Text
       -- ^  Required. The resource to which the listed queries belong. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\" For example:projects\/my-project\/locations\/us-central1Note: The location portion of the resource must be specified, but supplying the character - in place of LOCATION/ID will return all recent queries. See 'parent'.
    -> LoggingProjectsLocationsRecentQueriesList
newLoggingProjectsLocationsRecentQueriesList parent =
  LoggingProjectsLocationsRecentQueriesList
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
           LoggingProjectsLocationsRecentQueriesList
         where
        type Rs LoggingProjectsLocationsRecentQueriesList =
             ListRecentQueriesResponse
        type Scopes LoggingProjectsLocationsRecentQueriesList
             =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly,
               Logging'Admin, Logging'Read]
        requestClient
          LoggingProjectsLocationsRecentQueriesList{..}
          = go parent xgafv accessToken callback filter
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           LoggingProjectsLocationsRecentQueriesListResource)
                      Core.mempty

