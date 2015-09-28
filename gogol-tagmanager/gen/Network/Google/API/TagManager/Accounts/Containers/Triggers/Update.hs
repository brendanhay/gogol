{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Triggers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.triggers.update@.
module Network.Google.API.TagManager.Accounts.Containers.Triggers.Update
    (
    -- * REST Resource
      AccountsContainersTriggersUpdateAPI

    -- * Creating a Request
    , accountsContainersTriggersUpdate'
    , AccountsContainersTriggersUpdate'

    -- * Request Lenses
    , actucQuotaUser
    , actucPrettyPrint
    , actucContainerId
    , actucTriggerId
    , actucUserIp
    , actucFingerprint
    , actucAccountId
    , actucKey
    , actucOauthToken
    , actucFields
    , actucAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.triggers.update which the
-- 'AccountsContainersTriggersUpdate'' request conforms to.
type AccountsContainersTriggersUpdateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               Capture "triggerId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fingerprint" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Put '[JSON] Trigger

-- | Updates a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersUpdate'' smart constructor.
data AccountsContainersTriggersUpdate' = AccountsContainersTriggersUpdate'
    { _actucQuotaUser   :: !(Maybe Text)
    , _actucPrettyPrint :: !Bool
    , _actucContainerId :: !Text
    , _actucTriggerId   :: !Text
    , _actucUserIp      :: !(Maybe Text)
    , _actucFingerprint :: !(Maybe Text)
    , _actucAccountId   :: !Text
    , _actucKey         :: !(Maybe Text)
    , _actucOauthToken  :: !(Maybe Text)
    , _actucFields      :: !(Maybe Text)
    , _actucAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actucQuotaUser'
--
-- * 'actucPrettyPrint'
--
-- * 'actucContainerId'
--
-- * 'actucTriggerId'
--
-- * 'actucUserIp'
--
-- * 'actucFingerprint'
--
-- * 'actucAccountId'
--
-- * 'actucKey'
--
-- * 'actucOauthToken'
--
-- * 'actucFields'
--
-- * 'actucAlt'
accountsContainersTriggersUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'triggerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersUpdate'
accountsContainersTriggersUpdate' pActucContainerId_ pActucTriggerId_ pActucAccountId_ =
    AccountsContainersTriggersUpdate'
    { _actucQuotaUser = Nothing
    , _actucPrettyPrint = True
    , _actucContainerId = pActucContainerId_
    , _actucTriggerId = pActucTriggerId_
    , _actucUserIp = Nothing
    , _actucFingerprint = Nothing
    , _actucAccountId = pActucAccountId_
    , _actucKey = Nothing
    , _actucOauthToken = Nothing
    , _actucFields = Nothing
    , _actucAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actucQuotaUser :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actucQuotaUser
  = lens _actucQuotaUser
      (\ s a -> s{_actucQuotaUser = a})

-- | Returns response with indentations and line breaks.
actucPrettyPrint :: Lens' AccountsContainersTriggersUpdate' Bool
actucPrettyPrint
  = lens _actucPrettyPrint
      (\ s a -> s{_actucPrettyPrint = a})

-- | The GTM Container ID.
actucContainerId :: Lens' AccountsContainersTriggersUpdate' Text
actucContainerId
  = lens _actucContainerId
      (\ s a -> s{_actucContainerId = a})

-- | The GTM Trigger ID.
actucTriggerId :: Lens' AccountsContainersTriggersUpdate' Text
actucTriggerId
  = lens _actucTriggerId
      (\ s a -> s{_actucTriggerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actucUserIp :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actucUserIp
  = lens _actucUserIp (\ s a -> s{_actucUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- trigger in storage.
actucFingerprint :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actucFingerprint
  = lens _actucFingerprint
      (\ s a -> s{_actucFingerprint = a})

-- | The GTM Account ID.
actucAccountId :: Lens' AccountsContainersTriggersUpdate' Text
actucAccountId
  = lens _actucAccountId
      (\ s a -> s{_actucAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actucKey :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actucKey = lens _actucKey (\ s a -> s{_actucKey = a})

-- | OAuth 2.0 token for the current user.
actucOauthToken :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actucOauthToken
  = lens _actucOauthToken
      (\ s a -> s{_actucOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actucFields :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actucFields
  = lens _actucFields (\ s a -> s{_actucFields = a})

-- | Data format for the response.
actucAlt :: Lens' AccountsContainersTriggersUpdate' Alt
actucAlt = lens _actucAlt (\ s a -> s{_actucAlt = a})

instance GoogleRequest
         AccountsContainersTriggersUpdate' where
        type Rs AccountsContainersTriggersUpdate' = Trigger
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTriggersUpdate'{..}
          = go _actucQuotaUser (Just _actucPrettyPrint)
              _actucContainerId
              _actucTriggerId
              _actucUserIp
              _actucFingerprint
              _actucAccountId
              _actucKey
              _actucOauthToken
              _actucFields
              (Just _actucAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTriggersUpdateAPI)
                      r
                      u
