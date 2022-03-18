{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Admin.Reports.UserUsageReport.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report which is a collection of properties and statistics for a set of users with the account. For more information, see the User Usage Report guide. For more information about the user report\'s parameters, see the Users Usage parameters reference guides.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @reports.userUsageReport.get@.
module Gogol.Admin.Reports.UserUsageReport.Get
    (
    -- * Resource
      ReportsUserUsageReportGetResource

    -- ** Constructing a Request
    , newReportsUserUsageReportGet
    , ReportsUserUsageReportGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Reports.Types

-- | A resource alias for @reports.userUsageReport.get@ method which the
-- 'ReportsUserUsageReportGet' request conforms to.
type ReportsUserUsageReportGetResource =
     "admin" Core.:>
       "reports" Core.:>
         "v1" Core.:>
           "usage" Core.:>
             "users" Core.:>
               Core.Capture "userKey" Core.Text Core.:>
                 "dates" Core.:>
                   Core.Capture "date" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "customerId" Core.Text Core.:>
                             Core.QueryParam "filters" Core.Text Core.:>
                               Core.QueryParam "groupIdFilter" Core.Text Core.:>
                                 Core.QueryParam "maxResults" Core.Word32
                                   Core.:>
                                   Core.QueryParam "orgUnitID" Core.Text Core.:>
                                     Core.QueryParam "pageToken" Core.Text
                                       Core.:>
                                       Core.QueryParam "parameters" Core.Text
                                         Core.:>
                                         Core.QueryParam "uploadType" Core.Text
                                           Core.:>
                                           Core.QueryParam "upload_protocol"
                                             Core.Text
                                             Core.:>
                                             Core.QueryParam "alt" Core.AltJSON
                                               Core.:>
                                               Core.Get '[Core.JSON]
                                                 UsageReports

-- | Retrieves a report which is a collection of properties and statistics for a set of users with the account. For more information, see the User Usage Report guide. For more information about the user report\'s parameters, see the Users Usage parameters reference guides.
--
-- /See:/ 'newReportsUserUsageReportGet' smart constructor.
data ReportsUserUsageReportGet = ReportsUserUsageReportGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The unique ID of the customer to retrieve data for.
    , customerId :: (Core.Maybe Core.Text)
      -- | Represents the date the usage occurred. The timestamp is in the ISO 8601 format, yyyy-mm-dd. We recommend you use your account\'s time zone for this.
    , date :: Core.Text
      -- | The @filters@ query string is a comma-separated list of an application\'s event parameters where the parameter\'s value is manipulated by a relational operator. The @filters@ query string includes the name of the application whose usage is returned in the report. The application values for the Users Usage Report include @accounts@, @docs@, and @gmail@. Filters are in the form @[application name]:parameter name[parameter value],...@. In this example, the @\<>@ \'not equal to\' operator is URL-encoded in the request\'s query string (%3C%3E): GET https:\/\/www.googleapis.com\/admin\/reports\/v1\/usage\/users\/all\/dates\/2013-03-03 ?parameters=accounts:last/login/time &filters=accounts:last/login/time%3C%3E2010-10-28T10:26:35.000Z The relational operators include: - @==@ - \'equal to\'. - @\<>@ - \'not equal to\'. It is URL-encoded (%3C%3E). - @\<@ - \'less than\'. It is URL-encoded (%3C). - @\<=@ - \'less than or equal to\'. It is URL-encoded (%3C=). - @>@ - \'greater than\'. It is URL-encoded (%3E). - @>=@ -
      -- \'greater than or equal to\'. It is URL-encoded (%3E=).
    , filters :: (Core.Maybe Core.Text)
      -- | Comma separated group ids (obfuscated) on which user activities are filtered, i.e. the response will contain activities for only those users that are a part of at least one of the group ids mentioned here. Format: \"id:abc123,id:xyz456\"
    , groupIdFilter :: (Core.Maybe Core.Text)
      -- | Determines how many activity records are shown on each response page. For example, if the request sets @maxResults=1@ and the report has two activities, the report has two pages. The response\'s @nextPageToken@ property has the token to the second page. The @maxResults@ query string is optional.
    , maxResults :: Core.Word32
      -- | ID of the organizational unit to report on. User activity will be shown only for users who belong to the specified organizational unit. Data before Dec 17, 2018 doesn\'t appear in the filtered results.
    , orgUnitID :: Core.Text
      -- | Token to specify next page. A report with multiple pages has a @nextPageToken@ property in the response. In your follow-on request getting the next page of the report, enter the @nextPageToken@ value in the @pageToken@ query string.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The @parameters@ query string is a comma-separated list of event parameters that refine a report\'s results. The parameter is associated with a specific application. The application values for the Customers Usage report include @accounts@, @app_maker@, @apps_scripts@, @calendar@, @classroom@, @cros@, @docs@, @gmail@, @gplus@, @device_management@, @meet@, and @sites@. A @parameters@ query string is in the CSV form of @app_name1:param_name1, app_name2:param_name2@. /Note:/ The API doesn\'t accept multiple values of a parameter. If a particular parameter is supplied more than once in the API request, the API only accepts the last value of that request parameter. In addition, if an invalid request parameter is supplied in the API request, the API ignores that request parameter and returns the response corresponding to the remaining valid request parameters. An example of an invalid request parameter is one that does not belong to the application. If no parameters are requested, all parameters are returned.
    , parameters :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Represents the profile ID or the user email for which the data should be filtered. Can be @all@ for all information, or @userKey@ for a user\'s unique Google Workspace profile ID or their primary email address. Must not be a deleted user. For a deleted user, call @users.list@ in Directory API with @showDeleted=true@, then use the returned @ID@ as the @userKey@.
    , userKey :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportsUserUsageReportGet' with the minimum fields required to make a request.
newReportsUserUsageReportGet 
    ::  Core.Text
       -- ^  Represents the date the usage occurred. The timestamp is in the ISO 8601 format, yyyy-mm-dd. We recommend you use your account\'s time zone for this. See 'date'.
    -> Core.Text
       -- ^  Represents the profile ID or the user email for which the data should be filtered. Can be @all@ for all information, or @userKey@ for a user\'s unique Google Workspace profile ID or their primary email address. Must not be a deleted user. For a deleted user, call @users.list@ in Directory API with @showDeleted=true@, then use the returned @ID@ as the @userKey@. See 'userKey'.
    -> ReportsUserUsageReportGet
newReportsUserUsageReportGet date userKey =
  ReportsUserUsageReportGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customerId = Core.Nothing
    , date = date
    , filters = Core.Nothing
    , groupIdFilter = Core.Nothing
    , maxResults = 1000
    , orgUnitID = ""
    , pageToken = Core.Nothing
    , parameters = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userKey = userKey
    }

instance Core.GoogleRequest ReportsUserUsageReportGet
         where
        type Rs ReportsUserUsageReportGet = UsageReports
        type Scopes ReportsUserUsageReportGet =
             '["https://www.googleapis.com/auth/admin.reports.usage.readonly"]
        requestClient ReportsUserUsageReportGet{..}
          = go userKey date xgafv accessToken callback
              customerId
              filters
              groupIdFilter
              (Core.Just maxResults)
              (Core.Just orgUnitID)
              pageToken
              parameters
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminReportsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ReportsUserUsageReportGetResource)
                      Core.mempty

