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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersTriggersDelete@.
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
    , actdUserIp
    , actdAccountId
    , actdKey
    , actdOauthToken
    , actdFields
    , actdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersTriggersDelete@ which the
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
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersDelete'' smart constructor.
data AccountsContainersTriggersDelete' = AccountsContainersTriggersDelete'
    { _actdQuotaUser   :: !(Maybe Text)
    , _actdPrettyPrint :: !Bool
    , _actdContainerId :: !Text
    , _actdTriggerId   :: !Text
    , _actdUserIp      :: !(Maybe Text)
    , _actdAccountId   :: !Text
    , _actdKey         :: !(Maybe Text)
    , _actdOauthToken  :: !(Maybe Text)
    , _actdFields      :: !(Maybe Text)
    , _actdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'actdUserIp'
--
-- * 'actdAccountId'
--
-- * 'actdKey'
--
-- * 'actdOauthToken'
--
-- * 'actdFields'
--
-- * 'actdAlt'
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
    , _actdUserIp = Nothing
    , _actdAccountId = pActdAccountId_
    , _actdKey = Nothing
    , _actdOauthToken = Nothing
    , _actdFields = Nothing
    , _actdAlt = JSON
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
actdUserIp :: Lens' AccountsContainersTriggersDelete' (Maybe Text)
actdUserIp
  = lens _actdUserIp (\ s a -> s{_actdUserIp = a})

-- | The GTM Account ID.
actdAccountId :: Lens' AccountsContainersTriggersDelete' Text
actdAccountId
  = lens _actdAccountId
      (\ s a -> s{_actdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actdKey :: Lens' AccountsContainersTriggersDelete' (Maybe Text)
actdKey = lens _actdKey (\ s a -> s{_actdKey = a})

-- | OAuth 2.0 token for the current user.
actdOauthToken :: Lens' AccountsContainersTriggersDelete' (Maybe Text)
actdOauthToken
  = lens _actdOauthToken
      (\ s a -> s{_actdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actdFields :: Lens' AccountsContainersTriggersDelete' (Maybe Text)
actdFields
  = lens _actdFields (\ s a -> s{_actdFields = a})

-- | Data format for the response.
actdAlt :: Lens' AccountsContainersTriggersDelete' Alt
actdAlt = lens _actdAlt (\ s a -> s{_actdAlt = a})

instance GoogleRequest
         AccountsContainersTriggersDelete' where
        type Rs AccountsContainersTriggersDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTriggersDelete'{..}
          = go _actdQuotaUser (Just _actdPrettyPrint)
              _actdContainerId
              _actdTriggerId
              _actdUserIp
              _actdAccountId
              _actdKey
              _actdOauthToken
              _actdFields
              (Just _actdAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersTriggersDeleteResource)
                      r
                      u
