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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Triggers of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTriggersList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.List
    (
    -- * REST Resource
      AccountsContainersTriggersListResource

    -- * Creating a Request
    , accountsContainersTriggersList'
    , AccountsContainersTriggersList'

    -- * Request Lenses
    , actlQuotaUser
    , actlPrettyPrint
    , actlContainerId
    , actlUserIP
    , actlAccountId
    , actlKey
    , actlOAuthToken
    , actlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTriggersList@ method which the
-- 'AccountsContainersTriggersList'' request conforms to.
type AccountsContainersTriggersListResource =
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
                             Get '[JSON] ListTriggersResponse

-- | Lists all GTM Triggers of a Container.
--
-- /See:/ 'accountsContainersTriggersList'' smart constructor.
data AccountsContainersTriggersList' = AccountsContainersTriggersList'
    { _actlQuotaUser   :: !(Maybe Text)
    , _actlPrettyPrint :: !Bool
    , _actlContainerId :: !Text
    , _actlUserIP      :: !(Maybe Text)
    , _actlAccountId   :: !Text
    , _actlKey         :: !(Maybe AuthKey)
    , _actlOAuthToken  :: !(Maybe OAuthToken)
    , _actlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actlQuotaUser'
--
-- * 'actlPrettyPrint'
--
-- * 'actlContainerId'
--
-- * 'actlUserIP'
--
-- * 'actlAccountId'
--
-- * 'actlKey'
--
-- * 'actlOAuthToken'
--
-- * 'actlFields'
accountsContainersTriggersList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersList'
accountsContainersTriggersList' pActlContainerId_ pActlAccountId_ =
    AccountsContainersTriggersList'
    { _actlQuotaUser = Nothing
    , _actlPrettyPrint = True
    , _actlContainerId = pActlContainerId_
    , _actlUserIP = Nothing
    , _actlAccountId = pActlAccountId_
    , _actlKey = Nothing
    , _actlOAuthToken = Nothing
    , _actlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actlQuotaUser :: Lens' AccountsContainersTriggersList' (Maybe Text)
actlQuotaUser
  = lens _actlQuotaUser
      (\ s a -> s{_actlQuotaUser = a})

-- | Returns response with indentations and line breaks.
actlPrettyPrint :: Lens' AccountsContainersTriggersList' Bool
actlPrettyPrint
  = lens _actlPrettyPrint
      (\ s a -> s{_actlPrettyPrint = a})

-- | The GTM Container ID.
actlContainerId :: Lens' AccountsContainersTriggersList' Text
actlContainerId
  = lens _actlContainerId
      (\ s a -> s{_actlContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actlUserIP :: Lens' AccountsContainersTriggersList' (Maybe Text)
actlUserIP
  = lens _actlUserIP (\ s a -> s{_actlUserIP = a})

-- | The GTM Account ID.
actlAccountId :: Lens' AccountsContainersTriggersList' Text
actlAccountId
  = lens _actlAccountId
      (\ s a -> s{_actlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actlKey :: Lens' AccountsContainersTriggersList' (Maybe AuthKey)
actlKey = lens _actlKey (\ s a -> s{_actlKey = a})

-- | OAuth 2.0 token for the current user.
actlOAuthToken :: Lens' AccountsContainersTriggersList' (Maybe OAuthToken)
actlOAuthToken
  = lens _actlOAuthToken
      (\ s a -> s{_actlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
actlFields :: Lens' AccountsContainersTriggersList' (Maybe Text)
actlFields
  = lens _actlFields (\ s a -> s{_actlFields = a})

instance GoogleAuth AccountsContainersTriggersList'
         where
        _AuthKey = actlKey . _Just
        _AuthToken = actlOAuthToken . _Just

instance GoogleRequest
         AccountsContainersTriggersList' where
        type Rs AccountsContainersTriggersList' =
             ListTriggersResponse
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersTriggersList'{..}
          = go _actlAccountId _actlContainerId _actlQuotaUser
              (Just _actlPrettyPrint)
              _actlUserIP
              _actlFields
              _actlKey
              _actlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AccountsContainersTriggersListResource)
                      rq
