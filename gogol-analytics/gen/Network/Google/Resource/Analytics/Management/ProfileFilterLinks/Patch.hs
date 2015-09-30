{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Analytics.Management.ProfileFilterLinks.Patch
    (
    -- * REST Resource
      ManagementProfileFilterLinksPatchAPI

    -- * Creating a Request
    , managementProfileFilterLinksPatch
    , ManagementProfileFilterLinksPatch

    -- * Request Lenses
    , mpflpQuotaUser
    , mpflpPrettyPrint
    , mpflpWebPropertyId
    , mpflpUserIp
    , mpflpProfileId
    , mpflpAccountId
    , mpflpKey
    , mpflpLinkId
    , mpflpOauthToken
    , mpflpFields
    , mpflpAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfileFilterLinksPatch@ which the
-- 'ManagementProfileFilterLinksPatch' request conforms to.
type ManagementProfileFilterLinksPatchAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "profileFilterLinks" :>
                     Capture "linkId" Text :>
                       Patch '[JSON] ProfileFilterLink

-- | Update an existing profile filter link. This method supports patch
-- semantics.
--
-- /See:/ 'managementProfileFilterLinksPatch' smart constructor.
data ManagementProfileFilterLinksPatch = ManagementProfileFilterLinksPatch
    { _mpflpQuotaUser     :: !(Maybe Text)
    , _mpflpPrettyPrint   :: !Bool
    , _mpflpWebPropertyId :: !Text
    , _mpflpUserIp        :: !(Maybe Text)
    , _mpflpProfileId     :: !Text
    , _mpflpAccountId     :: !Text
    , _mpflpKey           :: !(Maybe Text)
    , _mpflpLinkId        :: !Text
    , _mpflpOauthToken    :: !(Maybe Text)
    , _mpflpFields        :: !(Maybe Text)
    , _mpflpAlt           :: !Text
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
-- * 'mpflpUserIp'
--
-- * 'mpflpProfileId'
--
-- * 'mpflpAccountId'
--
-- * 'mpflpKey'
--
-- * 'mpflpLinkId'
--
-- * 'mpflpOauthToken'
--
-- * 'mpflpFields'
--
-- * 'mpflpAlt'
managementProfileFilterLinksPatch
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProfileFilterLinksPatch
managementProfileFilterLinksPatch pMpflpWebPropertyId_ pMpflpProfileId_ pMpflpAccountId_ pMpflpLinkId_ =
    ManagementProfileFilterLinksPatch
    { _mpflpQuotaUser = Nothing
    , _mpflpPrettyPrint = False
    , _mpflpWebPropertyId = pMpflpWebPropertyId_
    , _mpflpUserIp = Nothing
    , _mpflpProfileId = pMpflpProfileId_
    , _mpflpAccountId = pMpflpAccountId_
    , _mpflpKey = Nothing
    , _mpflpLinkId = pMpflpLinkId_
    , _mpflpOauthToken = Nothing
    , _mpflpFields = Nothing
    , _mpflpAlt = "json"
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
mpflpUserIp :: Lens' ManagementProfileFilterLinksPatch' (Maybe Text)
mpflpUserIp
  = lens _mpflpUserIp (\ s a -> s{_mpflpUserIp = a})

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
mpflpKey :: Lens' ManagementProfileFilterLinksPatch' (Maybe Text)
mpflpKey = lens _mpflpKey (\ s a -> s{_mpflpKey = a})

-- | ID of the profile filter link to be updated.
mpflpLinkId :: Lens' ManagementProfileFilterLinksPatch' Text
mpflpLinkId
  = lens _mpflpLinkId (\ s a -> s{_mpflpLinkId = a})

-- | OAuth 2.0 token for the current user.
mpflpOauthToken :: Lens' ManagementProfileFilterLinksPatch' (Maybe Text)
mpflpOauthToken
  = lens _mpflpOauthToken
      (\ s a -> s{_mpflpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpflpFields :: Lens' ManagementProfileFilterLinksPatch' (Maybe Text)
mpflpFields
  = lens _mpflpFields (\ s a -> s{_mpflpFields = a})

-- | Data format for the response.
mpflpAlt :: Lens' ManagementProfileFilterLinksPatch' Text
mpflpAlt = lens _mpflpAlt (\ s a -> s{_mpflpAlt = a})

instance GoogleRequest
         ManagementProfileFilterLinksPatch' where
        type Rs ManagementProfileFilterLinksPatch' =
             ProfileFilterLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileFilterLinksPatch{..}
          = go _mpflpQuotaUser _mpflpPrettyPrint
              _mpflpWebPropertyId
              _mpflpUserIp
              _mpflpProfileId
              _mpflpAccountId
              _mpflpKey
              _mpflpLinkId
              _mpflpOauthToken
              _mpflpFields
              _mpflpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfileFilterLinksPatchAPI)
                      r
                      u
