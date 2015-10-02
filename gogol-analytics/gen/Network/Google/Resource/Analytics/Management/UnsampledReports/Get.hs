{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.UnsampledReports.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a single unsampled report.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUnsampledReportsGet@.
module Network.Google.Resource.Analytics.Management.UnsampledReports.Get
    (
    -- * REST Resource
      ManagementUnsampledReportsGetResource

    -- * Creating a Request
    , managementUnsampledReportsGet'
    , ManagementUnsampledReportsGet'

    -- * Request Lenses
    , murgQuotaUser
    , murgPrettyPrint
    , murgWebPropertyId
    , murgUserIP
    , murgProfileId
    , murgAccountId
    , murgKey
    , murgUnsampledReportId
    , murgOAuthToken
    , murgFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUnsampledReportsGet@ which the
-- 'ManagementUnsampledReportsGet'' request conforms to.
type ManagementUnsampledReportsGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "unsampledReports" :>
                     Capture "unsampledReportId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] UnsampledReport

-- | Returns a single unsampled report.
--
-- /See:/ 'managementUnsampledReportsGet'' smart constructor.
data ManagementUnsampledReportsGet' = ManagementUnsampledReportsGet'
    { _murgQuotaUser         :: !(Maybe Text)
    , _murgPrettyPrint       :: !Bool
    , _murgWebPropertyId     :: !Text
    , _murgUserIP            :: !(Maybe Text)
    , _murgProfileId         :: !Text
    , _murgAccountId         :: !Text
    , _murgKey               :: !(Maybe Key)
    , _murgUnsampledReportId :: !Text
    , _murgOAuthToken        :: !(Maybe OAuthToken)
    , _murgFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUnsampledReportsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'murgQuotaUser'
--
-- * 'murgPrettyPrint'
--
-- * 'murgWebPropertyId'
--
-- * 'murgUserIP'
--
-- * 'murgProfileId'
--
-- * 'murgAccountId'
--
-- * 'murgKey'
--
-- * 'murgUnsampledReportId'
--
-- * 'murgOAuthToken'
--
-- * 'murgFields'
managementUnsampledReportsGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'unsampledReportId'
    -> ManagementUnsampledReportsGet'
managementUnsampledReportsGet' pMurgWebPropertyId_ pMurgProfileId_ pMurgAccountId_ pMurgUnsampledReportId_ =
    ManagementUnsampledReportsGet'
    { _murgQuotaUser = Nothing
    , _murgPrettyPrint = False
    , _murgWebPropertyId = pMurgWebPropertyId_
    , _murgUserIP = Nothing
    , _murgProfileId = pMurgProfileId_
    , _murgAccountId = pMurgAccountId_
    , _murgKey = Nothing
    , _murgUnsampledReportId = pMurgUnsampledReportId_
    , _murgOAuthToken = Nothing
    , _murgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
murgQuotaUser :: Lens' ManagementUnsampledReportsGet' (Maybe Text)
murgQuotaUser
  = lens _murgQuotaUser
      (\ s a -> s{_murgQuotaUser = a})

-- | Returns response with indentations and line breaks.
murgPrettyPrint :: Lens' ManagementUnsampledReportsGet' Bool
murgPrettyPrint
  = lens _murgPrettyPrint
      (\ s a -> s{_murgPrettyPrint = a})

-- | Web property ID to retrieve unsampled reports for.
murgWebPropertyId :: Lens' ManagementUnsampledReportsGet' Text
murgWebPropertyId
  = lens _murgWebPropertyId
      (\ s a -> s{_murgWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
murgUserIP :: Lens' ManagementUnsampledReportsGet' (Maybe Text)
murgUserIP
  = lens _murgUserIP (\ s a -> s{_murgUserIP = a})

-- | View (Profile) ID to retrieve unsampled report for.
murgProfileId :: Lens' ManagementUnsampledReportsGet' Text
murgProfileId
  = lens _murgProfileId
      (\ s a -> s{_murgProfileId = a})

-- | Account ID to retrieve unsampled report for.
murgAccountId :: Lens' ManagementUnsampledReportsGet' Text
murgAccountId
  = lens _murgAccountId
      (\ s a -> s{_murgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
murgKey :: Lens' ManagementUnsampledReportsGet' (Maybe Key)
murgKey = lens _murgKey (\ s a -> s{_murgKey = a})

-- | ID of the unsampled report to retrieve.
murgUnsampledReportId :: Lens' ManagementUnsampledReportsGet' Text
murgUnsampledReportId
  = lens _murgUnsampledReportId
      (\ s a -> s{_murgUnsampledReportId = a})

-- | OAuth 2.0 token for the current user.
murgOAuthToken :: Lens' ManagementUnsampledReportsGet' (Maybe OAuthToken)
murgOAuthToken
  = lens _murgOAuthToken
      (\ s a -> s{_murgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
murgFields :: Lens' ManagementUnsampledReportsGet' (Maybe Text)
murgFields
  = lens _murgFields (\ s a -> s{_murgFields = a})

instance GoogleAuth ManagementUnsampledReportsGet'
         where
        authKey = murgKey . _Just
        authToken = murgOAuthToken . _Just

instance GoogleRequest ManagementUnsampledReportsGet'
         where
        type Rs ManagementUnsampledReportsGet' =
             UnsampledReport
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementUnsampledReportsGet'{..}
          = go _murgQuotaUser (Just _murgPrettyPrint)
              _murgWebPropertyId
              _murgUserIP
              _murgProfileId
              _murgAccountId
              _murgKey
              _murgUnsampledReportId
              _murgOAuthToken
              _murgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementUnsampledReportsGetResource)
                      r
                      u
