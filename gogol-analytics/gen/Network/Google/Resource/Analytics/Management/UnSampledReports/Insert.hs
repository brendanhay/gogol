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
-- Module      : Network.Google.Resource.Analytics.Management.UnSampledReports.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new unsampled report.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementUnSampledReportsInsert@.
module Network.Google.Resource.Analytics.Management.UnSampledReports.Insert
    (
    -- * REST Resource
      ManagementUnSampledReportsInsertResource

    -- * Creating a Request
    , managementUnSampledReportsInsert'
    , ManagementUnSampledReportsInsert'

    -- * Request Lenses
    , musriQuotaUser
    , musriUnSampledReport
    , musriPrettyPrint
    , musriWebPropertyId
    , musriUserIP
    , musriProfileId
    , musriAccountId
    , musriKey
    , musriOAuthToken
    , musriFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementUnSampledReportsInsert@ which the
-- 'ManagementUnSampledReportsInsert'' request conforms to.
type ManagementUnSampledReportsInsertResource =
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
                                   ReqBody '[JSON] UnSampledReport :>
                                     Post '[JSON] UnSampledReport

-- | Create a new unsampled report.
--
-- /See:/ 'managementUnSampledReportsInsert'' smart constructor.
data ManagementUnSampledReportsInsert' = ManagementUnSampledReportsInsert'
    { _musriQuotaUser       :: !(Maybe Text)
    , _musriUnSampledReport :: !UnSampledReport
    , _musriPrettyPrint     :: !Bool
    , _musriWebPropertyId   :: !Text
    , _musriUserIP          :: !(Maybe Text)
    , _musriProfileId       :: !Text
    , _musriAccountId       :: !Text
    , _musriKey             :: !(Maybe Key)
    , _musriOAuthToken      :: !(Maybe OAuthToken)
    , _musriFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUnSampledReportsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'musriQuotaUser'
--
-- * 'musriUnSampledReport'
--
-- * 'musriPrettyPrint'
--
-- * 'musriWebPropertyId'
--
-- * 'musriUserIP'
--
-- * 'musriProfileId'
--
-- * 'musriAccountId'
--
-- * 'musriKey'
--
-- * 'musriOAuthToken'
--
-- * 'musriFields'
managementUnSampledReportsInsert'
    :: UnSampledReport -- ^ 'UnSampledReport'
    -> Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementUnSampledReportsInsert'
managementUnSampledReportsInsert' pMusriUnSampledReport_ pMusriWebPropertyId_ pMusriProfileId_ pMusriAccountId_ =
    ManagementUnSampledReportsInsert'
    { _musriQuotaUser = Nothing
    , _musriUnSampledReport = pMusriUnSampledReport_
    , _musriPrettyPrint = False
    , _musriWebPropertyId = pMusriWebPropertyId_
    , _musriUserIP = Nothing
    , _musriProfileId = pMusriProfileId_
    , _musriAccountId = pMusriAccountId_
    , _musriKey = Nothing
    , _musriOAuthToken = Nothing
    , _musriFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
musriQuotaUser :: Lens' ManagementUnSampledReportsInsert' (Maybe Text)
musriQuotaUser
  = lens _musriQuotaUser
      (\ s a -> s{_musriQuotaUser = a})

-- | Multipart request metadata.
musriUnSampledReport :: Lens' ManagementUnSampledReportsInsert' UnSampledReport
musriUnSampledReport
  = lens _musriUnSampledReport
      (\ s a -> s{_musriUnSampledReport = a})

-- | Returns response with indentations and line breaks.
musriPrettyPrint :: Lens' ManagementUnSampledReportsInsert' Bool
musriPrettyPrint
  = lens _musriPrettyPrint
      (\ s a -> s{_musriPrettyPrint = a})

-- | Web property ID to create the unsampled report for.
musriWebPropertyId :: Lens' ManagementUnSampledReportsInsert' Text
musriWebPropertyId
  = lens _musriWebPropertyId
      (\ s a -> s{_musriWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
musriUserIP :: Lens' ManagementUnSampledReportsInsert' (Maybe Text)
musriUserIP
  = lens _musriUserIP (\ s a -> s{_musriUserIP = a})

-- | View (Profile) ID to create the unsampled report for.
musriProfileId :: Lens' ManagementUnSampledReportsInsert' Text
musriProfileId
  = lens _musriProfileId
      (\ s a -> s{_musriProfileId = a})

-- | Account ID to create the unsampled report for.
musriAccountId :: Lens' ManagementUnSampledReportsInsert' Text
musriAccountId
  = lens _musriAccountId
      (\ s a -> s{_musriAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
musriKey :: Lens' ManagementUnSampledReportsInsert' (Maybe Key)
musriKey = lens _musriKey (\ s a -> s{_musriKey = a})

-- | OAuth 2.0 token for the current user.
musriOAuthToken :: Lens' ManagementUnSampledReportsInsert' (Maybe OAuthToken)
musriOAuthToken
  = lens _musriOAuthToken
      (\ s a -> s{_musriOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
musriFields :: Lens' ManagementUnSampledReportsInsert' (Maybe Text)
musriFields
  = lens _musriFields (\ s a -> s{_musriFields = a})

instance GoogleAuth ManagementUnSampledReportsInsert'
         where
        authKey = musriKey . _Just
        authToken = musriOAuthToken . _Just

instance GoogleRequest
         ManagementUnSampledReportsInsert' where
        type Rs ManagementUnSampledReportsInsert' =
             UnSampledReport
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementUnSampledReportsInsert'{..}
          = go _musriQuotaUser (Just _musriPrettyPrint)
              _musriWebPropertyId
              _musriUserIP
              _musriProfileId
              _musriAccountId
              _musriKey
              _musriOAuthToken
              _musriFields
              (Just AltJSON)
              _musriUnSampledReport
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementUnSampledReportsInsertResource)
                      r
                      u
