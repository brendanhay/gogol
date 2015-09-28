{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Rules.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Rule.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.rules.delete@.
module Network.Google.API.TagManager.Accounts.Containers.Rules.Delete
    (
    -- * REST Resource
      AccountsContainersRulesDeleteAPI

    -- * Creating a Request
    , accountsContainersRulesDelete'
    , AccountsContainersRulesDelete'

    -- * Request Lenses
    , acrdQuotaUser
    , acrdPrettyPrint
    , acrdContainerId
    , acrdUserIp
    , acrdRuleId
    , acrdAccountId
    , acrdKey
    , acrdOauthToken
    , acrdFields
    , acrdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.rules.delete which the
-- 'AccountsContainersRulesDelete'' request conforms to.
type AccountsContainersRulesDeleteAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               Capture "ruleId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a GTM Rule.
--
-- /See:/ 'accountsContainersRulesDelete'' smart constructor.
data AccountsContainersRulesDelete' = AccountsContainersRulesDelete'
    { _acrdQuotaUser   :: !(Maybe Text)
    , _acrdPrettyPrint :: !Bool
    , _acrdContainerId :: !Text
    , _acrdUserIp      :: !(Maybe Text)
    , _acrdRuleId      :: !Text
    , _acrdAccountId   :: !Text
    , _acrdKey         :: !(Maybe Text)
    , _acrdOauthToken  :: !(Maybe Text)
    , _acrdFields      :: !(Maybe Text)
    , _acrdAlt         :: !Alt
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
-- * 'acrdUserIp'
--
-- * 'acrdRuleId'
--
-- * 'acrdAccountId'
--
-- * 'acrdKey'
--
-- * 'acrdOauthToken'
--
-- * 'acrdFields'
--
-- * 'acrdAlt'
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
    , _acrdUserIp = Nothing
    , _acrdRuleId = pAcrdRuleId_
    , _acrdAccountId = pAcrdAccountId_
    , _acrdKey = Nothing
    , _acrdOauthToken = Nothing
    , _acrdFields = Nothing
    , _acrdAlt = JSON
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
acrdUserIp :: Lens' AccountsContainersRulesDelete' (Maybe Text)
acrdUserIp
  = lens _acrdUserIp (\ s a -> s{_acrdUserIp = a})

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
acrdKey :: Lens' AccountsContainersRulesDelete' (Maybe Text)
acrdKey = lens _acrdKey (\ s a -> s{_acrdKey = a})

-- | OAuth 2.0 token for the current user.
acrdOauthToken :: Lens' AccountsContainersRulesDelete' (Maybe Text)
acrdOauthToken
  = lens _acrdOauthToken
      (\ s a -> s{_acrdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acrdFields :: Lens' AccountsContainersRulesDelete' (Maybe Text)
acrdFields
  = lens _acrdFields (\ s a -> s{_acrdFields = a})

-- | Data format for the response.
acrdAlt :: Lens' AccountsContainersRulesDelete' Alt
acrdAlt = lens _acrdAlt (\ s a -> s{_acrdAlt = a})

instance GoogleRequest AccountsContainersRulesDelete'
         where
        type Rs AccountsContainersRulesDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersRulesDelete'{..}
          = go _acrdQuotaUser (Just _acrdPrettyPrint)
              _acrdContainerId
              _acrdUserIp
              _acrdRuleId
              _acrdAccountId
              _acrdKey
              _acrdOauthToken
              _acrdFields
              (Just _acrdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersRulesDeleteAPI)
                      r
                      u
