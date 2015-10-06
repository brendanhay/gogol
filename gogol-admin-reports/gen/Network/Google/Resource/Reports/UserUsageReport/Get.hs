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
module Network.Google.Resource.Reports.UserUsageReport.Get
    (
    -- * REST Resource
      UserUsageReportGetResource

    -- * Creating a Request
    , userUsageReportGet'
    , UserUsageReportGet'

    -- * Request Lenses
    , uurgQuotaUser
    , uurgPrettyPrint
    , uurgUserIP
    , uurgFilters
    , uurgCustomerId
    , uurgDate
    , uurgKey
    , uurgParameters
    , uurgPageToken
    , uurgOAuthToken
    , uurgUserKey
    , uurgMaxResults
    , uurgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Reports.Types

-- | A resource alias for @ReportsUserUsageReportGet@ which the
-- 'UserUsageReportGet'' request conforms to.
type UserUsageReportGetResource =
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
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] UsageReports

-- | Retrieves a report which is a collection of properties \/ statistics for
-- a set of users.
--
-- /See:/ 'userUsageReportGet'' smart constructor.
data UserUsageReportGet' = UserUsageReportGet'
    { _uurgQuotaUser   :: !(Maybe Text)
    , _uurgPrettyPrint :: !Bool
    , _uurgUserIP      :: !(Maybe Text)
    , _uurgFilters     :: !(Maybe Text)
    , _uurgCustomerId  :: !(Maybe Text)
    , _uurgDate        :: !Text
    , _uurgKey         :: !(Maybe AuthKey)
    , _uurgParameters  :: !(Maybe Text)
    , _uurgPageToken   :: !(Maybe Text)
    , _uurgOAuthToken  :: !(Maybe OAuthToken)
    , _uurgUserKey     :: !Text
    , _uurgMaxResults  :: !(Maybe Word32)
    , _uurgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserUsageReportGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uurgQuotaUser'
--
-- * 'uurgPrettyPrint'
--
-- * 'uurgUserIP'
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
-- * 'uurgOAuthToken'
--
-- * 'uurgUserKey'
--
-- * 'uurgMaxResults'
--
-- * 'uurgFields'
userUsageReportGet'
    :: Text -- ^ 'date'
    -> Text -- ^ 'userKey'
    -> UserUsageReportGet'
userUsageReportGet' pUurgDate_ pUurgUserKey_ =
    UserUsageReportGet'
    { _uurgQuotaUser = Nothing
    , _uurgPrettyPrint = True
    , _uurgUserIP = Nothing
    , _uurgFilters = Nothing
    , _uurgCustomerId = Nothing
    , _uurgDate = pUurgDate_
    , _uurgKey = Nothing
    , _uurgParameters = Nothing
    , _uurgPageToken = Nothing
    , _uurgOAuthToken = Nothing
    , _uurgUserKey = pUurgUserKey_
    , _uurgMaxResults = Nothing
    , _uurgFields = Nothing
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
uurgUserIP :: Lens' UserUsageReportGet' (Maybe Text)
uurgUserIP
  = lens _uurgUserIP (\ s a -> s{_uurgUserIP = a})

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
uurgKey :: Lens' UserUsageReportGet' (Maybe AuthKey)
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
uurgOAuthToken :: Lens' UserUsageReportGet' (Maybe OAuthToken)
uurgOAuthToken
  = lens _uurgOAuthToken
      (\ s a -> s{_uurgOAuthToken = a})

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

instance GoogleAuth UserUsageReportGet' where
        authKey = uurgKey . _Just
        authToken = uurgOAuthToken . _Just

instance GoogleRequest UserUsageReportGet' where
        type Rs UserUsageReportGet' = UsageReports
        request = requestWith reportsRequest
        requestWith rq UserUsageReportGet'{..}
          = go _uurgUserKey _uurgDate _uurgFilters
              _uurgCustomerId
              _uurgParameters
              _uurgPageToken
              _uurgMaxResults
              _uurgQuotaUser
              (Just _uurgPrettyPrint)
              _uurgUserIP
              _uurgFields
              _uurgKey
              _uurgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UserUsageReportGetResource)
                      rq
