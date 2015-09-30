{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersUpdate@.
module TagManager.Accounts.Containers.Update
    (
    -- * REST Resource
      AccountsContainersUpdateAPI

    -- * Creating a Request
    , accountsContainersUpdate
    , AccountsContainersUpdate

    -- * Request Lenses
    , acuQuotaUser
    , acuPrettyPrint
    , acuContainerId
    , acuUserIp
    , acuFingerprint
    , acuAccountId
    , acuKey
    , acuOauthToken
    , acuFields
    , acuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersUpdate@ which the
-- 'AccountsContainersUpdate' request conforms to.
type AccountsContainersUpdateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             QueryParam "fingerprint" Text :>
               Put '[JSON] Container

-- | Updates a Container.
--
-- /See:/ 'accountsContainersUpdate' smart constructor.
data AccountsContainersUpdate = AccountsContainersUpdate
    { _acuQuotaUser   :: !(Maybe Text)
    , _acuPrettyPrint :: !Bool
    , _acuContainerId :: !Text
    , _acuUserIp      :: !(Maybe Text)
    , _acuFingerprint :: !(Maybe Text)
    , _acuAccountId   :: !Text
    , _acuKey         :: !(Maybe Text)
    , _acuOauthToken  :: !(Maybe Text)
    , _acuFields      :: !(Maybe Text)
    , _acuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acuQuotaUser'
--
-- * 'acuPrettyPrint'
--
-- * 'acuContainerId'
--
-- * 'acuUserIp'
--
-- * 'acuFingerprint'
--
-- * 'acuAccountId'
--
-- * 'acuKey'
--
-- * 'acuOauthToken'
--
-- * 'acuFields'
--
-- * 'acuAlt'
accountsContainersUpdate
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersUpdate
accountsContainersUpdate pAcuContainerId_ pAcuAccountId_ =
    AccountsContainersUpdate
    { _acuQuotaUser = Nothing
    , _acuPrettyPrint = True
    , _acuContainerId = pAcuContainerId_
    , _acuUserIp = Nothing
    , _acuFingerprint = Nothing
    , _acuAccountId = pAcuAccountId_
    , _acuKey = Nothing
    , _acuOauthToken = Nothing
    , _acuFields = Nothing
    , _acuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acuQuotaUser :: Lens' AccountsContainersUpdate' (Maybe Text)
acuQuotaUser
  = lens _acuQuotaUser (\ s a -> s{_acuQuotaUser = a})

-- | Returns response with indentations and line breaks.
acuPrettyPrint :: Lens' AccountsContainersUpdate' Bool
acuPrettyPrint
  = lens _acuPrettyPrint
      (\ s a -> s{_acuPrettyPrint = a})

-- | The GTM Container ID.
acuContainerId :: Lens' AccountsContainersUpdate' Text
acuContainerId
  = lens _acuContainerId
      (\ s a -> s{_acuContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acuUserIp :: Lens' AccountsContainersUpdate' (Maybe Text)
acuUserIp
  = lens _acuUserIp (\ s a -> s{_acuUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container in storage.
acuFingerprint :: Lens' AccountsContainersUpdate' (Maybe Text)
acuFingerprint
  = lens _acuFingerprint
      (\ s a -> s{_acuFingerprint = a})

-- | The GTM Account ID.
acuAccountId :: Lens' AccountsContainersUpdate' Text
acuAccountId
  = lens _acuAccountId (\ s a -> s{_acuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acuKey :: Lens' AccountsContainersUpdate' (Maybe Text)
acuKey = lens _acuKey (\ s a -> s{_acuKey = a})

-- | OAuth 2.0 token for the current user.
acuOauthToken :: Lens' AccountsContainersUpdate' (Maybe Text)
acuOauthToken
  = lens _acuOauthToken
      (\ s a -> s{_acuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acuFields :: Lens' AccountsContainersUpdate' (Maybe Text)
acuFields
  = lens _acuFields (\ s a -> s{_acuFields = a})

-- | Data format for the response.
acuAlt :: Lens' AccountsContainersUpdate' Text
acuAlt = lens _acuAlt (\ s a -> s{_acuAlt = a})

instance GoogleRequest AccountsContainersUpdate'
         where
        type Rs AccountsContainersUpdate' = Container
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersUpdate{..}
          = go _acuQuotaUser _acuPrettyPrint _acuContainerId
              _acuUserIp
              _acuFingerprint
              _acuAccountId
              _acuKey
              _acuOauthToken
              _acuFields
              _acuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersUpdateAPI)
                      r
                      u
