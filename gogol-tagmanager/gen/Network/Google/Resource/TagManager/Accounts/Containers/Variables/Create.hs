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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVariablesCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Create
    (
    -- * REST Resource
      AccountsContainersVariablesCreateResource

    -- * Creating a Request
    , accountsContainersVariablesCreate'
    , AccountsContainersVariablesCreate'

    -- * Request Lenses
    , acvccQuotaUser
    , acvccPrettyPrint
    , acvccContainerId
    , acvccUserIp
    , acvccAccountId
    , acvccKey
    , acvccOauthToken
    , acvccFields
    , acvccAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVariablesCreate@ which the
-- 'AccountsContainersVariablesCreate'' request conforms to.
type AccountsContainersVariablesCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "variables" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Variable

-- | Creates a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesCreate'' smart constructor.
data AccountsContainersVariablesCreate' = AccountsContainersVariablesCreate'
    { _acvccQuotaUser   :: !(Maybe Text)
    , _acvccPrettyPrint :: !Bool
    , _acvccContainerId :: !Text
    , _acvccUserIp      :: !(Maybe Text)
    , _acvccAccountId   :: !Text
    , _acvccKey         :: !(Maybe Text)
    , _acvccOauthToken  :: !(Maybe Text)
    , _acvccFields      :: !(Maybe Text)
    , _acvccAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvccQuotaUser'
--
-- * 'acvccPrettyPrint'
--
-- * 'acvccContainerId'
--
-- * 'acvccUserIp'
--
-- * 'acvccAccountId'
--
-- * 'acvccKey'
--
-- * 'acvccOauthToken'
--
-- * 'acvccFields'
--
-- * 'acvccAlt'
accountsContainersVariablesCreate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesCreate'
accountsContainersVariablesCreate' pAcvccContainerId_ pAcvccAccountId_ =
    AccountsContainersVariablesCreate'
    { _acvccQuotaUser = Nothing
    , _acvccPrettyPrint = True
    , _acvccContainerId = pAcvccContainerId_
    , _acvccUserIp = Nothing
    , _acvccAccountId = pAcvccAccountId_
    , _acvccKey = Nothing
    , _acvccOauthToken = Nothing
    , _acvccFields = Nothing
    , _acvccAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvccQuotaUser :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvccQuotaUser
  = lens _acvccQuotaUser
      (\ s a -> s{_acvccQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvccPrettyPrint :: Lens' AccountsContainersVariablesCreate' Bool
acvccPrettyPrint
  = lens _acvccPrettyPrint
      (\ s a -> s{_acvccPrettyPrint = a})

-- | The GTM Container ID.
acvccContainerId :: Lens' AccountsContainersVariablesCreate' Text
acvccContainerId
  = lens _acvccContainerId
      (\ s a -> s{_acvccContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvccUserIp :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvccUserIp
  = lens _acvccUserIp (\ s a -> s{_acvccUserIp = a})

-- | The GTM Account ID.
acvccAccountId :: Lens' AccountsContainersVariablesCreate' Text
acvccAccountId
  = lens _acvccAccountId
      (\ s a -> s{_acvccAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvccKey :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvccKey = lens _acvccKey (\ s a -> s{_acvccKey = a})

-- | OAuth 2.0 token for the current user.
acvccOauthToken :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvccOauthToken
  = lens _acvccOauthToken
      (\ s a -> s{_acvccOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvccFields :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvccFields
  = lens _acvccFields (\ s a -> s{_acvccFields = a})

-- | Data format for the response.
acvccAlt :: Lens' AccountsContainersVariablesCreate' Alt
acvccAlt = lens _acvccAlt (\ s a -> s{_acvccAlt = a})

instance GoogleRequest
         AccountsContainersVariablesCreate' where
        type Rs AccountsContainersVariablesCreate' = Variable
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVariablesCreate'{..}
          = go _acvccQuotaUser (Just _acvccPrettyPrint)
              _acvccContainerId
              _acvccUserIp
              _acvccAccountId
              _acvccKey
              _acvccOauthToken
              _acvccFields
              (Just _acvccAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVariablesCreateResource)
                      r
                      u
