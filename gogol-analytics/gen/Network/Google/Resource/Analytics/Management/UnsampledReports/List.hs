{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.UnsampledReports.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists unsampled reports to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUnsampledReportsList@.
module Analytics.Management.UnsampledReports.List
    (
    -- * REST Resource
      ManagementUnsampledReportsListAPI

    -- * Creating a Request
    , managementUnsampledReportsList
    , ManagementUnsampledReportsList

    -- * Request Lenses
    , murlQuotaUser
    , murlPrettyPrint
    , murlWebPropertyId
    , murlUserIp
    , murlProfileId
    , murlAccountId
    , murlKey
    , murlOauthToken
    , murlStartIndex
    , murlMaxResults
    , murlFields
    , murlAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUnsampledReportsList@ which the
-- 'ManagementUnsampledReportsList' request conforms to.
type ManagementUnsampledReportsListAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "unsampledReports" :>
                     QueryParam "start-index" Int32 :>
                       QueryParam "max-results" Int32 :>
                         Get '[JSON] UnsampledReports

-- | Lists unsampled reports to which the user has access.
--
-- /See:/ 'managementUnsampledReportsList' smart constructor.
data ManagementUnsampledReportsList = ManagementUnsampledReportsList
    { _murlQuotaUser     :: !(Maybe Text)
    , _murlPrettyPrint   :: !Bool
    , _murlWebPropertyId :: !Text
    , _murlUserIp        :: !(Maybe Text)
    , _murlProfileId     :: !Text
    , _murlAccountId     :: !Text
    , _murlKey           :: !(Maybe Text)
    , _murlOauthToken    :: !(Maybe Text)
    , _murlStartIndex    :: !(Maybe Int32)
    , _murlMaxResults    :: !(Maybe Int32)
    , _murlFields        :: !(Maybe Text)
    , _murlAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUnsampledReportsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'murlQuotaUser'
--
-- * 'murlPrettyPrint'
--
-- * 'murlWebPropertyId'
--
-- * 'murlUserIp'
--
-- * 'murlProfileId'
--
-- * 'murlAccountId'
--
-- * 'murlKey'
--
-- * 'murlOauthToken'
--
-- * 'murlStartIndex'
--
-- * 'murlMaxResults'
--
-- * 'murlFields'
--
-- * 'murlAlt'
managementUnsampledReportsList
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementUnsampledReportsList
managementUnsampledReportsList pMurlWebPropertyId_ pMurlProfileId_ pMurlAccountId_ =
    ManagementUnsampledReportsList
    { _murlQuotaUser = Nothing
    , _murlPrettyPrint = False
    , _murlWebPropertyId = pMurlWebPropertyId_
    , _murlUserIp = Nothing
    , _murlProfileId = pMurlProfileId_
    , _murlAccountId = pMurlAccountId_
    , _murlKey = Nothing
    , _murlOauthToken = Nothing
    , _murlStartIndex = Nothing
    , _murlMaxResults = Nothing
    , _murlFields = Nothing
    , _murlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
murlQuotaUser :: Lens' ManagementUnsampledReportsList' (Maybe Text)
murlQuotaUser
  = lens _murlQuotaUser
      (\ s a -> s{_murlQuotaUser = a})

-- | Returns response with indentations and line breaks.
murlPrettyPrint :: Lens' ManagementUnsampledReportsList' Bool
murlPrettyPrint
  = lens _murlPrettyPrint
      (\ s a -> s{_murlPrettyPrint = a})

-- | Web property ID to retrieve unsampled reports for. Must be a specific
-- web property ID, ~all is not supported.
murlWebPropertyId :: Lens' ManagementUnsampledReportsList' Text
murlWebPropertyId
  = lens _murlWebPropertyId
      (\ s a -> s{_murlWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
murlUserIp :: Lens' ManagementUnsampledReportsList' (Maybe Text)
murlUserIp
  = lens _murlUserIp (\ s a -> s{_murlUserIp = a})

-- | View (Profile) ID to retrieve unsampled reports for. Must be a specific
-- view (profile) ID, ~all is not supported.
murlProfileId :: Lens' ManagementUnsampledReportsList' Text
murlProfileId
  = lens _murlProfileId
      (\ s a -> s{_murlProfileId = a})

-- | Account ID to retrieve unsampled reports for. Must be a specific account
-- ID, ~all is not supported.
murlAccountId :: Lens' ManagementUnsampledReportsList' Text
murlAccountId
  = lens _murlAccountId
      (\ s a -> s{_murlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
murlKey :: Lens' ManagementUnsampledReportsList' (Maybe Text)
murlKey = lens _murlKey (\ s a -> s{_murlKey = a})

-- | OAuth 2.0 token for the current user.
murlOauthToken :: Lens' ManagementUnsampledReportsList' (Maybe Text)
murlOauthToken
  = lens _murlOauthToken
      (\ s a -> s{_murlOauthToken = a})

-- | An index of the first unsampled report to retrieve. Use this parameter
-- as a pagination mechanism along with the max-results parameter.
murlStartIndex :: Lens' ManagementUnsampledReportsList' (Maybe Int32)
murlStartIndex
  = lens _murlStartIndex
      (\ s a -> s{_murlStartIndex = a})

-- | The maximum number of unsampled reports to include in this response.
murlMaxResults :: Lens' ManagementUnsampledReportsList' (Maybe Int32)
murlMaxResults
  = lens _murlMaxResults
      (\ s a -> s{_murlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
murlFields :: Lens' ManagementUnsampledReportsList' (Maybe Text)
murlFields
  = lens _murlFields (\ s a -> s{_murlFields = a})

-- | Data format for the response.
murlAlt :: Lens' ManagementUnsampledReportsList' Text
murlAlt = lens _murlAlt (\ s a -> s{_murlAlt = a})

instance GoogleRequest
         ManagementUnsampledReportsList' where
        type Rs ManagementUnsampledReportsList' =
             UnsampledReports
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementUnsampledReportsList{..}
          = go _murlQuotaUser _murlPrettyPrint
              _murlWebPropertyId
              _murlUserIp
              _murlProfileId
              _murlAccountId
              _murlKey
              _murlOauthToken
              _murlStartIndex
              _murlMaxResults
              _murlFields
              _murlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementUnsampledReportsListAPI)
                      r
                      u
