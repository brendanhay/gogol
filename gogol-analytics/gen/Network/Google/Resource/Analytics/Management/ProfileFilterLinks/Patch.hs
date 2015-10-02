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
-- Module      : Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update an existing profile filter link. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfileFilterLinksPatch@.
module Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Patch
    (
    -- * REST Resource
      ManagementProfileFilterLinksPatchResource

    -- * Creating a Request
    , managementProfileFilterLinksPatch'
    , ManagementProfileFilterLinksPatch'

    -- * Request Lenses
    , mpflpQuotaUser
    , mpflpPrettyPrint
    , mpflpWebPropertyId
    , mpflpUserIP
    , mpflpProfileId
    , mpflpAccountId
    , mpflpKey
    , mpflpLinkId
    , mpflpOAuthToken
    , mpflpProfileFilterLink
    , mpflpFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfileFilterLinksPatch@ which the
-- 'ManagementProfileFilterLinksPatch'' request conforms to.
type ManagementProfileFilterLinksPatchResource =
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
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] ProfileFilterLink :>
                                       Patch '[JSON] ProfileFilterLink

-- | Update an existing profile filter link. This method supports patch
-- semantics.
--
-- /See:/ 'managementProfileFilterLinksPatch'' smart constructor.
data ManagementProfileFilterLinksPatch' = ManagementProfileFilterLinksPatch'
    { _mpflpQuotaUser         :: !(Maybe Text)
    , _mpflpPrettyPrint       :: !Bool
    , _mpflpWebPropertyId     :: !Text
    , _mpflpUserIP            :: !(Maybe Text)
    , _mpflpProfileId         :: !Text
    , _mpflpAccountId         :: !Text
    , _mpflpKey               :: !(Maybe Key)
    , _mpflpLinkId            :: !Text
    , _mpflpOAuthToken        :: !(Maybe OAuthToken)
    , _mpflpProfileFilterLink :: !ProfileFilterLink
    , _mpflpFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfileFilterLinksPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpflpQuotaUser'
--
-- * 'mpflpPrettyPrint'
--
-- * 'mpflpWebPropertyId'
--
-- * 'mpflpUserIP'
--
-- * 'mpflpProfileId'
--
-- * 'mpflpAccountId'
--
-- * 'mpflpKey'
--
-- * 'mpflpLinkId'
--
-- * 'mpflpOAuthToken'
--
-- * 'mpflpProfileFilterLink'
--
-- * 'mpflpFields'
managementProfileFilterLinksPatch'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ProfileFilterLink -- ^ 'ProfileFilterLink'
    -> ManagementProfileFilterLinksPatch'
managementProfileFilterLinksPatch' pMpflpWebPropertyId_ pMpflpProfileId_ pMpflpAccountId_ pMpflpLinkId_ pMpflpProfileFilterLink_ =
    ManagementProfileFilterLinksPatch'
    { _mpflpQuotaUser = Nothing
    , _mpflpPrettyPrint = False
    , _mpflpWebPropertyId = pMpflpWebPropertyId_
    , _mpflpUserIP = Nothing
    , _mpflpProfileId = pMpflpProfileId_
    , _mpflpAccountId = pMpflpAccountId_
    , _mpflpKey = Nothing
    , _mpflpLinkId = pMpflpLinkId_
    , _mpflpOAuthToken = Nothing
    , _mpflpProfileFilterLink = pMpflpProfileFilterLink_
    , _mpflpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpflpQuotaUser :: Lens' ManagementProfileFilterLinksPatch' (Maybe Text)
mpflpQuotaUser
  = lens _mpflpQuotaUser
      (\ s a -> s{_mpflpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpflpPrettyPrint :: Lens' ManagementProfileFilterLinksPatch' Bool
mpflpPrettyPrint
  = lens _mpflpPrettyPrint
      (\ s a -> s{_mpflpPrettyPrint = a})

-- | Web property Id to which profile filter link belongs
mpflpWebPropertyId :: Lens' ManagementProfileFilterLinksPatch' Text
mpflpWebPropertyId
  = lens _mpflpWebPropertyId
      (\ s a -> s{_mpflpWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpflpUserIP :: Lens' ManagementProfileFilterLinksPatch' (Maybe Text)
mpflpUserIP
  = lens _mpflpUserIP (\ s a -> s{_mpflpUserIP = a})

-- | Profile ID to which filter link belongs
mpflpProfileId :: Lens' ManagementProfileFilterLinksPatch' Text
mpflpProfileId
  = lens _mpflpProfileId
      (\ s a -> s{_mpflpProfileId = a})

-- | Account ID to which profile filter link belongs.
mpflpAccountId :: Lens' ManagementProfileFilterLinksPatch' Text
mpflpAccountId
  = lens _mpflpAccountId
      (\ s a -> s{_mpflpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpflpKey :: Lens' ManagementProfileFilterLinksPatch' (Maybe Key)
mpflpKey = lens _mpflpKey (\ s a -> s{_mpflpKey = a})

-- | ID of the profile filter link to be updated.
mpflpLinkId :: Lens' ManagementProfileFilterLinksPatch' Text
mpflpLinkId
  = lens _mpflpLinkId (\ s a -> s{_mpflpLinkId = a})

-- | OAuth 2.0 token for the current user.
mpflpOAuthToken :: Lens' ManagementProfileFilterLinksPatch' (Maybe OAuthToken)
mpflpOAuthToken
  = lens _mpflpOAuthToken
      (\ s a -> s{_mpflpOAuthToken = a})

-- | Multipart request metadata.
mpflpProfileFilterLink :: Lens' ManagementProfileFilterLinksPatch' ProfileFilterLink
mpflpProfileFilterLink
  = lens _mpflpProfileFilterLink
      (\ s a -> s{_mpflpProfileFilterLink = a})

-- | Selector specifying which fields to include in a partial response.
mpflpFields :: Lens' ManagementProfileFilterLinksPatch' (Maybe Text)
mpflpFields
  = lens _mpflpFields (\ s a -> s{_mpflpFields = a})

instance GoogleAuth
         ManagementProfileFilterLinksPatch' where
        authKey = mpflpKey . _Just
        authToken = mpflpOAuthToken . _Just

instance GoogleRequest
         ManagementProfileFilterLinksPatch' where
        type Rs ManagementProfileFilterLinksPatch' =
             ProfileFilterLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileFilterLinksPatch'{..}
          = go _mpflpQuotaUser (Just _mpflpPrettyPrint)
              _mpflpWebPropertyId
              _mpflpUserIP
              _mpflpProfileId
              _mpflpAccountId
              _mpflpKey
              _mpflpLinkId
              _mpflpOAuthToken
              _mpflpFields
              (Just AltJSON)
              _mpflpProfileFilterLink
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProfileFilterLinksPatchResource)
                      r
                      u
