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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Macros.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Macros of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersMacrosList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Macros.List
    (
    -- * REST Resource
      AccountsContainersMacrosListResource

    -- * Creating a Request
    , accountsContainersMacrosList'
    , AccountsContainersMacrosList'

    -- * Request Lenses
    , acmlQuotaUser
    , acmlPrettyPrint
    , acmlContainerId
    , acmlUserIP
    , acmlAccountId
    , acmlKey
    , acmlOAuthToken
    , acmlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersMacrosList@ which the
-- 'AccountsContainersMacrosList'' request conforms to.
type AccountsContainersMacrosListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListMacrosResponse

-- | Lists all GTM Macros of a Container.
--
-- /See:/ 'accountsContainersMacrosList'' smart constructor.
data AccountsContainersMacrosList' = AccountsContainersMacrosList'
    { _acmlQuotaUser   :: !(Maybe Text)
    , _acmlPrettyPrint :: !Bool
    , _acmlContainerId :: !Text
    , _acmlUserIP      :: !(Maybe Text)
    , _acmlAccountId   :: !Text
    , _acmlKey         :: !(Maybe Key)
    , _acmlOAuthToken  :: !(Maybe OAuthToken)
    , _acmlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMacrosList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmlQuotaUser'
--
-- * 'acmlPrettyPrint'
--
-- * 'acmlContainerId'
--
-- * 'acmlUserIP'
--
-- * 'acmlAccountId'
--
-- * 'acmlKey'
--
-- * 'acmlOAuthToken'
--
-- * 'acmlFields'
accountsContainersMacrosList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersMacrosList'
accountsContainersMacrosList' pAcmlContainerId_ pAcmlAccountId_ =
    AccountsContainersMacrosList'
    { _acmlQuotaUser = Nothing
    , _acmlPrettyPrint = True
    , _acmlContainerId = pAcmlContainerId_
    , _acmlUserIP = Nothing
    , _acmlAccountId = pAcmlAccountId_
    , _acmlKey = Nothing
    , _acmlOAuthToken = Nothing
    , _acmlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmlQuotaUser :: Lens' AccountsContainersMacrosList' (Maybe Text)
acmlQuotaUser
  = lens _acmlQuotaUser
      (\ s a -> s{_acmlQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmlPrettyPrint :: Lens' AccountsContainersMacrosList' Bool
acmlPrettyPrint
  = lens _acmlPrettyPrint
      (\ s a -> s{_acmlPrettyPrint = a})

-- | The GTM Container ID.
acmlContainerId :: Lens' AccountsContainersMacrosList' Text
acmlContainerId
  = lens _acmlContainerId
      (\ s a -> s{_acmlContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmlUserIP :: Lens' AccountsContainersMacrosList' (Maybe Text)
acmlUserIP
  = lens _acmlUserIP (\ s a -> s{_acmlUserIP = a})

-- | The GTM Account ID.
acmlAccountId :: Lens' AccountsContainersMacrosList' Text
acmlAccountId
  = lens _acmlAccountId
      (\ s a -> s{_acmlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmlKey :: Lens' AccountsContainersMacrosList' (Maybe Key)
acmlKey = lens _acmlKey (\ s a -> s{_acmlKey = a})

-- | OAuth 2.0 token for the current user.
acmlOAuthToken :: Lens' AccountsContainersMacrosList' (Maybe OAuthToken)
acmlOAuthToken
  = lens _acmlOAuthToken
      (\ s a -> s{_acmlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmlFields :: Lens' AccountsContainersMacrosList' (Maybe Text)
acmlFields
  = lens _acmlFields (\ s a -> s{_acmlFields = a})

instance GoogleAuth AccountsContainersMacrosList'
         where
        authKey = acmlKey . _Just
        authToken = acmlOAuthToken . _Just

instance GoogleRequest AccountsContainersMacrosList'
         where
        type Rs AccountsContainersMacrosList' =
             ListMacrosResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersMacrosList'{..}
          = go _acmlAccountId _acmlContainerId _acmlQuotaUser
              (Just _acmlPrettyPrint)
              _acmlUserIP
              _acmlFields
              _acmlKey
              _acmlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersMacrosListResource)
                      r
                      u
