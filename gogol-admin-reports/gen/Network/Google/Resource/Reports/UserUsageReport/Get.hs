{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Reports.UserUsageReport.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report which is a collection of properties and statistics
-- for a set of users with the account. For more information, see the User
-- Usage Report guide. For more information about the user report\'s
-- parameters, see the Users Usage parameters reference guides.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @reports.userUsageReport.get@.
module Network.Google.Resource.Reports.UserUsageReport.Get
    (
    -- * REST Resource
      UserUsageReportGetResource

    -- * Creating a Request
    , userUsageReportGet
    , UserUsageReportGet

    -- * Request Lenses
    , uurgXgafv
    , uurgGroupIdFilter
    , uurgUploadProtocol
    , uurgAccessToken
    , uurgFilters
    , uurgUploadType
    , uurgCustomerId
    , uurgDate
    , uurgParameters
    , uurgPageToken
    , uurgUserKey
    , uurgMaxResults
    , uurgOrgUnitId
    , uurgCallback
    ) where

import Network.Google.Prelude
import Network.Google.Reports.Types

-- | A resource alias for @reports.userUsageReport.get@ method which the
-- 'UserUsageReportGet' request conforms to.
type UserUsageReportGetResource =
     "admin" :>
       "reports" :>
         "v1" :>
           "usage" :>
             "users" :>
               Capture "userKey" Text :>
                 "dates" :>
                   Capture "date" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "groupIdFilter" Text :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "filters" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "customerId" Text :>
                                   QueryParam "parameters" Text :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "maxResults" (Textual Word32)
                                         :>
                                         QueryParam "orgUnitID" Text :>
                                           QueryParam "callback" Text :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON] UsageReports

-- | Retrieves a report which is a collection of properties and statistics
-- for a set of users with the account. For more information, see the User
-- Usage Report guide. For more information about the user report\'s
-- parameters, see the Users Usage parameters reference guides.
--
-- /See:/ 'userUsageReportGet' smart constructor.
data UserUsageReportGet =
  UserUsageReportGet'
    { _uurgXgafv :: !(Maybe Xgafv)
    , _uurgGroupIdFilter :: !(Maybe Text)
    , _uurgUploadProtocol :: !(Maybe Text)
    , _uurgAccessToken :: !(Maybe Text)
    , _uurgFilters :: !(Maybe Text)
    , _uurgUploadType :: !(Maybe Text)
    , _uurgCustomerId :: !(Maybe Text)
    , _uurgDate :: !Text
    , _uurgParameters :: !(Maybe Text)
    , _uurgPageToken :: !(Maybe Text)
    , _uurgUserKey :: !Text
    , _uurgMaxResults :: !(Textual Word32)
    , _uurgOrgUnitId :: !Text
    , _uurgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserUsageReportGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uurgXgafv'
--
-- * 'uurgGroupIdFilter'
--
-- * 'uurgUploadProtocol'
--
-- * 'uurgAccessToken'
--
-- * 'uurgFilters'
--
-- * 'uurgUploadType'
--
-- * 'uurgCustomerId'
--
-- * 'uurgDate'
--
-- * 'uurgParameters'
--
-- * 'uurgPageToken'
--
-- * 'uurgUserKey'
--
-- * 'uurgMaxResults'
--
-- * 'uurgOrgUnitId'
--
-- * 'uurgCallback'
userUsageReportGet
    :: Text -- ^ 'uurgDate'
    -> Text -- ^ 'uurgUserKey'
    -> UserUsageReportGet
userUsageReportGet pUurgDate_ pUurgUserKey_ =
  UserUsageReportGet'
    { _uurgXgafv = Nothing
    , _uurgGroupIdFilter = Nothing
    , _uurgUploadProtocol = Nothing
    , _uurgAccessToken = Nothing
    , _uurgFilters = Nothing
    , _uurgUploadType = Nothing
    , _uurgCustomerId = Nothing
    , _uurgDate = pUurgDate_
    , _uurgParameters = Nothing
    , _uurgPageToken = Nothing
    , _uurgUserKey = pUurgUserKey_
    , _uurgMaxResults = 1000
    , _uurgOrgUnitId = ""
    , _uurgCallback = Nothing
    }


-- | V1 error format.
uurgXgafv :: Lens' UserUsageReportGet (Maybe Xgafv)
uurgXgafv
  = lens _uurgXgafv (\ s a -> s{_uurgXgafv = a})

-- | Comma separated group ids (obfuscated) on which user activities are
-- filtered, i.e. the response will contain activities for only those users
-- that are a part of at least one of the group ids mentioned here. Format:
-- \"id:abc123,id:xyz456\"
uurgGroupIdFilter :: Lens' UserUsageReportGet (Maybe Text)
uurgGroupIdFilter
  = lens _uurgGroupIdFilter
      (\ s a -> s{_uurgGroupIdFilter = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uurgUploadProtocol :: Lens' UserUsageReportGet (Maybe Text)
uurgUploadProtocol
  = lens _uurgUploadProtocol
      (\ s a -> s{_uurgUploadProtocol = a})

-- | OAuth access token.
uurgAccessToken :: Lens' UserUsageReportGet (Maybe Text)
uurgAccessToken
  = lens _uurgAccessToken
      (\ s a -> s{_uurgAccessToken = a})

-- | The \`filters\` query string is a comma-separated list of an
-- application\'s event parameters where the parameter\'s value is
-- manipulated by a relational operator. The \`filters\` query string
-- includes the name of the application whose usage is returned in the
-- report. The application values for the Users Usage Report include
-- \`accounts\`, \`docs\`, and \`gmail\`. Filters are in the form
-- \`[application name]:parameter name[parameter value],...\`. In this
-- example, the \`\<>\` \'not equal to\' operator is URL-encoded in the
-- request\'s query string (%3C%3E): GET
-- https:\/\/www.googleapis.com\/admin\/reports\/v1\/usage\/users\/all\/dates\/2013-03-03
-- ?parameters=accounts:last_login_time
-- &filters=accounts:last_login_time%3C%3E2010-10-28T10:26:35.000Z The
-- relational operators include: - \`==\` - \'equal to\'. - \`\<>\` - \'not
-- equal to\'. It is URL-encoded (%3C%3E). - \`\<\` - \'less than\'. It is
-- URL-encoded (%3C). - \`\<=\` - \'less than or equal to\'. It is
-- URL-encoded (%3C=). - \`>\` - \'greater than\'. It is URL-encoded (%3E).
-- - \`>=\` - \'greater than or equal to\'. It is URL-encoded (%3E=).
uurgFilters :: Lens' UserUsageReportGet (Maybe Text)
uurgFilters
  = lens _uurgFilters (\ s a -> s{_uurgFilters = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uurgUploadType :: Lens' UserUsageReportGet (Maybe Text)
uurgUploadType
  = lens _uurgUploadType
      (\ s a -> s{_uurgUploadType = a})

-- | The unique ID of the customer to retrieve data for.
uurgCustomerId :: Lens' UserUsageReportGet (Maybe Text)
uurgCustomerId
  = lens _uurgCustomerId
      (\ s a -> s{_uurgCustomerId = a})

-- | Represents the date the usage occurred. The timestamp is in the ISO 8601
-- format, yyyy-mm-dd. We recommend you use your account\'s time zone for
-- this.
uurgDate :: Lens' UserUsageReportGet Text
uurgDate = lens _uurgDate (\ s a -> s{_uurgDate = a})

-- | The \`parameters\` query string is a comma-separated list of event
-- parameters that refine a report\'s results. The parameter is associated
-- with a specific application. The application values for the Customers
-- Usage report include \`accounts\`, \`app_maker\`, \`apps_scripts\`,
-- \`calendar\`, \`classroom\`, \`cros\`, \`docs\`, \`gmail\`, \`gplus\`,
-- \`device_management\`, \`meet\`, and \`sites\`. A \`parameters\` query
-- string is in the CSV form of \`app_name1:param_name1,
-- app_name2:param_name2\`. *Note:* The API doesn\'t accept multiple values
-- of a parameter. If a particular parameter is supplied more than once in
-- the API request, the API only accepts the last value of that request
-- parameter. In addition, if an invalid request parameter is supplied in
-- the API request, the API ignores that request parameter and returns the
-- response corresponding to the remaining valid request parameters. An
-- example of an invalid request parameter is one that does not belong to
-- the application. If no parameters are requested, all parameters are
-- returned.
uurgParameters :: Lens' UserUsageReportGet (Maybe Text)
uurgParameters
  = lens _uurgParameters
      (\ s a -> s{_uurgParameters = a})

-- | Token to specify next page. A report with multiple pages has a
-- \`nextPageToken\` property in the response. In your follow-on request
-- getting the next page of the report, enter the \`nextPageToken\` value
-- in the \`pageToken\` query string.
uurgPageToken :: Lens' UserUsageReportGet (Maybe Text)
uurgPageToken
  = lens _uurgPageToken
      (\ s a -> s{_uurgPageToken = a})

-- | Represents the profile ID or the user email for which the data should be
-- filtered. Can be \`all\` for all information, or \`userKey\` for a
-- user\'s unique Google Workspace profile ID or their primary email
-- address. Must not be a deleted user. For a deleted user, call
-- \`users.list\` in Directory API with \`showDeleted=true\`, then use the
-- returned \`ID\` as the \`userKey\`.
uurgUserKey :: Lens' UserUsageReportGet Text
uurgUserKey
  = lens _uurgUserKey (\ s a -> s{_uurgUserKey = a})

-- | Determines how many activity records are shown on each response page.
-- For example, if the request sets \`maxResults=1\` and the report has two
-- activities, the report has two pages. The response\'s \`nextPageToken\`
-- property has the token to the second page. The \`maxResults\` query
-- string is optional.
uurgMaxResults :: Lens' UserUsageReportGet Word32
uurgMaxResults
  = lens _uurgMaxResults
      (\ s a -> s{_uurgMaxResults = a})
      . _Coerce

-- | ID of the organizational unit to report on. User activity will be shown
-- only for users who belong to the specified organizational unit. Data
-- before Dec 17, 2018 doesn\'t appear in the filtered results.
uurgOrgUnitId :: Lens' UserUsageReportGet Text
uurgOrgUnitId
  = lens _uurgOrgUnitId
      (\ s a -> s{_uurgOrgUnitId = a})

-- | JSONP
uurgCallback :: Lens' UserUsageReportGet (Maybe Text)
uurgCallback
  = lens _uurgCallback (\ s a -> s{_uurgCallback = a})

instance GoogleRequest UserUsageReportGet where
        type Rs UserUsageReportGet = UsageReports
        type Scopes UserUsageReportGet =
             '["https://www.googleapis.com/auth/admin.reports.usage.readonly"]
        requestClient UserUsageReportGet'{..}
          = go _uurgUserKey _uurgDate _uurgXgafv
              _uurgGroupIdFilter
              _uurgUploadProtocol
              _uurgAccessToken
              _uurgFilters
              _uurgUploadType
              _uurgCustomerId
              _uurgParameters
              _uurgPageToken
              (Just _uurgMaxResults)
              (Just _uurgOrgUnitId)
              _uurgCallback
              (Just AltJSON)
              reportsService
          where go
                  = buildClient
                      (Proxy :: Proxy UserUsageReportGetResource)
                      mempty
