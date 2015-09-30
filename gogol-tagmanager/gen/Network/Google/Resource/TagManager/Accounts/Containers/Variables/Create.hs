{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module TagManager.Accounts.Containers.Variables.Create
    (
    -- * REST Resource
      AccountsContainersVariablesCreateAPI

    -- * Creating a Request
    , accountsContainersVariablesCreate
    , AccountsContainersVariablesCreate

    -- * Request Lenses
    , acvcQuotaUser
    , acvcPrettyPrint
    , acvcContainerId
    , acvcUserIp
    , acvcAccountId
    , acvcKey
    , acvcOauthToken
    , acvcFields
    , acvcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVariablesCreate@ which the
-- 'AccountsContainersVariablesCreate' request conforms to.
type AccountsContainersVariablesCreateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "variables" :> Post '[JSON] Variable

-- | Creates a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesCreate' smart constructor.
data AccountsContainersVariablesCreate = AccountsContainersVariablesCreate
    { _acvcQuotaUser   :: !(Maybe Text)
    , _acvcPrettyPrint :: !Bool
    , _acvcContainerId :: !Text
    , _acvcUserIp      :: !(Maybe Text)
    , _acvcAccountId   :: !Text
    , _acvcKey         :: !(Maybe Text)
    , _acvcOauthToken  :: !(Maybe Text)
    , _acvcFields      :: !(Maybe Text)
    , _acvcAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvcQuotaUser'
--
-- * 'acvcPrettyPrint'
--
-- * 'acvcContainerId'
--
-- * 'acvcUserIp'
--
-- * 'acvcAccountId'
--
-- * 'acvcKey'
--
-- * 'acvcOauthToken'
--
-- * 'acvcFields'
--
-- * 'acvcAlt'
accountsContainersVariablesCreate
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesCreate
accountsContainersVariablesCreate pAcvcContainerId_ pAcvcAccountId_ =
    AccountsContainersVariablesCreate
    { _acvcQuotaUser = Nothing
    , _acvcPrettyPrint = True
    , _acvcContainerId = pAcvcContainerId_
    , _acvcUserIp = Nothing
    , _acvcAccountId = pAcvcAccountId_
    , _acvcKey = Nothing
    , _acvcOauthToken = Nothing
    , _acvcFields = Nothing
    , _acvcAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvcQuotaUser :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvcQuotaUser
  = lens _acvcQuotaUser
      (\ s a -> s{_acvcQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvcPrettyPrint :: Lens' AccountsContainersVariablesCreate' Bool
acvcPrettyPrint
  = lens _acvcPrettyPrint
      (\ s a -> s{_acvcPrettyPrint = a})

-- | The GTM Container ID.
acvcContainerId :: Lens' AccountsContainersVariablesCreate' Text
acvcContainerId
  = lens _acvcContainerId
      (\ s a -> s{_acvcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvcUserIp :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvcUserIp
  = lens _acvcUserIp (\ s a -> s{_acvcUserIp = a})

-- | The GTM Account ID.
acvcAccountId :: Lens' AccountsContainersVariablesCreate' Text
acvcAccountId
  = lens _acvcAccountId
      (\ s a -> s{_acvcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvcKey :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvcKey = lens _acvcKey (\ s a -> s{_acvcKey = a})

-- | OAuth 2.0 token for the current user.
acvcOauthToken :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvcOauthToken
  = lens _acvcOauthToken
      (\ s a -> s{_acvcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvcFields :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvcFields
  = lens _acvcFields (\ s a -> s{_acvcFields = a})

-- | Data format for the response.
acvcAlt :: Lens' AccountsContainersVariablesCreate' Text
acvcAlt = lens _acvcAlt (\ s a -> s{_acvcAlt = a})

instance GoogleRequest
         AccountsContainersVariablesCreate' where
        type Rs AccountsContainersVariablesCreate' = Variable
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVariablesCreate{..}
          = go _acvcQuotaUser _acvcPrettyPrint _acvcContainerId
              _acvcUserIp
              _acvcAccountId
              _acvcKey
              _acvcOauthToken
              _acvcFields
              _acvcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersVariablesCreateAPI)
                      r
                      u
