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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Get
    (
    -- * REST Resource
      AccountsContainersGetResource

    -- * Creating a Request
    , accountsContainersGet'
    , AccountsContainersGet'

    -- * Request Lenses
    , acgQuotaUser
    , acgPrettyPrint
    , acgContainerId
    , acgUserIP
    , acgAccountId
    , acgKey
    , acgOAuthToken
    , acgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersGet@ which the
-- 'AccountsContainersGet'' request conforms to.
type AccountsContainersGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Container

-- | Gets a Container.
--
-- /See:/ 'accountsContainersGet'' smart constructor.
data AccountsContainersGet' = AccountsContainersGet'
    { _acgQuotaUser   :: !(Maybe Text)
    , _acgPrettyPrint :: !Bool
    , _acgContainerId :: !Text
    , _acgUserIP      :: !(Maybe Text)
    , _acgAccountId   :: !Text
    , _acgKey         :: !(Maybe Key)
    , _acgOAuthToken  :: !(Maybe OAuthToken)
    , _acgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acgQuotaUser'
--
-- * 'acgPrettyPrint'
--
-- * 'acgContainerId'
--
-- * 'acgUserIP'
--
-- * 'acgAccountId'
--
-- * 'acgKey'
--
-- * 'acgOAuthToken'
--
-- * 'acgFields'
accountsContainersGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersGet'
accountsContainersGet' pAcgContainerId_ pAcgAccountId_ =
    AccountsContainersGet'
    { _acgQuotaUser = Nothing
    , _acgPrettyPrint = True
    , _acgContainerId = pAcgContainerId_
    , _acgUserIP = Nothing
    , _acgAccountId = pAcgAccountId_
    , _acgKey = Nothing
    , _acgOAuthToken = Nothing
    , _acgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acgQuotaUser :: Lens' AccountsContainersGet' (Maybe Text)
acgQuotaUser
  = lens _acgQuotaUser (\ s a -> s{_acgQuotaUser = a})

-- | Returns response with indentations and line breaks.
acgPrettyPrint :: Lens' AccountsContainersGet' Bool
acgPrettyPrint
  = lens _acgPrettyPrint
      (\ s a -> s{_acgPrettyPrint = a})

-- | The GTM Container ID.
acgContainerId :: Lens' AccountsContainersGet' Text
acgContainerId
  = lens _acgContainerId
      (\ s a -> s{_acgContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acgUserIP :: Lens' AccountsContainersGet' (Maybe Text)
acgUserIP
  = lens _acgUserIP (\ s a -> s{_acgUserIP = a})

-- | The GTM Account ID.
acgAccountId :: Lens' AccountsContainersGet' Text
acgAccountId
  = lens _acgAccountId (\ s a -> s{_acgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acgKey :: Lens' AccountsContainersGet' (Maybe Key)
acgKey = lens _acgKey (\ s a -> s{_acgKey = a})

-- | OAuth 2.0 token for the current user.
acgOAuthToken :: Lens' AccountsContainersGet' (Maybe OAuthToken)
acgOAuthToken
  = lens _acgOAuthToken
      (\ s a -> s{_acgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acgFields :: Lens' AccountsContainersGet' (Maybe Text)
acgFields
  = lens _acgFields (\ s a -> s{_acgFields = a})

instance GoogleAuth AccountsContainersGet' where
        authKey = acgKey . _Just
        authToken = acgOAuthToken . _Just

instance GoogleRequest AccountsContainersGet' where
        type Rs AccountsContainersGet' = Container
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersGet'{..}
          = go _acgAccountId _acgContainerId _acgQuotaUser
              (Just _acgPrettyPrint)
              _acgUserIP
              _acgFields
              _acgKey
              _acgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersGetResource)
                      r
                      u
