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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileFilterLinksInsert@.
module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Insert
    (
    -- * REST Resource
      ManagementProFileFilterLinksInsertResource

    -- * Creating a Request
    , managementProFileFilterLinksInsert'
    , ManagementProFileFilterLinksInsert'

    -- * Request Lenses
    , mpffliQuotaUser
    , mpffliPrettyPrint
    , mpffliWebPropertyId
    , mpffliUserIP
    , mpffliProFileId
    , mpffliPayload
    , mpffliAccountId
    , mpffliKey
    , mpffliOAuthToken
    , mpffliFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileFilterLinksInsert@ which the
-- 'ManagementProFileFilterLinksInsert'' request conforms to.
type ManagementProFileFilterLinksInsertResource =
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
                                   ReqBody '[JSON] ProFileFilterLink :>
                                     Post '[JSON] ProFileFilterLink

-- | Create a new profile filter link.
--
-- /See:/ 'managementProFileFilterLinksInsert'' smart constructor.
data ManagementProFileFilterLinksInsert' = ManagementProFileFilterLinksInsert'
    { _mpffliQuotaUser     :: !(Maybe Text)
    , _mpffliPrettyPrint   :: !Bool
    , _mpffliWebPropertyId :: !Text
    , _mpffliUserIP        :: !(Maybe Text)
    , _mpffliProFileId     :: !Text
    , _mpffliPayload       :: !ProFileFilterLink
    , _mpffliAccountId     :: !Text
    , _mpffliKey           :: !(Maybe Key)
    , _mpffliOAuthToken    :: !(Maybe OAuthToken)
    , _mpffliFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileFilterLinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpffliQuotaUser'
--
-- * 'mpffliPrettyPrint'
--
-- * 'mpffliWebPropertyId'
--
-- * 'mpffliUserIP'
--
-- * 'mpffliProFileId'
--
-- * 'mpffliPayload'
--
-- * 'mpffliAccountId'
--
-- * 'mpffliKey'
--
-- * 'mpffliOAuthToken'
--
-- * 'mpffliFields'
managementProFileFilterLinksInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> ProFileFilterLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementProFileFilterLinksInsert'
managementProFileFilterLinksInsert' pMpffliWebPropertyId_ pMpffliProFileId_ pMpffliPayload_ pMpffliAccountId_ =
    ManagementProFileFilterLinksInsert'
    { _mpffliQuotaUser = Nothing
    , _mpffliPrettyPrint = False
    , _mpffliWebPropertyId = pMpffliWebPropertyId_
    , _mpffliUserIP = Nothing
    , _mpffliProFileId = pMpffliProFileId_
    , _mpffliPayload = pMpffliPayload_
    , _mpffliAccountId = pMpffliAccountId_
    , _mpffliKey = Nothing
    , _mpffliOAuthToken = Nothing
    , _mpffliFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpffliQuotaUser :: Lens' ManagementProFileFilterLinksInsert' (Maybe Text)
mpffliQuotaUser
  = lens _mpffliQuotaUser
      (\ s a -> s{_mpffliQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpffliPrettyPrint :: Lens' ManagementProFileFilterLinksInsert' Bool
mpffliPrettyPrint
  = lens _mpffliPrettyPrint
      (\ s a -> s{_mpffliPrettyPrint = a})

-- | Web property Id to create profile filter link for.
mpffliWebPropertyId :: Lens' ManagementProFileFilterLinksInsert' Text
mpffliWebPropertyId
  = lens _mpffliWebPropertyId
      (\ s a -> s{_mpffliWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpffliUserIP :: Lens' ManagementProFileFilterLinksInsert' (Maybe Text)
mpffliUserIP
  = lens _mpffliUserIP (\ s a -> s{_mpffliUserIP = a})

-- | Profile ID to create filter link for.
mpffliProFileId :: Lens' ManagementProFileFilterLinksInsert' Text
mpffliProFileId
  = lens _mpffliProFileId
      (\ s a -> s{_mpffliProFileId = a})

-- | Multipart request metadata.
mpffliPayload :: Lens' ManagementProFileFilterLinksInsert' ProFileFilterLink
mpffliPayload
  = lens _mpffliPayload
      (\ s a -> s{_mpffliPayload = a})

-- | Account ID to create profile filter link for.
mpffliAccountId :: Lens' ManagementProFileFilterLinksInsert' Text
mpffliAccountId
  = lens _mpffliAccountId
      (\ s a -> s{_mpffliAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpffliKey :: Lens' ManagementProFileFilterLinksInsert' (Maybe Key)
mpffliKey
  = lens _mpffliKey (\ s a -> s{_mpffliKey = a})

-- | OAuth 2.0 token for the current user.
mpffliOAuthToken :: Lens' ManagementProFileFilterLinksInsert' (Maybe OAuthToken)
mpffliOAuthToken
  = lens _mpffliOAuthToken
      (\ s a -> s{_mpffliOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpffliFields :: Lens' ManagementProFileFilterLinksInsert' (Maybe Text)
mpffliFields
  = lens _mpffliFields (\ s a -> s{_mpffliFields = a})

instance GoogleAuth
         ManagementProFileFilterLinksInsert' where
        authKey = mpffliKey . _Just
        authToken = mpffliOAuthToken . _Just

instance GoogleRequest
         ManagementProFileFilterLinksInsert' where
        type Rs ManagementProFileFilterLinksInsert' =
             ProFileFilterLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProFileFilterLinksInsert'{..}
          = go _mpffliAccountId _mpffliWebPropertyId
              _mpffliProFileId
              _mpffliQuotaUser
              (Just _mpffliPrettyPrint)
              _mpffliUserIP
              _mpffliFields
              _mpffliKey
              _mpffliOAuthToken
              (Just AltJSON)
              _mpffliPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProFileFilterLinksInsertResource)
                      r
                      u
