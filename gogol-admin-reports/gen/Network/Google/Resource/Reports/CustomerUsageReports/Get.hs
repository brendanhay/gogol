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
module Network.Google.Resource.Reports.CustomerUsageReports.Get
    (
    -- * REST Resource
      CustomerUsageReportsGetResource

    -- * Creating a Request
    , customerUsageReportsGet'
    , CustomerUsageReportsGet'

    -- * Request Lenses
    , curgQuotaUser
    , curgPrettyPrint
    , curgUserIP
    , curgCustomerId
    , curgDate
    , curgKey
    , curgParameters
    , curgPageToken
    , curgOAuthToken
    , curgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Reports.Types

-- | A resource alias for @ReportsCustomerUsageReportsGet@ which the
-- 'CustomerUsageReportsGet'' request conforms to.
type CustomerUsageReportsGetResource =
     "usage" :>
       "dates" :>
         Capture "date" Text :>
           QueryParam "customerId" Text :>
             QueryParam "parameters" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] UsageReports

-- | Retrieves a report which is a collection of properties \/ statistics for
-- a specific customer.
--
-- /See:/ 'customerUsageReportsGet'' smart constructor.
data CustomerUsageReportsGet' = CustomerUsageReportsGet'
    { _curgQuotaUser   :: !(Maybe Text)
    , _curgPrettyPrint :: !Bool
    , _curgUserIP      :: !(Maybe Text)
    , _curgCustomerId  :: !(Maybe Text)
    , _curgDate        :: !Text
    , _curgKey         :: !(Maybe Key)
    , _curgParameters  :: !(Maybe Text)
    , _curgPageToken   :: !(Maybe Text)
    , _curgOAuthToken  :: !(Maybe OAuthToken)
    , _curgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomerUsageReportsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'curgQuotaUser'
--
-- * 'curgPrettyPrint'
--
-- * 'curgUserIP'
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
-- * 'curgOAuthToken'
--
-- * 'curgFields'
customerUsageReportsGet'
    :: Text -- ^ 'date'
    -> CustomerUsageReportsGet'
customerUsageReportsGet' pCurgDate_ =
    CustomerUsageReportsGet'
    { _curgQuotaUser = Nothing
    , _curgPrettyPrint = True
    , _curgUserIP = Nothing
    , _curgCustomerId = Nothing
    , _curgDate = pCurgDate_
    , _curgKey = Nothing
    , _curgParameters = Nothing
    , _curgPageToken = Nothing
    , _curgOAuthToken = Nothing
    , _curgFields = Nothing
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
curgUserIP :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgUserIP
  = lens _curgUserIP (\ s a -> s{_curgUserIP = a})

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
curgKey :: Lens' CustomerUsageReportsGet' (Maybe Key)
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
curgOAuthToken :: Lens' CustomerUsageReportsGet' (Maybe OAuthToken)
curgOAuthToken
  = lens _curgOAuthToken
      (\ s a -> s{_curgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
curgFields :: Lens' CustomerUsageReportsGet' (Maybe Text)
curgFields
  = lens _curgFields (\ s a -> s{_curgFields = a})

instance GoogleAuth CustomerUsageReportsGet' where
        authKey = curgKey . _Just
        authToken = curgOAuthToken . _Just

instance GoogleRequest CustomerUsageReportsGet' where
        type Rs CustomerUsageReportsGet' = UsageReports
        request = requestWithRoute defReq reportsURL
        requestWithRoute r u CustomerUsageReportsGet'{..}
          = go _curgDate _curgCustomerId _curgParameters
              _curgPageToken
              _curgQuotaUser
              (Just _curgPrettyPrint)
              _curgUserIP
              _curgFields
              _curgKey
              _curgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CustomerUsageReportsGetResource)
                      r
                      u
