{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTriggersGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Get
    (
    -- * REST Resource
      AccountsContainersTriggersGetResource

    -- * Creating a Request
    , accountsContainersTriggersGet'
    , AccountsContainersTriggersGet'

    -- * Request Lenses
    , actgQuotaUser
    , actgPrettyPrint
    , actgContainerId
    , actgTriggerId
    , actgUserIP
    , actgAccountId
    , actgKey
    , actgOAuthToken
    , actgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTriggersGet@ which the
-- 'AccountsContainersTriggersGet'' request conforms to.
type AccountsContainersTriggersGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               Capture "triggerId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Trigger

-- | Gets a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersGet'' smart constructor.
data AccountsContainersTriggersGet' = AccountsContainersTriggersGet'
    { _actgQuotaUser   :: !(Maybe Text)
    , _actgPrettyPrint :: !Bool
    , _actgContainerId :: !Text
    , _actgTriggerId   :: !Text
    , _actgUserIP      :: !(Maybe Text)
    , _actgAccountId   :: !Text
    , _actgKey         :: !(Maybe Key)
    , _actgOAuthToken  :: !(Maybe OAuthToken)
    , _actgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'actgUserIP'
--
-- * 'actgAccountId'
--
-- * 'actgKey'
--
-- * 'actgOAuthToken'
--
-- * 'actgFields'
accountsContainersTriggersGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'triggerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersGet'
accountsContainersTriggersGet' pActgContainerId_ pActgTriggerId_ pActgAccountId_ =
    AccountsContainersTriggersGet'
    { _actgQuotaUser = Nothing
    , _actgPrettyPrint = True
    , _actgContainerId = pActgContainerId_
    , _actgTriggerId = pActgTriggerId_
    , _actgUserIP = Nothing
    , _actgAccountId = pActgAccountId_
    , _actgKey = Nothing
    , _actgOAuthToken = Nothing
    , _actgFields = Nothing
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
actgUserIP :: Lens' AccountsContainersTriggersGet' (Maybe Text)
actgUserIP
  = lens _actgUserIP (\ s a -> s{_actgUserIP = a})

-- | The GTM Account ID.
actgAccountId :: Lens' AccountsContainersTriggersGet' Text
actgAccountId
  = lens _actgAccountId
      (\ s a -> s{_actgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actgKey :: Lens' AccountsContainersTriggersGet' (Maybe Key)
actgKey = lens _actgKey (\ s a -> s{_actgKey = a})

-- | OAuth 2.0 token for the current user.
actgOAuthToken :: Lens' AccountsContainersTriggersGet' (Maybe OAuthToken)
actgOAuthToken
  = lens _actgOAuthToken
      (\ s a -> s{_actgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
actgFields :: Lens' AccountsContainersTriggersGet' (Maybe Text)
actgFields
  = lens _actgFields (\ s a -> s{_actgFields = a})

instance GoogleAuth AccountsContainersTriggersGet'
         where
        authKey = actgKey . _Just
        authToken = actgOAuthToken . _Just

instance GoogleRequest AccountsContainersTriggersGet'
         where
        type Rs AccountsContainersTriggersGet' = Trigger
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTriggersGet'{..}
          = go _actgAccountId _actgContainerId _actgTriggerId
              _actgQuotaUser
              (Just _actgPrettyPrint)
              _actgUserIP
              _actgFields
              _actgKey
              _actgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersTriggersGetResource)
                      r
                      u
