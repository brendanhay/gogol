{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVariablesDelete@.
module TagManager.Accounts.Containers.Variables.Delete
    (
    -- * REST Resource
      AccountsContainersVariablesDeleteAPI

    -- * Creating a Request
    , accountsContainersVariablesDelete
    , AccountsContainersVariablesDelete

    -- * Request Lenses
    , acvdQuotaUser
    , acvdPrettyPrint
    , acvdContainerId
    , acvdUserIp
    , acvdVariableId
    , acvdAccountId
    , acvdKey
    , acvdOauthToken
    , acvdFields
    , acvdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVariablesDelete@ which the
-- 'AccountsContainersVariablesDelete' request conforms to.
type AccountsContainersVariablesDeleteAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "variables" :>
               Capture "variableId" Text :> Delete '[JSON] ()

-- | Deletes a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesDelete' smart constructor.
data AccountsContainersVariablesDelete = AccountsContainersVariablesDelete
    { _acvdQuotaUser   :: !(Maybe Text)
    , _acvdPrettyPrint :: !Bool
    , _acvdContainerId :: !Text
    , _acvdUserIp      :: !(Maybe Text)
    , _acvdVariableId  :: !Text
    , _acvdAccountId   :: !Text
    , _acvdKey         :: !(Maybe Text)
    , _acvdOauthToken  :: !(Maybe Text)
    , _acvdFields      :: !(Maybe Text)
    , _acvdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvdQuotaUser'
--
-- * 'acvdPrettyPrint'
--
-- * 'acvdContainerId'
--
-- * 'acvdUserIp'
--
-- * 'acvdVariableId'
--
-- * 'acvdAccountId'
--
-- * 'acvdKey'
--
-- * 'acvdOauthToken'
--
-- * 'acvdFields'
--
-- * 'acvdAlt'
accountsContainersVariablesDelete
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'variableId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesDelete
accountsContainersVariablesDelete pAcvdContainerId_ pAcvdVariableId_ pAcvdAccountId_ =
    AccountsContainersVariablesDelete
    { _acvdQuotaUser = Nothing
    , _acvdPrettyPrint = True
    , _acvdContainerId = pAcvdContainerId_
    , _acvdUserIp = Nothing
    , _acvdVariableId = pAcvdVariableId_
    , _acvdAccountId = pAcvdAccountId_
    , _acvdKey = Nothing
    , _acvdOauthToken = Nothing
    , _acvdFields = Nothing
    , _acvdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvdQuotaUser :: Lens' AccountsContainersVariablesDelete' (Maybe Text)
acvdQuotaUser
  = lens _acvdQuotaUser
      (\ s a -> s{_acvdQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvdPrettyPrint :: Lens' AccountsContainersVariablesDelete' Bool
acvdPrettyPrint
  = lens _acvdPrettyPrint
      (\ s a -> s{_acvdPrettyPrint = a})

-- | The GTM Container ID.
acvdContainerId :: Lens' AccountsContainersVariablesDelete' Text
acvdContainerId
  = lens _acvdContainerId
      (\ s a -> s{_acvdContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvdUserIp :: Lens' AccountsContainersVariablesDelete' (Maybe Text)
acvdUserIp
  = lens _acvdUserIp (\ s a -> s{_acvdUserIp = a})

-- | The GTM Variable ID.
acvdVariableId :: Lens' AccountsContainersVariablesDelete' Text
acvdVariableId
  = lens _acvdVariableId
      (\ s a -> s{_acvdVariableId = a})

-- | The GTM Account ID.
acvdAccountId :: Lens' AccountsContainersVariablesDelete' Text
acvdAccountId
  = lens _acvdAccountId
      (\ s a -> s{_acvdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvdKey :: Lens' AccountsContainersVariablesDelete' (Maybe Text)
acvdKey = lens _acvdKey (\ s a -> s{_acvdKey = a})

-- | OAuth 2.0 token for the current user.
acvdOauthToken :: Lens' AccountsContainersVariablesDelete' (Maybe Text)
acvdOauthToken
  = lens _acvdOauthToken
      (\ s a -> s{_acvdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvdFields :: Lens' AccountsContainersVariablesDelete' (Maybe Text)
acvdFields
  = lens _acvdFields (\ s a -> s{_acvdFields = a})

-- | Data format for the response.
acvdAlt :: Lens' AccountsContainersVariablesDelete' Text
acvdAlt = lens _acvdAlt (\ s a -> s{_acvdAlt = a})

instance GoogleRequest
         AccountsContainersVariablesDelete' where
        type Rs AccountsContainersVariablesDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVariablesDelete{..}
          = go _acvdQuotaUser _acvdPrettyPrint _acvdContainerId
              _acvdUserIp
              _acvdVariableId
              _acvdAccountId
              _acvdKey
              _acvdOauthToken
              _acvdFields
              _acvdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersVariablesDeleteAPI)
                      r
                      u
