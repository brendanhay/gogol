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
-- Module      : Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfileFilterLinksInsert@.
module Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Insert
    (
    -- * REST Resource
      ManagementProfileFilterLinksInsertResource

    -- * Creating a Request
    , managementProfileFilterLinksInsert'
    , ManagementProfileFilterLinksInsert'

    -- * Request Lenses
    , mpfliQuotaUser
    , mpfliPrettyPrint
    , mpfliWebPropertyId
    , mpfliUserIP
    , mpfliProfileId
    , mpfliPayload
    , mpfliAccountId
    , mpfliKey
    , mpfliOAuthToken
    , mpfliFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfileFilterLinksInsert@ which the
-- 'ManagementProfileFilterLinksInsert'' request conforms to.
type ManagementProfileFilterLinksInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "profileFilterLinks" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] ProfileFilterLink :>
                                     Post '[JSON] ProfileFilterLink

-- | Create a new profile filter link.
--
-- /See:/ 'managementProfileFilterLinksInsert'' smart constructor.
data ManagementProfileFilterLinksInsert' = ManagementProfileFilterLinksInsert'
    { _mpfliQuotaUser     :: !(Maybe Text)
    , _mpfliPrettyPrint   :: !Bool
    , _mpfliWebPropertyId :: !Text
    , _mpfliUserIP        :: !(Maybe Text)
    , _mpfliProfileId     :: !Text
    , _mpfliPayload       :: !ProfileFilterLink
    , _mpfliAccountId     :: !Text
    , _mpfliKey           :: !(Maybe Key)
    , _mpfliOAuthToken    :: !(Maybe OAuthToken)
    , _mpfliFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfileFilterLinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfliQuotaUser'
--
-- * 'mpfliPrettyPrint'
--
-- * 'mpfliWebPropertyId'
--
-- * 'mpfliUserIP'
--
-- * 'mpfliProfileId'
--
-- * 'mpfliPayload'
--
-- * 'mpfliAccountId'
--
-- * 'mpfliKey'
--
-- * 'mpfliOAuthToken'
--
-- * 'mpfliFields'
managementProfileFilterLinksInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> ProfileFilterLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementProfileFilterLinksInsert'
managementProfileFilterLinksInsert' pMpfliWebPropertyId_ pMpfliProfileId_ pMpfliPayload_ pMpfliAccountId_ =
    ManagementProfileFilterLinksInsert'
    { _mpfliQuotaUser = Nothing
    , _mpfliPrettyPrint = False
    , _mpfliWebPropertyId = pMpfliWebPropertyId_
    , _mpfliUserIP = Nothing
    , _mpfliProfileId = pMpfliProfileId_
    , _mpfliPayload = pMpfliPayload_
    , _mpfliAccountId = pMpfliAccountId_
    , _mpfliKey = Nothing
    , _mpfliOAuthToken = Nothing
    , _mpfliFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfliQuotaUser :: Lens' ManagementProfileFilterLinksInsert' (Maybe Text)
mpfliQuotaUser
  = lens _mpfliQuotaUser
      (\ s a -> s{_mpfliQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfliPrettyPrint :: Lens' ManagementProfileFilterLinksInsert' Bool
mpfliPrettyPrint
  = lens _mpfliPrettyPrint
      (\ s a -> s{_mpfliPrettyPrint = a})

-- | Web property Id to create profile filter link for.
mpfliWebPropertyId :: Lens' ManagementProfileFilterLinksInsert' Text
mpfliWebPropertyId
  = lens _mpfliWebPropertyId
      (\ s a -> s{_mpfliWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfliUserIP :: Lens' ManagementProfileFilterLinksInsert' (Maybe Text)
mpfliUserIP
  = lens _mpfliUserIP (\ s a -> s{_mpfliUserIP = a})

-- | Profile ID to create filter link for.
mpfliProfileId :: Lens' ManagementProfileFilterLinksInsert' Text
mpfliProfileId
  = lens _mpfliProfileId
      (\ s a -> s{_mpfliProfileId = a})

-- | Multipart request metadata.
mpfliPayload :: Lens' ManagementProfileFilterLinksInsert' ProfileFilterLink
mpfliPayload
  = lens _mpfliPayload (\ s a -> s{_mpfliPayload = a})

-- | Account ID to create profile filter link for.
mpfliAccountId :: Lens' ManagementProfileFilterLinksInsert' Text
mpfliAccountId
  = lens _mpfliAccountId
      (\ s a -> s{_mpfliAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfliKey :: Lens' ManagementProfileFilterLinksInsert' (Maybe Key)
mpfliKey = lens _mpfliKey (\ s a -> s{_mpfliKey = a})

-- | OAuth 2.0 token for the current user.
mpfliOAuthToken :: Lens' ManagementProfileFilterLinksInsert' (Maybe OAuthToken)
mpfliOAuthToken
  = lens _mpfliOAuthToken
      (\ s a -> s{_mpfliOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfliFields :: Lens' ManagementProfileFilterLinksInsert' (Maybe Text)
mpfliFields
  = lens _mpfliFields (\ s a -> s{_mpfliFields = a})

instance GoogleAuth
         ManagementProfileFilterLinksInsert' where
        authKey = mpfliKey . _Just
        authToken = mpfliOAuthToken . _Just

instance GoogleRequest
         ManagementProfileFilterLinksInsert' where
        type Rs ManagementProfileFilterLinksInsert' =
             ProfileFilterLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileFilterLinksInsert'{..}
          = go _mpfliAccountId _mpfliWebPropertyId
              _mpfliProfileId
              _mpfliQuotaUser
              (Just _mpfliPrettyPrint)
              _mpfliUserIP
              _mpfliFields
              _mpfliKey
              _mpfliOAuthToken
              (Just AltJSON)
              _mpfliPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProfileFilterLinksInsertResource)
                      r
                      u
