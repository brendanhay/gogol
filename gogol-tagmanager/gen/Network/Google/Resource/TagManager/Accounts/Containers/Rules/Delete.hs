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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Rules.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Rule.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersRulesDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Rules.Delete
    (
    -- * REST Resource
      AccountsContainersRulesDeleteResource

    -- * Creating a Request
    , accountsContainersRulesDelete'
    , AccountsContainersRulesDelete'

    -- * Request Lenses
    , acrdQuotaUser
    , acrdPrettyPrint
    , acrdContainerId
    , acrdUserIP
    , acrdRuleId
    , acrdAccountId
    , acrdKey
    , acrdOAuthToken
    , acrdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersRulesDelete@ which the
-- 'AccountsContainersRulesDelete'' request conforms to.
type AccountsContainersRulesDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               Capture "ruleId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Rule.
--
-- /See:/ 'accountsContainersRulesDelete'' smart constructor.
data AccountsContainersRulesDelete' = AccountsContainersRulesDelete'
    { _acrdQuotaUser   :: !(Maybe Text)
    , _acrdPrettyPrint :: !Bool
    , _acrdContainerId :: !Text
    , _acrdUserIP      :: !(Maybe Text)
    , _acrdRuleId      :: !Text
    , _acrdAccountId   :: !Text
    , _acrdKey         :: !(Maybe Key)
    , _acrdOAuthToken  :: !(Maybe OAuthToken)
    , _acrdFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersRulesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrdQuotaUser'
--
-- * 'acrdPrettyPrint'
--
-- * 'acrdContainerId'
--
-- * 'acrdUserIP'
--
-- * 'acrdRuleId'
--
-- * 'acrdAccountId'
--
-- * 'acrdKey'
--
-- * 'acrdOAuthToken'
--
-- * 'acrdFields'
accountsContainersRulesDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'ruleId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesDelete'
accountsContainersRulesDelete' pAcrdContainerId_ pAcrdRuleId_ pAcrdAccountId_ =
    AccountsContainersRulesDelete'
    { _acrdQuotaUser = Nothing
    , _acrdPrettyPrint = True
    , _acrdContainerId = pAcrdContainerId_
    , _acrdUserIP = Nothing
    , _acrdRuleId = pAcrdRuleId_
    , _acrdAccountId = pAcrdAccountId_
    , _acrdKey = Nothing
    , _acrdOAuthToken = Nothing
    , _acrdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acrdQuotaUser :: Lens' AccountsContainersRulesDelete' (Maybe Text)
acrdQuotaUser
  = lens _acrdQuotaUser
      (\ s a -> s{_acrdQuotaUser = a})

-- | Returns response with indentations and line breaks.
acrdPrettyPrint :: Lens' AccountsContainersRulesDelete' Bool
acrdPrettyPrint
  = lens _acrdPrettyPrint
      (\ s a -> s{_acrdPrettyPrint = a})

-- | The GTM Container ID.
acrdContainerId :: Lens' AccountsContainersRulesDelete' Text
acrdContainerId
  = lens _acrdContainerId
      (\ s a -> s{_acrdContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acrdUserIP :: Lens' AccountsContainersRulesDelete' (Maybe Text)
acrdUserIP
  = lens _acrdUserIP (\ s a -> s{_acrdUserIP = a})

-- | The GTM Rule ID.
acrdRuleId :: Lens' AccountsContainersRulesDelete' Text
acrdRuleId
  = lens _acrdRuleId (\ s a -> s{_acrdRuleId = a})

-- | The GTM Account ID.
acrdAccountId :: Lens' AccountsContainersRulesDelete' Text
acrdAccountId
  = lens _acrdAccountId
      (\ s a -> s{_acrdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acrdKey :: Lens' AccountsContainersRulesDelete' (Maybe Key)
acrdKey = lens _acrdKey (\ s a -> s{_acrdKey = a})

-- | OAuth 2.0 token for the current user.
acrdOAuthToken :: Lens' AccountsContainersRulesDelete' (Maybe OAuthToken)
acrdOAuthToken
  = lens _acrdOAuthToken
      (\ s a -> s{_acrdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acrdFields :: Lens' AccountsContainersRulesDelete' (Maybe Text)
acrdFields
  = lens _acrdFields (\ s a -> s{_acrdFields = a})

instance GoogleAuth AccountsContainersRulesDelete'
         where
        authKey = acrdKey . _Just
        authToken = acrdOAuthToken . _Just

instance GoogleRequest AccountsContainersRulesDelete'
         where
        type Rs AccountsContainersRulesDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersRulesDelete'{..}
          = go _acrdQuotaUser (Just _acrdPrettyPrint)
              _acrdContainerId
              _acrdUserIP
              _acrdRuleId
              _acrdAccountId
              _acrdKey
              _acrdOAuthToken
              _acrdFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersRulesDeleteResource)
                      r
                      u
