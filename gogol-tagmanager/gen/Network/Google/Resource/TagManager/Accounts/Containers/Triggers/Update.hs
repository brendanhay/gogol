{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersTriggersUpdate@.
module TagManager.Accounts.Containers.Triggers.Update
    (
    -- * REST Resource
      AccountsContainersTriggersUpdateAPI

    -- * Creating a Request
    , accountsContainersTriggersUpdate
    , AccountsContainersTriggersUpdate

    -- * Request Lenses
    , actuQuotaUser
    , actuPrettyPrint
    , actuContainerId
    , actuTriggerId
    , actuUserIp
    , actuFingerprint
    , actuAccountId
    , actuKey
    , actuOauthToken
    , actuFields
    , actuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersTriggersUpdate@ which the
-- 'AccountsContainersTriggersUpdate' request conforms to.
type AccountsContainersTriggersUpdateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               Capture "triggerId" Text :>
                 QueryParam "fingerprint" Text :> Put '[JSON] Trigger

-- | Updates a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersUpdate' smart constructor.
data AccountsContainersTriggersUpdate = AccountsContainersTriggersUpdate
    { _actuQuotaUser   :: !(Maybe Text)
    , _actuPrettyPrint :: !Bool
    , _actuContainerId :: !Text
    , _actuTriggerId   :: !Text
    , _actuUserIp      :: !(Maybe Text)
    , _actuFingerprint :: !(Maybe Text)
    , _actuAccountId   :: !Text
    , _actuKey         :: !(Maybe Text)
    , _actuOauthToken  :: !(Maybe Text)
    , _actuFields      :: !(Maybe Text)
    , _actuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actuQuotaUser'
--
-- * 'actuPrettyPrint'
--
-- * 'actuContainerId'
--
-- * 'actuTriggerId'
--
-- * 'actuUserIp'
--
-- * 'actuFingerprint'
--
-- * 'actuAccountId'
--
-- * 'actuKey'
--
-- * 'actuOauthToken'
--
-- * 'actuFields'
--
-- * 'actuAlt'
accountsContainersTriggersUpdate
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'triggerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersUpdate
accountsContainersTriggersUpdate pActuContainerId_ pActuTriggerId_ pActuAccountId_ =
    AccountsContainersTriggersUpdate
    { _actuQuotaUser = Nothing
    , _actuPrettyPrint = True
    , _actuContainerId = pActuContainerId_
    , _actuTriggerId = pActuTriggerId_
    , _actuUserIp = Nothing
    , _actuFingerprint = Nothing
    , _actuAccountId = pActuAccountId_
    , _actuKey = Nothing
    , _actuOauthToken = Nothing
    , _actuFields = Nothing
    , _actuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actuQuotaUser :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actuQuotaUser
  = lens _actuQuotaUser
      (\ s a -> s{_actuQuotaUser = a})

-- | Returns response with indentations and line breaks.
actuPrettyPrint :: Lens' AccountsContainersTriggersUpdate' Bool
actuPrettyPrint
  = lens _actuPrettyPrint
      (\ s a -> s{_actuPrettyPrint = a})

-- | The GTM Container ID.
actuContainerId :: Lens' AccountsContainersTriggersUpdate' Text
actuContainerId
  = lens _actuContainerId
      (\ s a -> s{_actuContainerId = a})

-- | The GTM Trigger ID.
actuTriggerId :: Lens' AccountsContainersTriggersUpdate' Text
actuTriggerId
  = lens _actuTriggerId
      (\ s a -> s{_actuTriggerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actuUserIp :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actuUserIp
  = lens _actuUserIp (\ s a -> s{_actuUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- trigger in storage.
actuFingerprint :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actuFingerprint
  = lens _actuFingerprint
      (\ s a -> s{_actuFingerprint = a})

-- | The GTM Account ID.
actuAccountId :: Lens' AccountsContainersTriggersUpdate' Text
actuAccountId
  = lens _actuAccountId
      (\ s a -> s{_actuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actuKey :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actuKey = lens _actuKey (\ s a -> s{_actuKey = a})

-- | OAuth 2.0 token for the current user.
actuOauthToken :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actuOauthToken
  = lens _actuOauthToken
      (\ s a -> s{_actuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actuFields :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actuFields
  = lens _actuFields (\ s a -> s{_actuFields = a})

-- | Data format for the response.
actuAlt :: Lens' AccountsContainersTriggersUpdate' Text
actuAlt = lens _actuAlt (\ s a -> s{_actuAlt = a})

instance GoogleRequest
         AccountsContainersTriggersUpdate' where
        type Rs AccountsContainersTriggersUpdate' = Trigger
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTriggersUpdate{..}
          = go _actuQuotaUser _actuPrettyPrint _actuContainerId
              _actuTriggerId
              _actuUserIp
              _actuFingerprint
              _actuAccountId
              _actuKey
              _actuOauthToken
              _actuFields
              _actuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTriggersUpdateAPI)
                      r
                      u
