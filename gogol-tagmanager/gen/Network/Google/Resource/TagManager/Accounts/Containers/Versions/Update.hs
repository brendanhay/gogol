{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVersionsUpdate@.
module TagManager.Accounts.Containers.Versions.Update
    (
    -- * REST Resource
      AccountsContainersVersionsUpdateAPI

    -- * Creating a Request
    , accountsContainersVersionsUpdate
    , AccountsContainersVersionsUpdate

    -- * Request Lenses
    , aaQuotaUser
    , aaPrettyPrint
    , aaContainerId
    , aaUserIp
    , aaFingerprint
    , aaContainerVersionId
    , aaAccountId
    , aaKey
    , aaOauthToken
    , aaFields
    , aaAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVersionsUpdate@ which the
-- 'AccountsContainersVersionsUpdate' request conforms to.
type AccountsContainersVersionsUpdateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 QueryParam "fingerprint" Text :>
                   Put '[JSON] ContainerVersion

-- | Updates a Container Version.
--
-- /See:/ 'accountsContainersVersionsUpdate' smart constructor.
data AccountsContainersVersionsUpdate = AccountsContainersVersionsUpdate
    { _aaQuotaUser          :: !(Maybe Text)
    , _aaPrettyPrint        :: !Bool
    , _aaContainerId        :: !Text
    , _aaUserIp             :: !(Maybe Text)
    , _aaFingerprint        :: !(Maybe Text)
    , _aaContainerVersionId :: !Text
    , _aaAccountId          :: !Text
    , _aaKey                :: !(Maybe Text)
    , _aaOauthToken         :: !(Maybe Text)
    , _aaFields             :: !(Maybe Text)
    , _aaAlt                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaQuotaUser'
--
-- * 'aaPrettyPrint'
--
-- * 'aaContainerId'
--
-- * 'aaUserIp'
--
-- * 'aaFingerprint'
--
-- * 'aaContainerVersionId'
--
-- * 'aaAccountId'
--
-- * 'aaKey'
--
-- * 'aaOauthToken'
--
-- * 'aaFields'
--
-- * 'aaAlt'
accountsContainersVersionsUpdate
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsUpdate
accountsContainersVersionsUpdate pAaContainerId_ pAaContainerVersionId_ pAaAccountId_ =
    AccountsContainersVersionsUpdate
    { _aaQuotaUser = Nothing
    , _aaPrettyPrint = True
    , _aaContainerId = pAaContainerId_
    , _aaUserIp = Nothing
    , _aaFingerprint = Nothing
    , _aaContainerVersionId = pAaContainerVersionId_
    , _aaAccountId = pAaAccountId_
    , _aaKey = Nothing
    , _aaOauthToken = Nothing
    , _aaFields = Nothing
    , _aaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaQuotaUser :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
aaQuotaUser
  = lens _aaQuotaUser (\ s a -> s{_aaQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaPrettyPrint :: Lens' AccountsContainersVersionsUpdate' Bool
aaPrettyPrint
  = lens _aaPrettyPrint
      (\ s a -> s{_aaPrettyPrint = a})

-- | The GTM Container ID.
aaContainerId :: Lens' AccountsContainersVersionsUpdate' Text
aaContainerId
  = lens _aaContainerId
      (\ s a -> s{_aaContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaUserIp :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
aaUserIp = lens _aaUserIp (\ s a -> s{_aaUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container version in storage.
aaFingerprint :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
aaFingerprint
  = lens _aaFingerprint
      (\ s a -> s{_aaFingerprint = a})

-- | The GTM Container Version ID.
aaContainerVersionId :: Lens' AccountsContainersVersionsUpdate' Text
aaContainerVersionId
  = lens _aaContainerVersionId
      (\ s a -> s{_aaContainerVersionId = a})

-- | The GTM Account ID.
aaAccountId :: Lens' AccountsContainersVersionsUpdate' Text
aaAccountId
  = lens _aaAccountId (\ s a -> s{_aaAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaKey :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
aaKey = lens _aaKey (\ s a -> s{_aaKey = a})

-- | OAuth 2.0 token for the current user.
aaOauthToken :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
aaOauthToken
  = lens _aaOauthToken (\ s a -> s{_aaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaFields :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
aaFields = lens _aaFields (\ s a -> s{_aaFields = a})

-- | Data format for the response.
aaAlt :: Lens' AccountsContainersVersionsUpdate' Text
aaAlt = lens _aaAlt (\ s a -> s{_aaAlt = a})

instance GoogleRequest
         AccountsContainersVersionsUpdate' where
        type Rs AccountsContainersVersionsUpdate' =
             ContainerVersion
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsUpdate{..}
          = go _aaQuotaUser _aaPrettyPrint _aaContainerId
              _aaUserIp
              _aaFingerprint
              _aaContainerVersionId
              _aaAccountId
              _aaKey
              _aaOauthToken
              _aaFields
              _aaAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersVersionsUpdateAPI)
                      r
                      u
