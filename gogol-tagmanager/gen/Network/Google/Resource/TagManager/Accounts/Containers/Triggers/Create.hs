{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTriggersCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Create
    (
    -- * REST Resource
      AccountsContainersTriggersCreateResource

    -- * Creating a Request
    , accountsContainersTriggersCreate'
    , AccountsContainersTriggersCreate'

    -- * Request Lenses
    , actccQuotaUser
    , actccPrettyPrint
    , actccContainerId
    , actccUserIP
    , actccPayload
    , actccAccountId
    , actccKey
    , actccOAuthToken
    , actccFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTriggersCreate@ method which the
-- 'AccountsContainersTriggersCreate'' request conforms to.
type AccountsContainersTriggersCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Trigger :> Post '[JSON] Trigger

-- | Creates a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersCreate'' smart constructor.
data AccountsContainersTriggersCreate' = AccountsContainersTriggersCreate'
    { _actccQuotaUser   :: !(Maybe Text)
    , _actccPrettyPrint :: !Bool
    , _actccContainerId :: !Text
    , _actccUserIP      :: !(Maybe Text)
    , _actccPayload     :: !Trigger
    , _actccAccountId   :: !Text
    , _actccKey         :: !(Maybe AuthKey)
    , _actccOAuthToken  :: !(Maybe OAuthToken)
    , _actccFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actccQuotaUser'
--
-- * 'actccPrettyPrint'
--
-- * 'actccContainerId'
--
-- * 'actccUserIP'
--
-- * 'actccPayload'
--
-- * 'actccAccountId'
--
-- * 'actccKey'
--
-- * 'actccOAuthToken'
--
-- * 'actccFields'
accountsContainersTriggersCreate'
    :: Text -- ^ 'containerId'
    -> Trigger -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersCreate'
accountsContainersTriggersCreate' pActccContainerId_ pActccPayload_ pActccAccountId_ =
    AccountsContainersTriggersCreate'
    { _actccQuotaUser = Nothing
    , _actccPrettyPrint = True
    , _actccContainerId = pActccContainerId_
    , _actccUserIP = Nothing
    , _actccPayload = pActccPayload_
    , _actccAccountId = pActccAccountId_
    , _actccKey = Nothing
    , _actccOAuthToken = Nothing
    , _actccFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actccQuotaUser :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actccQuotaUser
  = lens _actccQuotaUser
      (\ s a -> s{_actccQuotaUser = a})

-- | Returns response with indentations and line breaks.
actccPrettyPrint :: Lens' AccountsContainersTriggersCreate' Bool
actccPrettyPrint
  = lens _actccPrettyPrint
      (\ s a -> s{_actccPrettyPrint = a})

-- | The GTM Container ID.
actccContainerId :: Lens' AccountsContainersTriggersCreate' Text
actccContainerId
  = lens _actccContainerId
      (\ s a -> s{_actccContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actccUserIP :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actccUserIP
  = lens _actccUserIP (\ s a -> s{_actccUserIP = a})

-- | Multipart request metadata.
actccPayload :: Lens' AccountsContainersTriggersCreate' Trigger
actccPayload
  = lens _actccPayload (\ s a -> s{_actccPayload = a})

-- | The GTM Account ID.
actccAccountId :: Lens' AccountsContainersTriggersCreate' Text
actccAccountId
  = lens _actccAccountId
      (\ s a -> s{_actccAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actccKey :: Lens' AccountsContainersTriggersCreate' (Maybe AuthKey)
actccKey = lens _actccKey (\ s a -> s{_actccKey = a})

-- | OAuth 2.0 token for the current user.
actccOAuthToken :: Lens' AccountsContainersTriggersCreate' (Maybe OAuthToken)
actccOAuthToken
  = lens _actccOAuthToken
      (\ s a -> s{_actccOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
actccFields :: Lens' AccountsContainersTriggersCreate' (Maybe Text)
actccFields
  = lens _actccFields (\ s a -> s{_actccFields = a})

instance GoogleAuth AccountsContainersTriggersCreate'
         where
        _AuthKey = actccKey . _Just
        _AuthToken = actccOAuthToken . _Just

instance GoogleRequest
         AccountsContainersTriggersCreate' where
        type Rs AccountsContainersTriggersCreate' = Trigger
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersTriggersCreate'{..}
          = go _actccAccountId _actccContainerId
              _actccQuotaUser
              (Just _actccPrettyPrint)
              _actccUserIP
              _actccFields
              _actccKey
              _actccOAuthToken
              (Just AltJSON)
              _actccPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AccountsContainersTriggersCreateResource)
                      rq
