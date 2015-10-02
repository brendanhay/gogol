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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Rules.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Rule.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersRulesGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Rules.Get
    (
    -- * REST Resource
      AccountsContainersRulesGetResource

    -- * Creating a Request
    , accountsContainersRulesGet'
    , AccountsContainersRulesGet'

    -- * Request Lenses
    , acrgQuotaUser
    , acrgPrettyPrint
    , acrgContainerId
    , acrgUserIP
    , acrgRuleId
    , acrgAccountId
    , acrgKey
    , acrgOAuthToken
    , acrgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersRulesGet@ which the
-- 'AccountsContainersRulesGet'' request conforms to.
type AccountsContainersRulesGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               Capture "ruleId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Rule

-- | Gets a GTM Rule.
--
-- /See:/ 'accountsContainersRulesGet'' smart constructor.
data AccountsContainersRulesGet' = AccountsContainersRulesGet'
    { _acrgQuotaUser   :: !(Maybe Text)
    , _acrgPrettyPrint :: !Bool
    , _acrgContainerId :: !Text
    , _acrgUserIP      :: !(Maybe Text)
    , _acrgRuleId      :: !Text
    , _acrgAccountId   :: !Text
    , _acrgKey         :: !(Maybe Key)
    , _acrgOAuthToken  :: !(Maybe OAuthToken)
    , _acrgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersRulesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrgQuotaUser'
--
-- * 'acrgPrettyPrint'
--
-- * 'acrgContainerId'
--
-- * 'acrgUserIP'
--
-- * 'acrgRuleId'
--
-- * 'acrgAccountId'
--
-- * 'acrgKey'
--
-- * 'acrgOAuthToken'
--
-- * 'acrgFields'
accountsContainersRulesGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'ruleId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesGet'
accountsContainersRulesGet' pAcrgContainerId_ pAcrgRuleId_ pAcrgAccountId_ =
    AccountsContainersRulesGet'
    { _acrgQuotaUser = Nothing
    , _acrgPrettyPrint = True
    , _acrgContainerId = pAcrgContainerId_
    , _acrgUserIP = Nothing
    , _acrgRuleId = pAcrgRuleId_
    , _acrgAccountId = pAcrgAccountId_
    , _acrgKey = Nothing
    , _acrgOAuthToken = Nothing
    , _acrgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acrgQuotaUser :: Lens' AccountsContainersRulesGet' (Maybe Text)
acrgQuotaUser
  = lens _acrgQuotaUser
      (\ s a -> s{_acrgQuotaUser = a})

-- | Returns response with indentations and line breaks.
acrgPrettyPrint :: Lens' AccountsContainersRulesGet' Bool
acrgPrettyPrint
  = lens _acrgPrettyPrint
      (\ s a -> s{_acrgPrettyPrint = a})

-- | The GTM Container ID.
acrgContainerId :: Lens' AccountsContainersRulesGet' Text
acrgContainerId
  = lens _acrgContainerId
      (\ s a -> s{_acrgContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acrgUserIP :: Lens' AccountsContainersRulesGet' (Maybe Text)
acrgUserIP
  = lens _acrgUserIP (\ s a -> s{_acrgUserIP = a})

-- | The GTM Rule ID.
acrgRuleId :: Lens' AccountsContainersRulesGet' Text
acrgRuleId
  = lens _acrgRuleId (\ s a -> s{_acrgRuleId = a})

-- | The GTM Account ID.
acrgAccountId :: Lens' AccountsContainersRulesGet' Text
acrgAccountId
  = lens _acrgAccountId
      (\ s a -> s{_acrgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acrgKey :: Lens' AccountsContainersRulesGet' (Maybe Key)
acrgKey = lens _acrgKey (\ s a -> s{_acrgKey = a})

-- | OAuth 2.0 token for the current user.
acrgOAuthToken :: Lens' AccountsContainersRulesGet' (Maybe OAuthToken)
acrgOAuthToken
  = lens _acrgOAuthToken
      (\ s a -> s{_acrgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acrgFields :: Lens' AccountsContainersRulesGet' (Maybe Text)
acrgFields
  = lens _acrgFields (\ s a -> s{_acrgFields = a})

instance GoogleAuth AccountsContainersRulesGet' where
        authKey = acrgKey . _Just
        authToken = acrgOAuthToken . _Just

instance GoogleRequest AccountsContainersRulesGet'
         where
        type Rs AccountsContainersRulesGet' = Rule
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersRulesGet'{..}
          = go _acrgAccountId _acrgContainerId _acrgRuleId
              _acrgQuotaUser
              (Just _acrgPrettyPrint)
              _acrgUserIP
              _acrgFields
              _acrgKey
              _acrgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersRulesGetResource)
                      r
                      u
