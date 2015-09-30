{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersTriggersCreate@.
module TagManager.Accounts.Containers.Triggers.Create
    (
    -- * REST Resource
      AccountsContainersTriggersCreateAPI

    -- * Creating a Request
    , accountsContainersTriggersCreate
    , AccountsContainersTriggersCreate

    -- * Request Lenses
    , actcQuotaUser
    , actcPrettyPrint
    , actcContainerId
    , actcUserIp
    , actcAccountId
    , actcKey
    , actcOauthToken
    , actcFields
    , actcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersTriggersCreate@ which the
-- 'AccountsContainersTriggersCreate' request conforms to.
type AccountsContainersTriggersCreateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :> Post '[JSON] Trigger

-- | Creates a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersCreate' smart constructor.
data AccountsContainersTriggersCreate = AccountsContainersTriggersCreate
    { _actcQuotaUser   :: !(Maybe Text)
    , _actcPrettyPrint :: !Bool
    , _actcContainerId :: !Text
    , _actcUserIp      :: !(Maybe Text)
    , _actcAccountId   :: !Text
    , _actcKey         :: !(Maybe Text)
    , _actcOauthToken  :: !(Maybe Text)
    , _actcFields      :: !(Maybe Text)
    , _actcAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actcQuotaUser'
--
-- * 'actcPrettyPrint'
--
-- * 'actcContainerId'
--
-- * 'actcUserIp'
--
-- * 'actcAccountId'
--
-- * 'actcKey'
--
-- * 'actcOauthToken'
--
-- * 'actcFields'
--
-- * 'actcAlt'
accountsContainersTriggersCreate
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersCreate
accountsContainersTriggersCreate pActcContainerId_ pActcAccountId_ =
    AccountsContainersTriggersCreate
    { _actcQuotaUser = Nothing
    , _actcPrettyPrint = True
    , _actcContainerId = pActcContainerId_
    , _actcUserIp = Nothing
    , _actcAccountId = pActcAccountId_
    , _actcKey = Nothing
    , _actcOauthToken = Nothing
    , _actcFields = Nothing
    , _actcAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actcQuotaUser :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actcQuotaUser
  = lens _actcQuotaUser
      (\ s a -> s{_actcQuotaUser = a})

-- | Returns response with indentations and line breaks.
actcPrettyPrint :: Lens' AccountsContainersTriggersCreate' Bool
actcPrettyPrint
  = lens _actcPrettyPrint
      (\ s a -> s{_actcPrettyPrint = a})

-- | The GTM Container ID.
actcContainerId :: Lens' AccountsContainersTriggersCreate' Text
actcContainerId
  = lens _actcContainerId
      (\ s a -> s{_actcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actcUserIp :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actcUserIp
  = lens _actcUserIp (\ s a -> s{_actcUserIp = a})

-- | The GTM Account ID.
actcAccountId :: Lens' AccountsContainersTriggersCreate' Text
actcAccountId
  = lens _actcAccountId
      (\ s a -> s{_actcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actcKey :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actcKey = lens _actcKey (\ s a -> s{_actcKey = a})

-- | OAuth 2.0 token for the current user.
actcOauthToken :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actcOauthToken
  = lens _actcOauthToken
      (\ s a -> s{_actcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actcFields :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actcFields
  = lens _actcFields (\ s a -> s{_actcFields = a})

-- | Data format for the response.
actcAlt :: Lens' AccountsContainersTriggersCreate' Text
actcAlt = lens _actcAlt (\ s a -> s{_actcAlt = a})

instance GoogleRequest
         AccountsContainersTriggersCreate' where
        type Rs AccountsContainersTriggersCreate' = Trigger
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTriggersCreate{..}
          = go _actcQuotaUser _actcPrettyPrint _actcContainerId
              _actcUserIp
              _actcAccountId
              _actcKey
              _actcOauthToken
              _actcFields
              _actcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTriggersCreateAPI)
                      r
                      u
