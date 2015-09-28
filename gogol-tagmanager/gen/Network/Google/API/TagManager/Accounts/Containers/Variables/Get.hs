{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Variables.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.variables.get@.
module Network.Google.API.TagManager.Accounts.Containers.Variables.Get
    (
    -- * REST Resource
      AccountsContainersVariablesGetAPI

    -- * Creating a Request
    , accountsContainersVariablesGet'
    , AccountsContainersVariablesGet'

    -- * Request Lenses
    , acvgQuotaUser
    , acvgPrettyPrint
    , acvgContainerId
    , acvgUserIp
    , acvgVariableId
    , acvgAccountId
    , acvgKey
    , acvgOauthToken
    , acvgFields
    , acvgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.variables.get which the
-- 'AccountsContainersVariablesGet'' request conforms to.
type AccountsContainersVariablesGetAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "variables" :>
               Capture "variableId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] Variable

-- | Gets a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesGet'' smart constructor.
data AccountsContainersVariablesGet' = AccountsContainersVariablesGet'
    { _acvgQuotaUser   :: !(Maybe Text)
    , _acvgPrettyPrint :: !Bool
    , _acvgContainerId :: !Text
    , _acvgUserIp      :: !(Maybe Text)
    , _acvgVariableId  :: !Text
    , _acvgAccountId   :: !Text
    , _acvgKey         :: !(Maybe Text)
    , _acvgOauthToken  :: !(Maybe Text)
    , _acvgFields      :: !(Maybe Text)
    , _acvgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvgQuotaUser'
--
-- * 'acvgPrettyPrint'
--
-- * 'acvgContainerId'
--
-- * 'acvgUserIp'
--
-- * 'acvgVariableId'
--
-- * 'acvgAccountId'
--
-- * 'acvgKey'
--
-- * 'acvgOauthToken'
--
-- * 'acvgFields'
--
-- * 'acvgAlt'
accountsContainersVariablesGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'variableId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesGet'
accountsContainersVariablesGet' pAcvgContainerId_ pAcvgVariableId_ pAcvgAccountId_ =
    AccountsContainersVariablesGet'
    { _acvgQuotaUser = Nothing
    , _acvgPrettyPrint = True
    , _acvgContainerId = pAcvgContainerId_
    , _acvgUserIp = Nothing
    , _acvgVariableId = pAcvgVariableId_
    , _acvgAccountId = pAcvgAccountId_
    , _acvgKey = Nothing
    , _acvgOauthToken = Nothing
    , _acvgFields = Nothing
    , _acvgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvgQuotaUser :: Lens' AccountsContainersVariablesGet' (Maybe Text)
acvgQuotaUser
  = lens _acvgQuotaUser
      (\ s a -> s{_acvgQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvgPrettyPrint :: Lens' AccountsContainersVariablesGet' Bool
acvgPrettyPrint
  = lens _acvgPrettyPrint
      (\ s a -> s{_acvgPrettyPrint = a})

-- | The GTM Container ID.
acvgContainerId :: Lens' AccountsContainersVariablesGet' Text
acvgContainerId
  = lens _acvgContainerId
      (\ s a -> s{_acvgContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvgUserIp :: Lens' AccountsContainersVariablesGet' (Maybe Text)
acvgUserIp
  = lens _acvgUserIp (\ s a -> s{_acvgUserIp = a})

-- | The GTM Variable ID.
acvgVariableId :: Lens' AccountsContainersVariablesGet' Text
acvgVariableId
  = lens _acvgVariableId
      (\ s a -> s{_acvgVariableId = a})

-- | The GTM Account ID.
acvgAccountId :: Lens' AccountsContainersVariablesGet' Text
acvgAccountId
  = lens _acvgAccountId
      (\ s a -> s{_acvgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvgKey :: Lens' AccountsContainersVariablesGet' (Maybe Text)
acvgKey = lens _acvgKey (\ s a -> s{_acvgKey = a})

-- | OAuth 2.0 token for the current user.
acvgOauthToken :: Lens' AccountsContainersVariablesGet' (Maybe Text)
acvgOauthToken
  = lens _acvgOauthToken
      (\ s a -> s{_acvgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvgFields :: Lens' AccountsContainersVariablesGet' (Maybe Text)
acvgFields
  = lens _acvgFields (\ s a -> s{_acvgFields = a})

-- | Data format for the response.
acvgAlt :: Lens' AccountsContainersVariablesGet' Alt
acvgAlt = lens _acvgAlt (\ s a -> s{_acvgAlt = a})

instance GoogleRequest
         AccountsContainersVariablesGet' where
        type Rs AccountsContainersVariablesGet' = Variable
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVariablesGet'{..}
          = go _acvgQuotaUser (Just _acvgPrettyPrint)
              _acvgContainerId
              _acvgUserIp
              _acvgVariableId
              _acvgAccountId
              _acvgKey
              _acvgOauthToken
              _acvgFields
              (Just _acvgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersVariablesGetAPI)
                      r
                      u
