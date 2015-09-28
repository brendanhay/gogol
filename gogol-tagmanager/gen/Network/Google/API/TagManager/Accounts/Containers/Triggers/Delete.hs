{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Triggers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.triggers.delete@.
module Network.Google.API.TagManager.Accounts.Containers.Triggers.Delete
    (
    -- * REST Resource
      AccountsContainersTriggersDeleteAPI

    -- * Creating a Request
    , accountsContainersTriggersDelete'
    , AccountsContainersTriggersDelete'

    -- * Request Lenses
    , actdcQuotaUser
    , actdcPrettyPrint
    , actdcContainerId
    , actdcTriggerId
    , actdcUserIp
    , actdcAccountId
    , actdcKey
    , actdcOauthToken
    , actdcFields
    , actdcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.triggers.delete which the
-- 'AccountsContainersTriggersDelete'' request conforms to.
type AccountsContainersTriggersDeleteAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               Capture "triggerId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersDelete'' smart constructor.
data AccountsContainersTriggersDelete' = AccountsContainersTriggersDelete'
    { _actdcQuotaUser   :: !(Maybe Text)
    , _actdcPrettyPrint :: !Bool
    , _actdcContainerId :: !Text
    , _actdcTriggerId   :: !Text
    , _actdcUserIp      :: !(Maybe Text)
    , _actdcAccountId   :: !Text
    , _actdcKey         :: !(Maybe Text)
    , _actdcOauthToken  :: !(Maybe Text)
    , _actdcFields      :: !(Maybe Text)
    , _actdcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actdcQuotaUser'
--
-- * 'actdcPrettyPrint'
--
-- * 'actdcContainerId'
--
-- * 'actdcTriggerId'
--
-- * 'actdcUserIp'
--
-- * 'actdcAccountId'
--
-- * 'actdcKey'
--
-- * 'actdcOauthToken'
--
-- * 'actdcFields'
--
-- * 'actdcAlt'
accountsContainersTriggersDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'triggerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersDelete'
accountsContainersTriggersDelete' pActdcContainerId_ pActdcTriggerId_ pActdcAccountId_ =
    AccountsContainersTriggersDelete'
    { _actdcQuotaUser = Nothing
    , _actdcPrettyPrint = True
    , _actdcContainerId = pActdcContainerId_
    , _actdcTriggerId = pActdcTriggerId_
    , _actdcUserIp = Nothing
    , _actdcAccountId = pActdcAccountId_
    , _actdcKey = Nothing
    , _actdcOauthToken = Nothing
    , _actdcFields = Nothing
    , _actdcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actdcQuotaUser :: Lens' AccountsContainersTriggersDelete' (Maybe Text)
actdcQuotaUser
  = lens _actdcQuotaUser
      (\ s a -> s{_actdcQuotaUser = a})

-- | Returns response with indentations and line breaks.
actdcPrettyPrint :: Lens' AccountsContainersTriggersDelete' Bool
actdcPrettyPrint
  = lens _actdcPrettyPrint
      (\ s a -> s{_actdcPrettyPrint = a})

-- | The GTM Container ID.
actdcContainerId :: Lens' AccountsContainersTriggersDelete' Text
actdcContainerId
  = lens _actdcContainerId
      (\ s a -> s{_actdcContainerId = a})

-- | The GTM Trigger ID.
actdcTriggerId :: Lens' AccountsContainersTriggersDelete' Text
actdcTriggerId
  = lens _actdcTriggerId
      (\ s a -> s{_actdcTriggerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actdcUserIp :: Lens' AccountsContainersTriggersDelete' (Maybe Text)
actdcUserIp
  = lens _actdcUserIp (\ s a -> s{_actdcUserIp = a})

-- | The GTM Account ID.
actdcAccountId :: Lens' AccountsContainersTriggersDelete' Text
actdcAccountId
  = lens _actdcAccountId
      (\ s a -> s{_actdcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actdcKey :: Lens' AccountsContainersTriggersDelete' (Maybe Text)
actdcKey = lens _actdcKey (\ s a -> s{_actdcKey = a})

-- | OAuth 2.0 token for the current user.
actdcOauthToken :: Lens' AccountsContainersTriggersDelete' (Maybe Text)
actdcOauthToken
  = lens _actdcOauthToken
      (\ s a -> s{_actdcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actdcFields :: Lens' AccountsContainersTriggersDelete' (Maybe Text)
actdcFields
  = lens _actdcFields (\ s a -> s{_actdcFields = a})

-- | Data format for the response.
actdcAlt :: Lens' AccountsContainersTriggersDelete' Alt
actdcAlt = lens _actdcAlt (\ s a -> s{_actdcAlt = a})

instance GoogleRequest
         AccountsContainersTriggersDelete' where
        type Rs AccountsContainersTriggersDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTriggersDelete'{..}
          = go _actdcQuotaUser (Just _actdcPrettyPrint)
              _actdcContainerId
              _actdcTriggerId
              _actdcUserIp
              _actdcAccountId
              _actdcKey
              _actdcOauthToken
              _actdcFields
              (Just _actdcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTriggersDeleteAPI)
                      r
                      u
