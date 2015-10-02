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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Rules.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Rules of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersRulesList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Rules.List
    (
    -- * REST Resource
      AccountsContainersRulesListResource

    -- * Creating a Request
    , accountsContainersRulesList'
    , AccountsContainersRulesList'

    -- * Request Lenses
    , acrlQuotaUser
    , acrlPrettyPrint
    , acrlContainerId
    , acrlUserIP
    , acrlAccountId
    , acrlKey
    , acrlOAuthToken
    , acrlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersRulesList@ which the
-- 'AccountsContainersRulesList'' request conforms to.
type AccountsContainersRulesListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListRulesResponse

-- | Lists all GTM Rules of a Container.
--
-- /See:/ 'accountsContainersRulesList'' smart constructor.
data AccountsContainersRulesList' = AccountsContainersRulesList'
    { _acrlQuotaUser   :: !(Maybe Text)
    , _acrlPrettyPrint :: !Bool
    , _acrlContainerId :: !Text
    , _acrlUserIP      :: !(Maybe Text)
    , _acrlAccountId   :: !Text
    , _acrlKey         :: !(Maybe Key)
    , _acrlOAuthToken  :: !(Maybe OAuthToken)
    , _acrlFields      :: !(Maybe Text)
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
-- * 'acrlUserIP'
--
-- * 'acrlAccountId'
--
-- * 'acrlKey'
--
-- * 'acrlOAuthToken'
--
-- * 'acrlFields'
accountsContainersRulesList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesList'
accountsContainersRulesList' pAcrlContainerId_ pAcrlAccountId_ =
    AccountsContainersRulesList'
    { _acrlQuotaUser = Nothing
    , _acrlPrettyPrint = True
    , _acrlContainerId = pAcrlContainerId_
    , _acrlUserIP = Nothing
    , _acrlAccountId = pAcrlAccountId_
    , _acrlKey = Nothing
    , _acrlOAuthToken = Nothing
    , _acrlFields = Nothing
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
acrlUserIP :: Lens' AccountsContainersRulesList' (Maybe Text)
acrlUserIP
  = lens _acrlUserIP (\ s a -> s{_acrlUserIP = a})

-- | The GTM Account ID.
acrlAccountId :: Lens' AccountsContainersRulesList' Text
acrlAccountId
  = lens _acrlAccountId
      (\ s a -> s{_acrlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acrlKey :: Lens' AccountsContainersRulesList' (Maybe Key)
acrlKey = lens _acrlKey (\ s a -> s{_acrlKey = a})

-- | OAuth 2.0 token for the current user.
acrlOAuthToken :: Lens' AccountsContainersRulesList' (Maybe OAuthToken)
acrlOAuthToken
  = lens _acrlOAuthToken
      (\ s a -> s{_acrlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acrlFields :: Lens' AccountsContainersRulesList' (Maybe Text)
acrlFields
  = lens _acrlFields (\ s a -> s{_acrlFields = a})

instance GoogleAuth AccountsContainersRulesList'
         where
        authKey = acrlKey . _Just
        authToken = acrlOAuthToken . _Just

instance GoogleRequest AccountsContainersRulesList'
         where
        type Rs AccountsContainersRulesList' =
             ListRulesResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersRulesList'{..}
          = go _acrlQuotaUser (Just _acrlPrettyPrint)
              _acrlContainerId
              _acrlUserIP
              _acrlAccountId
              _acrlKey
              _acrlOAuthToken
              _acrlFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersRulesListResource)
                      r
                      u
