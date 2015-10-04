{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , musriPrettyPrint
    , musriWebPropertyId
    , musriUserIP
    , musriProfileId
    , musriPayload
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
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] UnSampledReport :>
                                     Post '[JSON] UnSampledReport

-- | Create a new unsampled report.
--
-- /See:/ 'managementUnSampledReportsInsert'' smart constructor.
data ManagementUnSampledReportsInsert' = ManagementUnSampledReportsInsert'
    { _musriQuotaUser     :: !(Maybe Text)
    , _musriPrettyPrint   :: !Bool
    , _musriWebPropertyId :: !Text
    , _musriUserIP        :: !(Maybe Text)
    , _musriProfileId     :: !Text
    , _musriPayload       :: !UnSampledReport
    , _musriAccountId     :: !Text
    , _musriKey           :: !(Maybe Key)
    , _musriOAuthToken    :: !(Maybe OAuthToken)
    , _musriFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementUnSampledReportsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'musriQuotaUser'
--
-- * 'musriPrettyPrint'
--
-- * 'musriWebPropertyId'
--
-- * 'musriUserIP'
--
-- * 'musriProfileId'
--
-- * 'musriPayload'
--
-- * 'musriAccountId'
--
-- * 'musriKey'
--
-- * 'musriOAuthToken'
--
-- * 'musriFields'
managementUnSampledReportsInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> UnSampledReport -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementUnSampledReportsInsert'
managementUnSampledReportsInsert' pMusriWebPropertyId_ pMusriProfileId_ pMusriPayload_ pMusriAccountId_ =
    ManagementUnSampledReportsInsert'
    { _musriQuotaUser = Nothing
    , _musriPrettyPrint = False
    , _musriWebPropertyId = pMusriWebPropertyId_
    , _musriUserIP = Nothing
    , _musriProfileId = pMusriProfileId_
    , _musriPayload = pMusriPayload_
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

-- | Multipart request metadata.
musriPayload :: Lens' ManagementUnSampledReportsInsert' UnSampledReport
musriPayload
  = lens _musriPayload (\ s a -> s{_musriPayload = a})

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
          = go _musriAccountId _musriWebPropertyId
              _musriProfileId
              _musriQuotaUser
              (Just _musriPrettyPrint)
              _musriUserIP
              _musriFields
              _musriKey
              _musriOAuthToken
              (Just AltJSON)
              _musriPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementUnSampledReportsInsertResource)
                      r
                      u
