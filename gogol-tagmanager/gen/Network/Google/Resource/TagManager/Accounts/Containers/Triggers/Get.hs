{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersTriggersGet@.
module TagManager.Accounts.Containers.Triggers.Get
    (
    -- * REST Resource
      AccountsContainersTriggersGetAPI

    -- * Creating a Request
    , accountsContainersTriggersGet
    , AccountsContainersTriggersGet

    -- * Request Lenses
    , actgQuotaUser
    , actgPrettyPrint
    , actgContainerId
    , actgTriggerId
    , actgUserIp
    , actgAccountId
    , actgKey
    , actgOauthToken
    , actgFields
    , actgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersTriggersGet@ which the
-- 'AccountsContainersTriggersGet' request conforms to.
type AccountsContainersTriggersGetAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               Capture "triggerId" Text :> Get '[JSON] Trigger

-- | Gets a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersGet' smart constructor.
data AccountsContainersTriggersGet = AccountsContainersTriggersGet
    { _actgQuotaUser   :: !(Maybe Text)
    , _actgPrettyPrint :: !Bool
    , _actgContainerId :: !Text
    , _actgTriggerId   :: !Text
    , _actgUserIp      :: !(Maybe Text)
    , _actgAccountId   :: !Text
    , _actgKey         :: !(Maybe Text)
    , _actgOauthToken  :: !(Maybe Text)
    , _actgFields      :: !(Maybe Text)
    , _actgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actgQuotaUser'
--
-- * 'actgPrettyPrint'
--
-- * 'actgContainerId'
--
-- * 'actgTriggerId'
--
-- * 'actgUserIp'
--
-- * 'actgAccountId'
--
-- * 'actgKey'
--
-- * 'actgOauthToken'
--
-- * 'actgFields'
--
-- * 'actgAlt'
accountsContainersTriggersGet
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'triggerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersGet
accountsContainersTriggersGet pActgContainerId_ pActgTriggerId_ pActgAccountId_ =
    AccountsContainersTriggersGet
    { _actgQuotaUser = Nothing
    , _actgPrettyPrint = True
    , _actgContainerId = pActgContainerId_
    , _actgTriggerId = pActgTriggerId_
    , _actgUserIp = Nothing
    , _actgAccountId = pActgAccountId_
    , _actgKey = Nothing
    , _actgOauthToken = Nothing
    , _actgFields = Nothing
    , _actgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actgQuotaUser :: Lens' AccountsContainersTriggersGet' (Maybe Text)
actgQuotaUser
  = lens _actgQuotaUser
      (\ s a -> s{_actgQuotaUser = a})

-- | Returns response with indentations and line breaks.
actgPrettyPrint :: Lens' AccountsContainersTriggersGet' Bool
actgPrettyPrint
  = lens _actgPrettyPrint
      (\ s a -> s{_actgPrettyPrint = a})

-- | The GTM Container ID.
actgContainerId :: Lens' AccountsContainersTriggersGet' Text
actgContainerId
  = lens _actgContainerId
      (\ s a -> s{_actgContainerId = a})

-- | The GTM Trigger ID.
actgTriggerId :: Lens' AccountsContainersTriggersGet' Text
actgTriggerId
  = lens _actgTriggerId
      (\ s a -> s{_actgTriggerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actgUserIp :: Lens' AccountsContainersTriggersGet' (Maybe Text)
actgUserIp
  = lens _actgUserIp (\ s a -> s{_actgUserIp = a})

-- | The GTM Account ID.
actgAccountId :: Lens' AccountsContainersTriggersGet' Text
actgAccountId
  = lens _actgAccountId
      (\ s a -> s{_actgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actgKey :: Lens' AccountsContainersTriggersGet' (Maybe Text)
actgKey = lens _actgKey (\ s a -> s{_actgKey = a})

-- | OAuth 2.0 token for the current user.
actgOauthToken :: Lens' AccountsContainersTriggersGet' (Maybe Text)
actgOauthToken
  = lens _actgOauthToken
      (\ s a -> s{_actgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actgFields :: Lens' AccountsContainersTriggersGet' (Maybe Text)
actgFields
  = lens _actgFields (\ s a -> s{_actgFields = a})

-- | Data format for the response.
actgAlt :: Lens' AccountsContainersTriggersGet' Text
actgAlt = lens _actgAlt (\ s a -> s{_actgAlt = a})

instance GoogleRequest AccountsContainersTriggersGet'
         where
        type Rs AccountsContainersTriggersGet' = Trigger
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTriggersGet{..}
          = go _actgQuotaUser _actgPrettyPrint _actgContainerId
              _actgTriggerId
              _actgUserIp
              _actgAccountId
              _actgKey
              _actgOauthToken
              _actgFields
              _actgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTriggersGetAPI)
                      r
                      u
