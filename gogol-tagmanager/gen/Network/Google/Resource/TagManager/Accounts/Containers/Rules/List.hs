{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Rules.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Rules of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersRulesList@.
module TagManager.Accounts.Containers.Rules.List
    (
    -- * REST Resource
      AccountsContainersRulesListAPI

    -- * Creating a Request
    , accountsContainersRulesList
    , AccountsContainersRulesList

    -- * Request Lenses
    , acrlQuotaUser
    , acrlPrettyPrint
    , acrlContainerId
    , acrlUserIp
    , acrlAccountId
    , acrlKey
    , acrlOauthToken
    , acrlFields
    , acrlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersRulesList@ which the
-- 'AccountsContainersRulesList' request conforms to.
type AccountsContainersRulesListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :> Get '[JSON] ListRulesResponse

-- | Lists all GTM Rules of a Container.
--
-- /See:/ 'accountsContainersRulesList' smart constructor.
data AccountsContainersRulesList = AccountsContainersRulesList
    { _acrlQuotaUser   :: !(Maybe Text)
    , _acrlPrettyPrint :: !Bool
    , _acrlContainerId :: !Text
    , _acrlUserIp      :: !(Maybe Text)
    , _acrlAccountId   :: !Text
    , _acrlKey         :: !(Maybe Text)
    , _acrlOauthToken  :: !(Maybe Text)
    , _acrlFields      :: !(Maybe Text)
    , _acrlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersRulesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrlQuotaUser'
--
-- * 'acrlPrettyPrint'
--
-- * 'acrlContainerId'
--
-- * 'acrlUserIp'
--
-- * 'acrlAccountId'
--
-- * 'acrlKey'
--
-- * 'acrlOauthToken'
--
-- * 'acrlFields'
--
-- * 'acrlAlt'
accountsContainersRulesList
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesList
accountsContainersRulesList pAcrlContainerId_ pAcrlAccountId_ =
    AccountsContainersRulesList
    { _acrlQuotaUser = Nothing
    , _acrlPrettyPrint = True
    , _acrlContainerId = pAcrlContainerId_
    , _acrlUserIp = Nothing
    , _acrlAccountId = pAcrlAccountId_
    , _acrlKey = Nothing
    , _acrlOauthToken = Nothing
    , _acrlFields = Nothing
    , _acrlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acrlQuotaUser :: Lens' AccountsContainersRulesList' (Maybe Text)
acrlQuotaUser
  = lens _acrlQuotaUser
      (\ s a -> s{_acrlQuotaUser = a})

-- | Returns response with indentations and line breaks.
acrlPrettyPrint :: Lens' AccountsContainersRulesList' Bool
acrlPrettyPrint
  = lens _acrlPrettyPrint
      (\ s a -> s{_acrlPrettyPrint = a})

-- | The GTM Container ID.
acrlContainerId :: Lens' AccountsContainersRulesList' Text
acrlContainerId
  = lens _acrlContainerId
      (\ s a -> s{_acrlContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acrlUserIp :: Lens' AccountsContainersRulesList' (Maybe Text)
acrlUserIp
  = lens _acrlUserIp (\ s a -> s{_acrlUserIp = a})

-- | The GTM Account ID.
acrlAccountId :: Lens' AccountsContainersRulesList' Text
acrlAccountId
  = lens _acrlAccountId
      (\ s a -> s{_acrlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acrlKey :: Lens' AccountsContainersRulesList' (Maybe Text)
acrlKey = lens _acrlKey (\ s a -> s{_acrlKey = a})

-- | OAuth 2.0 token for the current user.
acrlOauthToken :: Lens' AccountsContainersRulesList' (Maybe Text)
acrlOauthToken
  = lens _acrlOauthToken
      (\ s a -> s{_acrlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acrlFields :: Lens' AccountsContainersRulesList' (Maybe Text)
acrlFields
  = lens _acrlFields (\ s a -> s{_acrlFields = a})

-- | Data format for the response.
acrlAlt :: Lens' AccountsContainersRulesList' Text
acrlAlt = lens _acrlAlt (\ s a -> s{_acrlAlt = a})

instance GoogleRequest AccountsContainersRulesList'
         where
        type Rs AccountsContainersRulesList' =
             ListRulesResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersRulesList{..}
          = go _acrlQuotaUser _acrlPrettyPrint _acrlContainerId
              _acrlUserIp
              _acrlAccountId
              _acrlKey
              _acrlOauthToken
              _acrlFields
              _acrlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersRulesListAPI)
                      r
                      u
