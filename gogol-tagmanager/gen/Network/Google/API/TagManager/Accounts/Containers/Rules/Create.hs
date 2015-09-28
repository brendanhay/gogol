{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Rules.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Rule.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.rules.create@.
module Network.Google.API.TagManager.Accounts.Containers.Rules.Create
    (
    -- * REST Resource
      AccountsContainersRulesCreateAPI

    -- * Creating a Request
    , accountsContainersRulesCreate'
    , AccountsContainersRulesCreate'

    -- * Request Lenses
    , acrcQuotaUser
    , acrcPrettyPrint
    , acrcContainerId
    , acrcUserIp
    , acrcAccountId
    , acrcKey
    , acrcOauthToken
    , acrcFields
    , acrcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.rules.create which the
-- 'AccountsContainersRulesCreate'' request conforms to.
type AccountsContainersRulesCreateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Rule

-- | Creates a GTM Rule.
--
-- /See:/ 'accountsContainersRulesCreate'' smart constructor.
data AccountsContainersRulesCreate' = AccountsContainersRulesCreate'
    { _acrcQuotaUser   :: !(Maybe Text)
    , _acrcPrettyPrint :: !Bool
    , _acrcContainerId :: !Text
    , _acrcUserIp      :: !(Maybe Text)
    , _acrcAccountId   :: !Text
    , _acrcKey         :: !(Maybe Text)
    , _acrcOauthToken  :: !(Maybe Text)
    , _acrcFields      :: !(Maybe Text)
    , _acrcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersRulesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrcQuotaUser'
--
-- * 'acrcPrettyPrint'
--
-- * 'acrcContainerId'
--
-- * 'acrcUserIp'
--
-- * 'acrcAccountId'
--
-- * 'acrcKey'
--
-- * 'acrcOauthToken'
--
-- * 'acrcFields'
--
-- * 'acrcAlt'
accountsContainersRulesCreate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesCreate'
accountsContainersRulesCreate' pAcrcContainerId_ pAcrcAccountId_ =
    AccountsContainersRulesCreate'
    { _acrcQuotaUser = Nothing
    , _acrcPrettyPrint = True
    , _acrcContainerId = pAcrcContainerId_
    , _acrcUserIp = Nothing
    , _acrcAccountId = pAcrcAccountId_
    , _acrcKey = Nothing
    , _acrcOauthToken = Nothing
    , _acrcFields = Nothing
    , _acrcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acrcQuotaUser :: Lens' AccountsContainersRulesCreate' (Maybe Text)
acrcQuotaUser
  = lens _acrcQuotaUser
      (\ s a -> s{_acrcQuotaUser = a})

-- | Returns response with indentations and line breaks.
acrcPrettyPrint :: Lens' AccountsContainersRulesCreate' Bool
acrcPrettyPrint
  = lens _acrcPrettyPrint
      (\ s a -> s{_acrcPrettyPrint = a})

-- | The GTM Container ID.
acrcContainerId :: Lens' AccountsContainersRulesCreate' Text
acrcContainerId
  = lens _acrcContainerId
      (\ s a -> s{_acrcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acrcUserIp :: Lens' AccountsContainersRulesCreate' (Maybe Text)
acrcUserIp
  = lens _acrcUserIp (\ s a -> s{_acrcUserIp = a})

-- | The GTM Account ID.
acrcAccountId :: Lens' AccountsContainersRulesCreate' Text
acrcAccountId
  = lens _acrcAccountId
      (\ s a -> s{_acrcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acrcKey :: Lens' AccountsContainersRulesCreate' (Maybe Text)
acrcKey = lens _acrcKey (\ s a -> s{_acrcKey = a})

-- | OAuth 2.0 token for the current user.
acrcOauthToken :: Lens' AccountsContainersRulesCreate' (Maybe Text)
acrcOauthToken
  = lens _acrcOauthToken
      (\ s a -> s{_acrcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acrcFields :: Lens' AccountsContainersRulesCreate' (Maybe Text)
acrcFields
  = lens _acrcFields (\ s a -> s{_acrcFields = a})

-- | Data format for the response.
acrcAlt :: Lens' AccountsContainersRulesCreate' Alt
acrcAlt = lens _acrcAlt (\ s a -> s{_acrcAlt = a})

instance GoogleRequest AccountsContainersRulesCreate'
         where
        type Rs AccountsContainersRulesCreate' = Rule
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersRulesCreate'{..}
          = go _acrcQuotaUser (Just _acrcPrettyPrint)
              _acrcContainerId
              _acrcUserIp
              _acrcAccountId
              _acrcKey
              _acrcOauthToken
              _acrcFields
              (Just _acrcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersRulesCreateAPI)
                      r
                      u
