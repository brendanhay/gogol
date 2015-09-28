{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Versions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.versions.update@.
module Network.Google.API.TagManager.Accounts.Containers.Versions.Update
    (
    -- * REST Resource
      AccountsContainersVersionsUpdateAPI

    -- * Creating a Request
    , accountsContainersVersionsUpdate'
    , AccountsContainersVersionsUpdate'

    -- * Request Lenses
    , acccQuotaUser
    , acccPrettyPrint
    , acccContainerId
    , acccUserIp
    , acccFingerprint
    , acccContainerVersionId
    , acccAccountId
    , acccKey
    , acccOauthToken
    , acccFields
    , acccAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.versions.update which the
-- 'AccountsContainersVersionsUpdate'' request conforms to.
type AccountsContainersVersionsUpdateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fingerprint" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Put '[JSON] ContainerVersion

-- | Updates a Container Version.
--
-- /See:/ 'accountsContainersVersionsUpdate'' smart constructor.
data AccountsContainersVersionsUpdate' = AccountsContainersVersionsUpdate'
    { _acccQuotaUser          :: !(Maybe Text)
    , _acccPrettyPrint        :: !Bool
    , _acccContainerId        :: !Text
    , _acccUserIp             :: !(Maybe Text)
    , _acccFingerprint        :: !(Maybe Text)
    , _acccContainerVersionId :: !Text
    , _acccAccountId          :: !Text
    , _acccKey                :: !(Maybe Text)
    , _acccOauthToken         :: !(Maybe Text)
    , _acccFields             :: !(Maybe Text)
    , _acccAlt                :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccQuotaUser'
--
-- * 'acccPrettyPrint'
--
-- * 'acccContainerId'
--
-- * 'acccUserIp'
--
-- * 'acccFingerprint'
--
-- * 'acccContainerVersionId'
--
-- * 'acccAccountId'
--
-- * 'acccKey'
--
-- * 'acccOauthToken'
--
-- * 'acccFields'
--
-- * 'acccAlt'
accountsContainersVersionsUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsUpdate'
accountsContainersVersionsUpdate' pAcccContainerId_ pAcccContainerVersionId_ pAcccAccountId_ =
    AccountsContainersVersionsUpdate'
    { _acccQuotaUser = Nothing
    , _acccPrettyPrint = True
    , _acccContainerId = pAcccContainerId_
    , _acccUserIp = Nothing
    , _acccFingerprint = Nothing
    , _acccContainerVersionId = pAcccContainerVersionId_
    , _acccAccountId = pAcccAccountId_
    , _acccKey = Nothing
    , _acccOauthToken = Nothing
    , _acccFields = Nothing
    , _acccAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acccQuotaUser :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acccQuotaUser
  = lens _acccQuotaUser
      (\ s a -> s{_acccQuotaUser = a})

-- | Returns response with indentations and line breaks.
acccPrettyPrint :: Lens' AccountsContainersVersionsUpdate' Bool
acccPrettyPrint
  = lens _acccPrettyPrint
      (\ s a -> s{_acccPrettyPrint = a})

-- | The GTM Container ID.
acccContainerId :: Lens' AccountsContainersVersionsUpdate' Text
acccContainerId
  = lens _acccContainerId
      (\ s a -> s{_acccContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acccUserIp :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acccUserIp
  = lens _acccUserIp (\ s a -> s{_acccUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container version in storage.
acccFingerprint :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acccFingerprint
  = lens _acccFingerprint
      (\ s a -> s{_acccFingerprint = a})

-- | The GTM Container Version ID.
acccContainerVersionId :: Lens' AccountsContainersVersionsUpdate' Text
acccContainerVersionId
  = lens _acccContainerVersionId
      (\ s a -> s{_acccContainerVersionId = a})

-- | The GTM Account ID.
acccAccountId :: Lens' AccountsContainersVersionsUpdate' Text
acccAccountId
  = lens _acccAccountId
      (\ s a -> s{_acccAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acccKey :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acccKey = lens _acccKey (\ s a -> s{_acccKey = a})

-- | OAuth 2.0 token for the current user.
acccOauthToken :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acccOauthToken
  = lens _acccOauthToken
      (\ s a -> s{_acccOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acccFields :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acccFields
  = lens _acccFields (\ s a -> s{_acccFields = a})

-- | Data format for the response.
acccAlt :: Lens' AccountsContainersVersionsUpdate' Alt
acccAlt = lens _acccAlt (\ s a -> s{_acccAlt = a})

instance GoogleRequest
         AccountsContainersVersionsUpdate' where
        type Rs AccountsContainersVersionsUpdate' =
             ContainerVersion
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsUpdate'{..}
          = go _acccQuotaUser (Just _acccPrettyPrint)
              _acccContainerId
              _acccUserIp
              _acccFingerprint
              _acccContainerVersionId
              _acccAccountId
              _acccKey
              _acccOauthToken
              _acccFields
              (Just _acccAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersVersionsUpdateAPI)
                      r
                      u
