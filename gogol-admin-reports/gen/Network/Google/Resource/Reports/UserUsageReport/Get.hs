{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Reports.UserUsageReport.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a report which is a collection of properties \/ statistics for
-- a set of users.
--
-- /See:/ <https://developers.google.com/admin-sdk/reports/ Admin Reports API Reference> for @ReportsUserUsageReportGet@.
module Reports.UserUsageReport.Get
    (
    -- * REST Resource
      UserUsageReportGetAPI

    -- * Creating a Request
    , userUsageReportGet
    , UserUsageReportGet

    -- * Request Lenses
    , uurgQuotaUser
    , uurgPrettyPrint
    , uurgUserIp
    , uurgFilters
    , uurgCustomerId
    , uurgDate
    , uurgKey
    , uurgParameters
    , uurgPageToken
    , uurgOauthToken
    , uurgUserKey
    , uurgMaxResults
    , uurgFields
    , uurgAlt
    ) where

import           Network.Google.AdminReports.Types
import           Network.Google.Prelude

-- | A resource alias for @ReportsUserUsageReportGet@ which the
-- 'UserUsageReportGet' request conforms to.
type UserUsageReportGetAPI =
     "usage" :>
       "users" :>
         Capture "userKey" Text :>
           "dates" :>
             Capture "date" Text :>
               QueryParam "filters" Text :>
                 QueryParam "customerId" Text :>
                   QueryParam "parameters" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Word32 :>
                         Get '[JSON] UsageReports

-- | Retrieves a report which is a collection of properties \/ statistics for
-- a set of users.
--
-- /See:/ 'userUsageReportGet' smart constructor.
data UserUsageReportGet = UserUsageReportGet
    { _uurgQuotaUser   :: !(Maybe Text)
    , _uurgPrettyPrint :: !Bool
    , _uurgUserIp      :: !(Maybe Text)
    , _uurgFilters     :: !(Maybe Text)
    , _uurgCustomerId  :: !(Maybe Text)
    , _uurgDate        :: !Text
    , _uurgKey         :: !(Maybe Text)
    , _uurgParameters  :: !(Maybe Text)
    , _uurgPageToken   :: !(Maybe Text)
    , _uurgOauthToken  :: !(Maybe Text)
    , _uurgUserKey     :: !Text
    , _uurgMaxResults  :: !(Maybe Word32)
    , _uurgFields      :: !(Maybe Text)
    , _uurgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserUsageReportGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uurgQuotaUser'
--
-- * 'uurgPrettyPrint'
--
-- * 'uurgUserIp'
--
-- * 'uurgFilters'
--
-- * 'uurgCustomerId'
--
-- * 'uurgDate'
--
-- * 'uurgKey'
--
-- * 'uurgParameters'
--
-- * 'uurgPageToken'
--
-- * 'uurgOauthToken'
--
-- * 'uurgUserKey'
--
-- * 'uurgMaxResults'
--
-- * 'uurgFields'
--
-- * 'uurgAlt'
userUsageReportGet
    :: Text -- ^ 'date'
    -> Text -- ^ 'userKey'
    -> UserUsageReportGet
userUsageReportGet pUurgDate_ pUurgUserKey_ =
    UserUsageReportGet
    { _uurgQuotaUser = Nothing
    , _uurgPrettyPrint = True
    , _uurgUserIp = Nothing
    , _uurgFilters = Nothing
    , _uurgCustomerId = Nothing
    , _uurgDate = pUurgDate_
    , _uurgKey = Nothing
    , _uurgParameters = Nothing
    , _uurgPageToken = Nothing
    , _uurgOauthToken = Nothing
    , _uurgUserKey = pUurgUserKey_
    , _uurgMaxResults = Nothing
    , _uurgFields = Nothing
    , _uurgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uurgQuotaUser :: Lens' UserUsageReportGet' (Maybe Text)
uurgQuotaUser
  = lens _uurgQuotaUser
      (\ s a -> s{_uurgQuotaUser = a})

-- | Returns response with indentations and line breaks.
uurgPrettyPrint :: Lens' UserUsageReportGet' Bool
uurgPrettyPrint
  = lens _uurgPrettyPrint
      (\ s a -> s{_uurgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uurgUserIp :: Lens' UserUsageReportGet' (Maybe Text)
uurgUserIp
  = lens _uurgUserIp (\ s a -> s{_uurgUserIp = a})

-- | Represents the set of filters including parameter operator value.
uurgFilters :: Lens' UserUsageReportGet' (Maybe Text)
uurgFilters
  = lens _uurgFilters (\ s a -> s{_uurgFilters = a})

-- | Represents the customer for which the data is to be fetched.
uurgCustomerId :: Lens' UserUsageReportGet' (Maybe Text)
uurgCustomerId
  = lens _uurgCustomerId
      (\ s a -> s{_uurgCustomerId = a})

-- | Represents the date in yyyy-mm-dd format for which the data is to be
-- fetched.
uurgDate :: Lens' UserUsageReportGet' Text
uurgDate = lens _uurgDate (\ s a -> s{_uurgDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uurgKey :: Lens' UserUsageReportGet' (Maybe Text)
uurgKey = lens _uurgKey (\ s a -> s{_uurgKey = a})

-- | Represents the application name, parameter name pairs to fetch in csv as
-- app_name1:param_name1, app_name2:param_name2.
uurgParameters :: Lens' UserUsageReportGet' (Maybe Text)
uurgParameters
  = lens _uurgParameters
      (\ s a -> s{_uurgParameters = a})

-- | Token to specify next page.
uurgPageToken :: Lens' UserUsageReportGet' (Maybe Text)
uurgPageToken
  = lens _uurgPageToken
      (\ s a -> s{_uurgPageToken = a})

-- | OAuth 2.0 token for the current user.
uurgOauthToken :: Lens' UserUsageReportGet' (Maybe Text)
uurgOauthToken
  = lens _uurgOauthToken
      (\ s a -> s{_uurgOauthToken = a})

-- | Represents the profile id or the user email for which the data should be
-- filtered.
uurgUserKey :: Lens' UserUsageReportGet' Text
uurgUserKey
  = lens _uurgUserKey (\ s a -> s{_uurgUserKey = a})

-- | Maximum number of results to return. Maximum allowed is 1000
uurgMaxResults :: Lens' UserUsageReportGet' (Maybe Word32)
uurgMaxResults
  = lens _uurgMaxResults
      (\ s a -> s{_uurgMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
uurgFields :: Lens' UserUsageReportGet' (Maybe Text)
uurgFields
  = lens _uurgFields (\ s a -> s{_uurgFields = a})

-- | Data format for the response.
uurgAlt :: Lens' UserUsageReportGet' Text
uurgAlt = lens _uurgAlt (\ s a -> s{_uurgAlt = a})

instance GoogleRequest UserUsageReportGet' where
        type Rs UserUsageReportGet' = UsageReports
        request = requestWithRoute defReq adminReportsURL
        requestWithRoute r u UserUsageReportGet{..}
          = go _uurgQuotaUser _uurgPrettyPrint _uurgUserIp
              _uurgFilters
              _uurgCustomerId
              _uurgDate
              _uurgKey
              _uurgParameters
              _uurgPageToken
              _uurgOauthToken
              _uurgUserKey
              _uurgMaxResults
              _uurgFields
              _uurgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserUsageReportGetAPI)
                      r
                      u
