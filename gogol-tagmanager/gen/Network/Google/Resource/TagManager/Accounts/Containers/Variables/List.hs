{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Variables of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVariablesList@.
module TagManager.Accounts.Containers.Variables.List
    (
    -- * REST Resource
      AccountsContainersVariablesListAPI

    -- * Creating a Request
    , accountsContainersVariablesList
    , AccountsContainersVariablesList

    -- * Request Lenses
    , acvlQuotaUser
    , acvlPrettyPrint
    , acvlContainerId
    , acvlUserIp
    , acvlAccountId
    , acvlKey
    , acvlOauthToken
    , acvlFields
    , acvlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVariablesList@ which the
-- 'AccountsContainersVariablesList' request conforms to.
type AccountsContainersVariablesListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "variables" :> Get '[JSON] ListVariablesResponse

-- | Lists all GTM Variables of a Container.
--
-- /See:/ 'accountsContainersVariablesList' smart constructor.
data AccountsContainersVariablesList = AccountsContainersVariablesList
    { _acvlQuotaUser   :: !(Maybe Text)
    , _acvlPrettyPrint :: !Bool
    , _acvlContainerId :: !Text
    , _acvlUserIp      :: !(Maybe Text)
    , _acvlAccountId   :: !Text
    , _acvlKey         :: !(Maybe Text)
    , _acvlOauthToken  :: !(Maybe Text)
    , _acvlFields      :: !(Maybe Text)
    , _acvlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvlQuotaUser'
--
-- * 'acvlPrettyPrint'
--
-- * 'acvlContainerId'
--
-- * 'acvlUserIp'
--
-- * 'acvlAccountId'
--
-- * 'acvlKey'
--
-- * 'acvlOauthToken'
--
-- * 'acvlFields'
--
-- * 'acvlAlt'
accountsContainersVariablesList
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesList
accountsContainersVariablesList pAcvlContainerId_ pAcvlAccountId_ =
    AccountsContainersVariablesList
    { _acvlQuotaUser = Nothing
    , _acvlPrettyPrint = True
    , _acvlContainerId = pAcvlContainerId_
    , _acvlUserIp = Nothing
    , _acvlAccountId = pAcvlAccountId_
    , _acvlKey = Nothing
    , _acvlOauthToken = Nothing
    , _acvlFields = Nothing
    , _acvlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvlQuotaUser :: Lens' AccountsContainersVariablesList' (Maybe Text)
acvlQuotaUser
  = lens _acvlQuotaUser
      (\ s a -> s{_acvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvlPrettyPrint :: Lens' AccountsContainersVariablesList' Bool
acvlPrettyPrint
  = lens _acvlPrettyPrint
      (\ s a -> s{_acvlPrettyPrint = a})

-- | The GTM Container ID.
acvlContainerId :: Lens' AccountsContainersVariablesList' Text
acvlContainerId
  = lens _acvlContainerId
      (\ s a -> s{_acvlContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvlUserIp :: Lens' AccountsContainersVariablesList' (Maybe Text)
acvlUserIp
  = lens _acvlUserIp (\ s a -> s{_acvlUserIp = a})

-- | The GTM Account ID.
acvlAccountId :: Lens' AccountsContainersVariablesList' Text
acvlAccountId
  = lens _acvlAccountId
      (\ s a -> s{_acvlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvlKey :: Lens' AccountsContainersVariablesList' (Maybe Text)
acvlKey = lens _acvlKey (\ s a -> s{_acvlKey = a})

-- | OAuth 2.0 token for the current user.
acvlOauthToken :: Lens' AccountsContainersVariablesList' (Maybe Text)
acvlOauthToken
  = lens _acvlOauthToken
      (\ s a -> s{_acvlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvlFields :: Lens' AccountsContainersVariablesList' (Maybe Text)
acvlFields
  = lens _acvlFields (\ s a -> s{_acvlFields = a})

-- | Data format for the response.
acvlAlt :: Lens' AccountsContainersVariablesList' Text
acvlAlt = lens _acvlAlt (\ s a -> s{_acvlAlt = a})

instance GoogleRequest
         AccountsContainersVariablesList' where
        type Rs AccountsContainersVariablesList' =
             ListVariablesResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVariablesList{..}
          = go _acvlQuotaUser _acvlPrettyPrint _acvlContainerId
              _acvlUserIp
              _acvlAccountId
              _acvlKey
              _acvlOauthToken
              _acvlFields
              _acvlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersVariablesListAPI)
                      r
                      u
