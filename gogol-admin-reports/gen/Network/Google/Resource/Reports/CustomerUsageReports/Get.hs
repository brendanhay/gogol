{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Reports.CustomerUsageReports.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a report which is a collection of properties \/ statistics for
-- a specific customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/reports/ Admin Reports API Reference> for @ReportsCustomerUsageReportsGet@.
module Reports.CustomerUsageReports.Get
    (
    -- * REST Resource
      CustomerUsageReportsGetAPI

    -- * Creating a Request
    , customerUsageReportsGet
    , CustomerUsageReportsGet

    -- * Request Lenses
    , curgQuotaUser
    , curgPrettyPrint
    , curgUserIp
    , curgCustomerId
    , curgDate
    , curgKey
    , curgParameters
    , curgPageToken
    , curgOauthToken
    , curgFields
    , curgAlt
    ) where

import           Network.Google.AdminReports.Types
import           Network.Google.Prelude

-- | A resource alias for @ReportsCustomerUsageReportsGet@ which the
-- 'CustomerUsageReportsGet' request conforms to.
type CustomerUsageReportsGetAPI =
     "usage" :>
       "dates" :>
         Capture "date" Text :>
           QueryParam "customerId" Text :>
             QueryParam "parameters" Text :>
               QueryParam "pageToken" Text :>
                 Get '[JSON] UsageReports

-- | Retrieves a report which is a collection of properties \/ statistics for
-- a specific customer.
--
-- /See:/ 'customerUsageReportsGet' smart constructor.
data CustomerUsageReportsGet = CustomerUsageReportsGet
    { _curgQuotaUser   :: !(Maybe Text)
    , _curgPrettyPrint :: !Bool
    , _curgUserIp      :: !(Maybe Text)
    , _curgCustomerId  :: !(Maybe Text)
    , _curgDate        :: !Text
    , _curgKey         :: !(Maybe Text)
    , _curgParameters  :: !(Maybe Text)
    , _curgPageToken   :: !(Maybe Text)
    , _curgOauthToken  :: !(Maybe Text)
    , _curgFields      :: !(Maybe Text)
    , _curgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomerUsageReportsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'curgQuotaUser'
--
-- * 'curgPrettyPrint'
--
-- * 'curgUserIp'
--
-- * 'curgCustomerId'
--
-- * 'curgDate'
--
-- * 'curgKey'
--
-- * 'curgParameters'
--
-- * 'curgPageToken'
--
-- * 'curgOauthToken'
--
-- * 'curgFields'
--
-- * 'curgAlt'
customerUsageReportsGet
    :: Text -- ^ 'date'
    -> CustomerUsageReportsGet
customerUsageReportsGet pCurgDate_ =
    CustomerUsageReportsGet
    { _curgQuotaUser = Nothing
    , _curgPrettyPrint = True
    , _curgUserIp = Nothing
    , _curgCustomerId = Nothing
    , _curgDate = pCurgDate_
    , _curgKey = Nothing
    , _curgParameters = Nothing
    , _curgPageToken = Nothing
    , _curgOauthToken = Nothing
    , _curgFields = Nothing
    , _curgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
curgQuotaUser :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgQuotaUser
  = lens _curgQuotaUser
      (\ s a -> s{_curgQuotaUser = a})

-- | Returns response with indentations and line breaks.
curgPrettyPrint :: Lens' CustomerUsageReportsGet' Bool
curgPrettyPrint
  = lens _curgPrettyPrint
      (\ s a -> s{_curgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
curgUserIp :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgUserIp
  = lens _curgUserIp (\ s a -> s{_curgUserIp = a})

-- | Represents the customer for which the data is to be fetched.
curgCustomerId :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgCustomerId
  = lens _curgCustomerId
      (\ s a -> s{_curgCustomerId = a})

-- | Represents the date in yyyy-mm-dd format for which the data is to be
-- fetched.
curgDate :: Lens' CustomerUsageReportsGet' Text
curgDate = lens _curgDate (\ s a -> s{_curgDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
curgKey :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgKey = lens _curgKey (\ s a -> s{_curgKey = a})

-- | Represents the application name, parameter name pairs to fetch in csv as
-- app_name1:param_name1, app_name2:param_name2.
curgParameters :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgParameters
  = lens _curgParameters
      (\ s a -> s{_curgParameters = a})

-- | Token to specify next page.
curgPageToken :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgPageToken
  = lens _curgPageToken
      (\ s a -> s{_curgPageToken = a})

-- | OAuth 2.0 token for the current user.
curgOauthToken :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgOauthToken
  = lens _curgOauthToken
      (\ s a -> s{_curgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
curgFields :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgFields
  = lens _curgFields (\ s a -> s{_curgFields = a})

-- | Data format for the response.
curgAlt :: Lens' CustomerUsageReportsGet' Text
curgAlt = lens _curgAlt (\ s a -> s{_curgAlt = a})

instance GoogleRequest CustomerUsageReportsGet' where
        type Rs CustomerUsageReportsGet' = UsageReports
        request = requestWithRoute defReq adminReportsURL
        requestWithRoute r u CustomerUsageReportsGet{..}
          = go _curgQuotaUser _curgPrettyPrint _curgUserIp
              _curgCustomerId
              _curgDate
              _curgKey
              _curgParameters
              _curgPageToken
              _curgOauthToken
              _curgFields
              _curgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomerUsageReportsGetAPI)
                      r
                      u
