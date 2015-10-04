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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTriggersDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Delete
    (
    -- * REST Resource
      AccountsContainersTriggersDeleteResource

    -- * Creating a Request
    , accountsContainersTriggersDelete'
    , AccountsContainersTriggersDelete'

    -- * Request Lenses
    , actdQuotaUser
    , actdPrettyPrint
    , actdContainerId
    , actdTriggerId
    , actdUserIP
    , actdAccountId
    , actdKey
    , actdOAuthToken
    , actdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTriggersDelete@ which the
-- 'AccountsContainersTriggersDelete'' request conforms to.
type AccountsContainersTriggersDeleteResource =
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
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersDelete'' smart constructor.
data AccountsContainersTriggersDelete' = AccountsContainersTriggersDelete'
    { _actdQuotaUser   :: !(Maybe Text)
    , _actdPrettyPrint :: !Bool
    , _actdContainerId :: !Text
    , _actdTriggerId   :: !Text
    , _actdUserIP      :: !(Maybe Text)
    , _actdAccountId   :: !Text
    , _actdKey         :: !(Maybe Key)
    , _actdOAuthToken  :: !(Maybe OAuthToken)
    , _actdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actdQuotaUser'
--
-- * 'actdPrettyPrint'
--
-- * 'actdContainerId'
--
-- * 'actdTriggerId'
--
-- * 'actdUserIP'
--
-- * 'actdAccountId'
--
-- * 'actdKey'
--
-- * 'actdOAuthToken'
--
-- * 'actdFields'
accountsContainersTriggersDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'triggerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersDelete'
accountsContainersTriggersDelete' pActdContainerId_ pActdTriggerId_ pActdAccountId_ =
    AccountsContainersTriggersDelete'
    { _actdQuotaUser = Nothing
    , _actdPrettyPrint = True
    , _actdContainerId = pActdContainerId_
    , _actdTriggerId = pActdTriggerId_
    , _actdUserIP = Nothing
    , _actdAccountId = pActdAccountId_
    , _actdKey = Nothing
    , _actdOAuthToken = Nothing
    , _actdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actdQuotaUser :: Lens' AccountsContainersTriggersDelete' (Maybe Text)
actdQuotaUser
  = lens _actdQuotaUser
      (\ s a -> s{_actdQuotaUser = a})

-- | Returns response with indentations and line breaks.
actdPrettyPrint :: Lens' AccountsContainersTriggersDelete' Bool
actdPrettyPrint
  = lens _actdPrettyPrint
      (\ s a -> s{_actdPrettyPrint = a})

-- | The GTM Container ID.
actdContainerId :: Lens' AccountsContainersTriggersDelete' Text
actdContainerId
  = lens _actdContainerId
      (\ s a -> s{_actdContainerId = a})

-- | The GTM Trigger ID.
actdTriggerId :: Lens' AccountsContainersTriggersDelete' Text
actdTriggerId
  = lens _actdTriggerId
      (\ s a -> s{_actdTriggerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actdUserIP :: Lens' AccountsContainersTriggersDelete' (Maybe Text)
actdUserIP
  = lens _actdUserIP (\ s a -> s{_actdUserIP = a})

-- | The GTM Account ID.
actdAccountId :: Lens' AccountsContainersTriggersDelete' Text
actdAccountId
  = lens _actdAccountId
      (\ s a -> s{_actdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actdKey :: Lens' AccountsContainersTriggersDelete' (Maybe Key)
actdKey = lens _actdKey (\ s a -> s{_actdKey = a})

-- | OAuth 2.0 token for the current user.
actdOAuthToken :: Lens' AccountsContainersTriggersDelete' (Maybe OAuthToken)
actdOAuthToken
  = lens _actdOAuthToken
      (\ s a -> s{_actdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
actdFields :: Lens' AccountsContainersTriggersDelete' (Maybe Text)
actdFields
  = lens _actdFields (\ s a -> s{_actdFields = a})

instance GoogleAuth AccountsContainersTriggersDelete'
         where
        authKey = actdKey . _Just
        authToken = actdOAuthToken . _Just

instance GoogleRequest
         AccountsContainersTriggersDelete' where
        type Rs AccountsContainersTriggersDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTriggersDelete'{..}
          = go _actdAccountId _actdContainerId _actdTriggerId
              _actdQuotaUser
              (Just _actdPrettyPrint)
              _actdUserIP
              _actdFields
              _actdKey
              _actdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersTriggersDeleteResource)
                      r
                      u
