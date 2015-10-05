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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update an existing profile filter link. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileFilterLinksPatch@.
module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Patch
    (
    -- * REST Resource
      ManagementProFileFilterLinksPatchResource

    -- * Creating a Request
    , managementProFileFilterLinksPatch'
    , ManagementProFileFilterLinksPatch'

    -- * Request Lenses
    , mpfflpQuotaUser
    , mpfflpPrettyPrint
    , mpfflpWebPropertyId
    , mpfflpUserIP
    , mpfflpProFileId
    , mpfflpPayload
    , mpfflpAccountId
    , mpfflpKey
    , mpfflpLinkId
    , mpfflpOAuthToken
    , mpfflpFields
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileFilterLinksPatch@ which the
-- 'ManagementProFileFilterLinksPatch'' request conforms to.
type ManagementProFileFilterLinksPatchResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "profileFilterLinks" :>
                     Capture "linkId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] ProFileFilterLink :>
                                       Patch '[JSON] ProFileFilterLink

-- | Update an existing profile filter link. This method supports patch
-- semantics.
--
-- /See:/ 'managementProFileFilterLinksPatch'' smart constructor.
data ManagementProFileFilterLinksPatch' = ManagementProFileFilterLinksPatch'
    { _mpfflpQuotaUser :: !(Maybe Text)
    , _mpfflpPrettyPrint :: !Bool
    , _mpfflpWebPropertyId :: !Text
    , _mpfflpUserIP :: !(Maybe Text)
    , _mpfflpProFileId :: !Text
    , _mpfflpPayload :: !ProFileFilterLink
    , _mpfflpAccountId :: !Text
    , _mpfflpKey :: !(Maybe Key)
    , _mpfflpLinkId :: !Text
    , _mpfflpOAuthToken :: !(Maybe OAuthToken)
    , _mpfflpFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileFilterLinksPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfflpQuotaUser'
--
-- * 'mpfflpPrettyPrint'
--
-- * 'mpfflpWebPropertyId'
--
-- * 'mpfflpUserIP'
--
-- * 'mpfflpProFileId'
--
-- * 'mpfflpPayload'
--
-- * 'mpfflpAccountId'
--
-- * 'mpfflpKey'
--
-- * 'mpfflpLinkId'
--
-- * 'mpfflpOAuthToken'
--
-- * 'mpfflpFields'
managementProFileFilterLinksPatch'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> ProFileFilterLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProFileFilterLinksPatch'
managementProFileFilterLinksPatch' pMpfflpWebPropertyId_ pMpfflpProFileId_ pMpfflpPayload_ pMpfflpAccountId_ pMpfflpLinkId_ = 
    ManagementProFileFilterLinksPatch'
    { _mpfflpQuotaUser = Nothing
    , _mpfflpPrettyPrint = False
    , _mpfflpWebPropertyId = pMpfflpWebPropertyId_
    , _mpfflpUserIP = Nothing
    , _mpfflpProFileId = pMpfflpProFileId_
    , _mpfflpPayload = pMpfflpPayload_
    , _mpfflpAccountId = pMpfflpAccountId_
    , _mpfflpKey = Nothing
    , _mpfflpLinkId = pMpfflpLinkId_
    , _mpfflpOAuthToken = Nothing
    , _mpfflpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfflpQuotaUser :: Lens' ManagementProFileFilterLinksPatch' (Maybe Text)
mpfflpQuotaUser
  = lens _mpfflpQuotaUser
      (\ s a -> s{_mpfflpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfflpPrettyPrint :: Lens' ManagementProFileFilterLinksPatch' Bool
mpfflpPrettyPrint
  = lens _mpfflpPrettyPrint
      (\ s a -> s{_mpfflpPrettyPrint = a})

-- | Web property Id to which profile filter link belongs
mpfflpWebPropertyId :: Lens' ManagementProFileFilterLinksPatch' Text
mpfflpWebPropertyId
  = lens _mpfflpWebPropertyId
      (\ s a -> s{_mpfflpWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfflpUserIP :: Lens' ManagementProFileFilterLinksPatch' (Maybe Text)
mpfflpUserIP
  = lens _mpfflpUserIP (\ s a -> s{_mpfflpUserIP = a})

-- | Profile ID to which filter link belongs
mpfflpProFileId :: Lens' ManagementProFileFilterLinksPatch' Text
mpfflpProFileId
  = lens _mpfflpProFileId
      (\ s a -> s{_mpfflpProFileId = a})

-- | Multipart request metadata.
mpfflpPayload :: Lens' ManagementProFileFilterLinksPatch' ProFileFilterLink
mpfflpPayload
  = lens _mpfflpPayload
      (\ s a -> s{_mpfflpPayload = a})

-- | Account ID to which profile filter link belongs.
mpfflpAccountId :: Lens' ManagementProFileFilterLinksPatch' Text
mpfflpAccountId
  = lens _mpfflpAccountId
      (\ s a -> s{_mpfflpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfflpKey :: Lens' ManagementProFileFilterLinksPatch' (Maybe Key)
mpfflpKey
  = lens _mpfflpKey (\ s a -> s{_mpfflpKey = a})

-- | ID of the profile filter link to be updated.
mpfflpLinkId :: Lens' ManagementProFileFilterLinksPatch' Text
mpfflpLinkId
  = lens _mpfflpLinkId (\ s a -> s{_mpfflpLinkId = a})

-- | OAuth 2.0 token for the current user.
mpfflpOAuthToken :: Lens' ManagementProFileFilterLinksPatch' (Maybe OAuthToken)
mpfflpOAuthToken
  = lens _mpfflpOAuthToken
      (\ s a -> s{_mpfflpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfflpFields :: Lens' ManagementProFileFilterLinksPatch' (Maybe Text)
mpfflpFields
  = lens _mpfflpFields (\ s a -> s{_mpfflpFields = a})

instance GoogleAuth
         ManagementProFileFilterLinksPatch' where
        authKey = mpfflpKey . _Just
        authToken = mpfflpOAuthToken . _Just

instance GoogleRequest
         ManagementProFileFilterLinksPatch' where
        type Rs ManagementProFileFilterLinksPatch' =
             ProFileFilterLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProFileFilterLinksPatch'{..}
          = go _mpfflpAccountId _mpfflpWebPropertyId
              _mpfflpProFileId
              _mpfflpLinkId
              _mpfflpQuotaUser
              (Just _mpfflpPrettyPrint)
              _mpfflpUserIP
              _mpfflpFields
              _mpfflpKey
              _mpfflpOAuthToken
              (Just AltJSON)
              _mpfflpPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProFileFilterLinksPatchResource)
                      r
                      u
