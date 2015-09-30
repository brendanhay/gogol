{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVariablesUpdate@.
module TagManager.Accounts.Containers.Variables.Update
    (
    -- * REST Resource
      AccountsContainersVariablesUpdateAPI

    -- * Creating a Request
    , accountsContainersVariablesUpdate
    , AccountsContainersVariablesUpdate

    -- * Request Lenses
    , acvuQuotaUser
    , acvuPrettyPrint
    , acvuContainerId
    , acvuUserIp
    , acvuFingerprint
    , acvuVariableId
    , acvuAccountId
    , acvuKey
    , acvuOauthToken
    , acvuFields
    , acvuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVariablesUpdate@ which the
-- 'AccountsContainersVariablesUpdate' request conforms to.
type AccountsContainersVariablesUpdateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "variables" :>
               Capture "variableId" Text :>
                 QueryParam "fingerprint" Text :> Put '[JSON] Variable

-- | Updates a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesUpdate' smart constructor.
data AccountsContainersVariablesUpdate = AccountsContainersVariablesUpdate
    { _acvuQuotaUser   :: !(Maybe Text)
    , _acvuPrettyPrint :: !Bool
    , _acvuContainerId :: !Text
    , _acvuUserIp      :: !(Maybe Text)
    , _acvuFingerprint :: !(Maybe Text)
    , _acvuVariableId  :: !Text
    , _acvuAccountId   :: !Text
    , _acvuKey         :: !(Maybe Text)
    , _acvuOauthToken  :: !(Maybe Text)
    , _acvuFields      :: !(Maybe Text)
    , _acvuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvuQuotaUser'
--
-- * 'acvuPrettyPrint'
--
-- * 'acvuContainerId'
--
-- * 'acvuUserIp'
--
-- * 'acvuFingerprint'
--
-- * 'acvuVariableId'
--
-- * 'acvuAccountId'
--
-- * 'acvuKey'
--
-- * 'acvuOauthToken'
--
-- * 'acvuFields'
--
-- * 'acvuAlt'
accountsContainersVariablesUpdate
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'variableId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesUpdate
accountsContainersVariablesUpdate pAcvuContainerId_ pAcvuVariableId_ pAcvuAccountId_ =
    AccountsContainersVariablesUpdate
    { _acvuQuotaUser = Nothing
    , _acvuPrettyPrint = True
    , _acvuContainerId = pAcvuContainerId_
    , _acvuUserIp = Nothing
    , _acvuFingerprint = Nothing
    , _acvuVariableId = pAcvuVariableId_
    , _acvuAccountId = pAcvuAccountId_
    , _acvuKey = Nothing
    , _acvuOauthToken = Nothing
    , _acvuFields = Nothing
    , _acvuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvuQuotaUser :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
acvuQuotaUser
  = lens _acvuQuotaUser
      (\ s a -> s{_acvuQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvuPrettyPrint :: Lens' AccountsContainersVariablesUpdate' Bool
acvuPrettyPrint
  = lens _acvuPrettyPrint
      (\ s a -> s{_acvuPrettyPrint = a})

-- | The GTM Container ID.
acvuContainerId :: Lens' AccountsContainersVariablesUpdate' Text
acvuContainerId
  = lens _acvuContainerId
      (\ s a -> s{_acvuContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvuUserIp :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
acvuUserIp
  = lens _acvuUserIp (\ s a -> s{_acvuUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- variable in storage.
acvuFingerprint :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
acvuFingerprint
  = lens _acvuFingerprint
      (\ s a -> s{_acvuFingerprint = a})

-- | The GTM Variable ID.
acvuVariableId :: Lens' AccountsContainersVariablesUpdate' Text
acvuVariableId
  = lens _acvuVariableId
      (\ s a -> s{_acvuVariableId = a})

-- | The GTM Account ID.
acvuAccountId :: Lens' AccountsContainersVariablesUpdate' Text
acvuAccountId
  = lens _acvuAccountId
      (\ s a -> s{_acvuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvuKey :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
acvuKey = lens _acvuKey (\ s a -> s{_acvuKey = a})

-- | OAuth 2.0 token for the current user.
acvuOauthToken :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
acvuOauthToken
  = lens _acvuOauthToken
      (\ s a -> s{_acvuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvuFields :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
acvuFields
  = lens _acvuFields (\ s a -> s{_acvuFields = a})

-- | Data format for the response.
acvuAlt :: Lens' AccountsContainersVariablesUpdate' Text
acvuAlt = lens _acvuAlt (\ s a -> s{_acvuAlt = a})

instance GoogleRequest
         AccountsContainersVariablesUpdate' where
        type Rs AccountsContainersVariablesUpdate' = Variable
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVariablesUpdate{..}
          = go _acvuQuotaUser _acvuPrettyPrint _acvuContainerId
              _acvuUserIp
              _acvuFingerprint
              _acvuVariableId
              _acvuAccountId
              _acvuKey
              _acvuOauthToken
              _acvuFields
              _acvuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersVariablesUpdateAPI)
                      r
                      u
