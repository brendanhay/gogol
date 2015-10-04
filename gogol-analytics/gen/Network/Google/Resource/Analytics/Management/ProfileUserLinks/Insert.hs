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
-- Module      : Network.Google.Resource.Analytics.Management.ProfileUserLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a new user to the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfileUserLinksInsert@.
module Network.Google.Resource.Analytics.Management.ProfileUserLinks.Insert
    (
    -- * REST Resource
      ManagementProfileUserLinksInsertResource

    -- * Creating a Request
    , managementProfileUserLinksInsert'
    , ManagementProfileUserLinksInsert'

    -- * Request Lenses
    , mpuliQuotaUser
    , mpuliPrettyPrint
    , mpuliWebPropertyId
    , mpuliUserIP
    , mpuliProfileId
    , mpuliPayload
    , mpuliAccountId
    , mpuliKey
    , mpuliOAuthToken
    , mpuliFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfileUserLinksInsert@ which the
-- 'ManagementProfileUserLinksInsert'' request conforms to.
type ManagementProfileUserLinksInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "entityUserLinks" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] EntityUserLink :>
                                     Post '[JSON] EntityUserLink

-- | Adds a new user to the given view (profile).
--
-- /See:/ 'managementProfileUserLinksInsert'' smart constructor.
data ManagementProfileUserLinksInsert' = ManagementProfileUserLinksInsert'
    { _mpuliQuotaUser     :: !(Maybe Text)
    , _mpuliPrettyPrint   :: !Bool
    , _mpuliWebPropertyId :: !Text
    , _mpuliUserIP        :: !(Maybe Text)
    , _mpuliProfileId     :: !Text
    , _mpuliPayload       :: !EntityUserLink
    , _mpuliAccountId     :: !Text
    , _mpuliKey           :: !(Maybe Key)
    , _mpuliOAuthToken    :: !(Maybe OAuthToken)
    , _mpuliFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfileUserLinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpuliQuotaUser'
--
-- * 'mpuliPrettyPrint'
--
-- * 'mpuliWebPropertyId'
--
-- * 'mpuliUserIP'
--
-- * 'mpuliProfileId'
--
-- * 'mpuliPayload'
--
-- * 'mpuliAccountId'
--
-- * 'mpuliKey'
--
-- * 'mpuliOAuthToken'
--
-- * 'mpuliFields'
managementProfileUserLinksInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> EntityUserLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementProfileUserLinksInsert'
managementProfileUserLinksInsert' pMpuliWebPropertyId_ pMpuliProfileId_ pMpuliPayload_ pMpuliAccountId_ =
    ManagementProfileUserLinksInsert'
    { _mpuliQuotaUser = Nothing
    , _mpuliPrettyPrint = False
    , _mpuliWebPropertyId = pMpuliWebPropertyId_
    , _mpuliUserIP = Nothing
    , _mpuliProfileId = pMpuliProfileId_
    , _mpuliPayload = pMpuliPayload_
    , _mpuliAccountId = pMpuliAccountId_
    , _mpuliKey = Nothing
    , _mpuliOAuthToken = Nothing
    , _mpuliFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpuliQuotaUser :: Lens' ManagementProfileUserLinksInsert' (Maybe Text)
mpuliQuotaUser
  = lens _mpuliQuotaUser
      (\ s a -> s{_mpuliQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpuliPrettyPrint :: Lens' ManagementProfileUserLinksInsert' Bool
mpuliPrettyPrint
  = lens _mpuliPrettyPrint
      (\ s a -> s{_mpuliPrettyPrint = a})

-- | Web Property ID to create the user link for.
mpuliWebPropertyId :: Lens' ManagementProfileUserLinksInsert' Text
mpuliWebPropertyId
  = lens _mpuliWebPropertyId
      (\ s a -> s{_mpuliWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpuliUserIP :: Lens' ManagementProfileUserLinksInsert' (Maybe Text)
mpuliUserIP
  = lens _mpuliUserIP (\ s a -> s{_mpuliUserIP = a})

-- | View (Profile) ID to create the user link for.
mpuliProfileId :: Lens' ManagementProfileUserLinksInsert' Text
mpuliProfileId
  = lens _mpuliProfileId
      (\ s a -> s{_mpuliProfileId = a})

-- | Multipart request metadata.
mpuliPayload :: Lens' ManagementProfileUserLinksInsert' EntityUserLink
mpuliPayload
  = lens _mpuliPayload (\ s a -> s{_mpuliPayload = a})

-- | Account ID to create the user link for.
mpuliAccountId :: Lens' ManagementProfileUserLinksInsert' Text
mpuliAccountId
  = lens _mpuliAccountId
      (\ s a -> s{_mpuliAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpuliKey :: Lens' ManagementProfileUserLinksInsert' (Maybe Key)
mpuliKey = lens _mpuliKey (\ s a -> s{_mpuliKey = a})

-- | OAuth 2.0 token for the current user.
mpuliOAuthToken :: Lens' ManagementProfileUserLinksInsert' (Maybe OAuthToken)
mpuliOAuthToken
  = lens _mpuliOAuthToken
      (\ s a -> s{_mpuliOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpuliFields :: Lens' ManagementProfileUserLinksInsert' (Maybe Text)
mpuliFields
  = lens _mpuliFields (\ s a -> s{_mpuliFields = a})

instance GoogleAuth ManagementProfileUserLinksInsert'
         where
        authKey = mpuliKey . _Just
        authToken = mpuliOAuthToken . _Just

instance GoogleRequest
         ManagementProfileUserLinksInsert' where
        type Rs ManagementProfileUserLinksInsert' =
             EntityUserLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileUserLinksInsert'{..}
          = go _mpuliAccountId _mpuliWebPropertyId
              _mpuliProfileId
              _mpuliQuotaUser
              (Just _mpuliPrettyPrint)
              _mpuliUserIP
              _mpuliFields
              _mpuliKey
              _mpuliOAuthToken
              (Just AltJSON)
              _mpuliPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProfileUserLinksInsertResource)
                      r
                      u
