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
-- Module      : Gogol.Admin.Reports.EntityUsageReports.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report which is a collection of properties and statistics for entities used by users within the account. For more information, see the Entities Usage Report guide. For more information about the entities report\'s parameters, see the Entities Usage parameters reference guides.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @reports.entityUsageReports.get@.
module Gogol.Admin.Reports.EntityUsageReports.Get
    (
    -- * Resource
      ReportsEntityUsageReportsGetResource

    -- ** Constructing a Request
    , ReportsEntityUsageReportsGet (..)
    , newReportsEntityUsageReportsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Reports.Types

-- | A resource alias for @reports.entityUsageReports.get@ method which the
-- 'ReportsEntityUsageReportsGet' request conforms to.
type ReportsEntityUsageReportsGetResource =
     "admin" Core.:>
       "reports" Core.:>
         "v1" Core.:>
           "usage" Core.:>
             Core.Capture "entityType"
               EntityUsageReportsGetEntityType
               Core.:>
               Core.Capture "entityKey" Core.Text Core.:>
                 "dates" Core.:>
                   Core.Capture "date" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "customerId" Core.Text Core.:>
                             Core.QueryParam "filters" Core.Text Core.:>
                               Core.QueryParam "maxResults" Core.Word32 Core.:>
                                 Core.QueryParam "pageToken" Core.Text Core.:>
                                   Core.QueryParam "parameters" Core.Text
                                     Core.:>
                                     Core.QueryParam "uploadType" Core.Text
                                       Core.:>
                                       Core.QueryParam "upload_protocol"
                                         Core.Text
                                         Core.:>
                                         Core.QueryParam "alt" Core.AltJSON
                                           Core.:>
                                           Core.Get '[Core.JSON] UsageReports

-- | Retrieves a report which is a collection of properties and statistics for entities used by users within the account. For more information, see the Entities Usage Report guide. For more information about the entities report\'s parameters, see the Entities Usage parameters reference guides.
--
-- /See:/ 'newReportsEntityUsageReportsGet' smart constructor.
data ReportsEntityUsageReportsGet = ReportsEntityUsageReportsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique ID of the customer to retrieve data for.
    , customerId :: (Core.Maybe Core.Text)
      -- | Represents the date the usage occurred, based on UTC-8:00 (Pacific Standard Time). The timestamp is in the <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601 format>, @yyyy-mm-dd@.
    , date :: Core.Text
      -- | Represents the key of the object to filter the data with. It is a string which can take the value @all@ to get activity events for all users, or any other value for an app-specific entity. For details on how to obtain the @entityKey@ for a particular @entityType@, see the Entities Usage parameters reference guides.
    , entityKey :: Core.Text
      -- | Represents the type of entity for the report.
    , entityType :: EntityUsageReportsGetEntityType
      -- | The @filters@ query string is a comma-separated list of an application\'s event parameters where the parameter\'s value is manipulated by a relational operator. The @filters@ query string includes the name of the application whose usage is returned in the report. The application values for the Entities usage report include @accounts@, @docs@, and @gmail@. Filters are in the form @[application name]:parameter name[parameter value],...@. In this example, the @\<>@ \'not equal to\' operator is URL-encoded in the request\'s query string (%3C%3E): GET https:\/\/www.googleapis.com\/admin\/reports\/v1\/usage\/gplus/communities\/all\/dates\/2017-12-01 ?parameters=gplus:community/name,gplus:num/total/members &filters=gplus:num/total/members%3C%3E0 The relational operators include: - @==@ - \'equal to\'. - @\<>@ - \'not equal to\'. It is URL-encoded (%3C%3E). - @\<@ - \'less than\'. It is URL-encoded (%3C). - @\<=@ - \'less than or equal to\'. It is URL-encoded (%3C=). - @>@ - \'greater than\'. It is URL-encoded (%3E).
      -- - @>=@ - \'greater than or equal to\'. It is URL-encoded (%3E=). Filters can only be applied to numeric parameters.
    , filters :: (Core.Maybe Core.Text)
      -- | Determines how many activity records are shown on each response page. For example, if the request sets @maxResults=1@ and the report has two activities, the report has two pages. The response\'s @nextPageToken@ property has the token to the second page.
    , maxResults :: Core.Word32
      -- | Token to specify next page. A report with multiple pages has a @nextPageToken@ property in the response. In your follow-on request getting the next page of the report, enter the @nextPageToken@ value in the @pageToken@ query string.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The @parameters@ query string is a comma-separated list of event parameters that refine a report\'s results. The parameter is associated with a specific application. The application values for the Entities usage report are only @gplus@. A @parameter@ query string is in the CSV form of @[app_name1:param_name1], [app_name2:param_name2]...@. /Note:/ The API doesn\'t accept multiple values of a parameter. If a particular parameter is supplied more than once in the API request, the API only accepts the last value of that request parameter. In addition, if an invalid request parameter is supplied in the API request, the API ignores that request parameter and returns the response corresponding to the remaining valid request parameters. An example of an invalid request parameter is one that does not belong to the application. If no parameters are requested, all parameters are returned.
    , parameters :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportsEntityUsageReportsGet' with the minimum fields required to make a request.
newReportsEntityUsageReportsGet 
    ::  Core.Text
       -- ^  Represents the date the usage occurred, based on UTC-8:00 (Pacific Standard Time). The timestamp is in the <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601 format>, @yyyy-mm-dd@. See 'date'.
    -> Core.Text
       -- ^  Represents the key of the object to filter the data with. It is a string which can take the value @all@ to get activity events for all users, or any other value for an app-specific entity. For details on how to obtain the @entityKey@ for a particular @entityType@, see the Entities Usage parameters reference guides. See 'entityKey'.
    -> EntityUsageReportsGetEntityType
       -- ^  Represents the type of entity for the report. See 'entityType'.
    -> ReportsEntityUsageReportsGet
newReportsEntityUsageReportsGet date entityKey entityType =
  ReportsEntityUsageReportsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customerId = Core.Nothing
    , date = date
    , entityKey = entityKey
    , entityType = entityType
    , filters = Core.Nothing
    , maxResults = 1000
    , pageToken = Core.Nothing
    , parameters = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ReportsEntityUsageReportsGet
         where
        type Rs ReportsEntityUsageReportsGet = UsageReports
        type Scopes ReportsEntityUsageReportsGet =
             '[Admin'Reports'Usage'Readonly]
        requestClient ReportsEntityUsageReportsGet{..}
          = go entityType entityKey date xgafv accessToken
              callback
              customerId
              filters
              (Core.Just maxResults)
              pageToken
              parameters
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminReportsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ReportsEntityUsageReportsGetResource)
                      Core.mempty

