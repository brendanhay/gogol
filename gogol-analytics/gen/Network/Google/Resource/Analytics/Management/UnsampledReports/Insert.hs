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
-- Module      : Network.Google.Resource.Analytics.Management.UnsampledReports.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new unsampled report.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUnsampledReportsInsert@.
module Network.Google.Resource.Analytics.Management.UnsampledReports.Insert
    (
    -- * REST Resource
      ManagementUnsampledReportsInsertResource

    -- * Creating a Request
    , managementUnsampledReportsInsert'
    , ManagementUnsampledReportsInsert'

    -- * Request Lenses
    , muriQuotaUser
    , muriUnsampledReport
    , muriPrettyPrint
    , muriWebPropertyId
    , muriUserIP
    , muriProfileId
    , muriAccountId
    , muriKey
    , muriOAuthToken
    , muriFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUnsampledReportsInsert@ which the
-- 'ManagementUnsampledReportsInsert'' request conforms to.
type ManagementUnsampledReportsInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "unsampledReports" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] UnsampledReport :>
                                     Post '[JSON] UnsampledReport

-- | Create a new unsampled report.
--
-- /See:/ 'managementUnsampledReportsInsert'' smart constructor.
data ManagementUnsampledReportsInsert' = ManagementUnsampledReportsInsert'
    { _muriQuotaUser       :: !(Maybe Text)
    , _muriUnsampledReport :: !UnsampledReport
    , _muriPrettyPrint     :: !Bool
    , _muriWebPropertyId   :: !Text
    , _muriUserIP          :: !(Maybe Text)
    , _muriProfileId       :: !Text
    , _muriAccountId       :: !Text
    , _muriKey             :: !(Maybe Key)
    , _muriOAuthToken      :: !(Maybe OAuthToken)
    , _muriFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUnsampledReportsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muriQuotaUser'
--
-- * 'muriUnsampledReport'
--
-- * 'muriPrettyPrint'
--
-- * 'muriWebPropertyId'
--
-- * 'muriUserIP'
--
-- * 'muriProfileId'
--
-- * 'muriAccountId'
--
-- * 'muriKey'
--
-- * 'muriOAuthToken'
--
-- * 'muriFields'
managementUnsampledReportsInsert'
    :: UnsampledReport -- ^ 'UnsampledReport'
    -> Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementUnsampledReportsInsert'
managementUnsampledReportsInsert' pMuriUnsampledReport_ pMuriWebPropertyId_ pMuriProfileId_ pMuriAccountId_ =
    ManagementUnsampledReportsInsert'
    { _muriQuotaUser = Nothing
    , _muriUnsampledReport = pMuriUnsampledReport_
    , _muriPrettyPrint = False
    , _muriWebPropertyId = pMuriWebPropertyId_
    , _muriUserIP = Nothing
    , _muriProfileId = pMuriProfileId_
    , _muriAccountId = pMuriAccountId_
    , _muriKey = Nothing
    , _muriOAuthToken = Nothing
    , _muriFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
muriQuotaUser :: Lens' ManagementUnsampledReportsInsert' (Maybe Text)
muriQuotaUser
  = lens _muriQuotaUser
      (\ s a -> s{_muriQuotaUser = a})

-- | Multipart request metadata.
muriUnsampledReport :: Lens' ManagementUnsampledReportsInsert' UnsampledReport
muriUnsampledReport
  = lens _muriUnsampledReport
      (\ s a -> s{_muriUnsampledReport = a})

-- | Returns response with indentations and line breaks.
muriPrettyPrint :: Lens' ManagementUnsampledReportsInsert' Bool
muriPrettyPrint
  = lens _muriPrettyPrint
      (\ s a -> s{_muriPrettyPrint = a})

-- | Web property ID to create the unsampled report for.
muriWebPropertyId :: Lens' ManagementUnsampledReportsInsert' Text
muriWebPropertyId
  = lens _muriWebPropertyId
      (\ s a -> s{_muriWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
muriUserIP :: Lens' ManagementUnsampledReportsInsert' (Maybe Text)
muriUserIP
  = lens _muriUserIP (\ s a -> s{_muriUserIP = a})

-- | View (Profile) ID to create the unsampled report for.
muriProfileId :: Lens' ManagementUnsampledReportsInsert' Text
muriProfileId
  = lens _muriProfileId
      (\ s a -> s{_muriProfileId = a})

-- | Account ID to create the unsampled report for.
muriAccountId :: Lens' ManagementUnsampledReportsInsert' Text
muriAccountId
  = lens _muriAccountId
      (\ s a -> s{_muriAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
muriKey :: Lens' ManagementUnsampledReportsInsert' (Maybe Key)
muriKey = lens _muriKey (\ s a -> s{_muriKey = a})

-- | OAuth 2.0 token for the current user.
muriOAuthToken :: Lens' ManagementUnsampledReportsInsert' (Maybe OAuthToken)
muriOAuthToken
  = lens _muriOAuthToken
      (\ s a -> s{_muriOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
muriFields :: Lens' ManagementUnsampledReportsInsert' (Maybe Text)
muriFields
  = lens _muriFields (\ s a -> s{_muriFields = a})

instance GoogleAuth ManagementUnsampledReportsInsert'
         where
        authKey = muriKey . _Just
        authToken = muriOAuthToken . _Just

instance GoogleRequest
         ManagementUnsampledReportsInsert' where
        type Rs ManagementUnsampledReportsInsert' =
             UnsampledReport
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementUnsampledReportsInsert'{..}
          = go _muriQuotaUser (Just _muriPrettyPrint)
              _muriWebPropertyId
              _muriUserIP
              _muriProfileId
              _muriAccountId
              _muriKey
              _muriOAuthToken
              _muriFields
              (Just AltJSON)
              _muriUnsampledReport
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementUnsampledReportsInsertResource)
                      r
                      u
