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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Macros.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Macro.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersMacrosGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Macros.Get
    (
    -- * REST Resource
      AccountsContainersMacrosGetResource

    -- * Creating a Request
    , accountsContainersMacrosGet'
    , AccountsContainersMacrosGet'

    -- * Request Lenses
    , acmgQuotaUser
    , acmgPrettyPrint
    , acmgContainerId
    , acmgUserIP
    , acmgAccountId
    , acmgKey
    , acmgMacroId
    , acmgOAuthToken
    , acmgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersMacrosGet@ which the
-- 'AccountsContainersMacrosGet'' request conforms to.
type AccountsContainersMacrosGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               Capture "macroId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Macro

-- | Gets a GTM Macro.
--
-- /See:/ 'accountsContainersMacrosGet'' smart constructor.
data AccountsContainersMacrosGet' = AccountsContainersMacrosGet'
    { _acmgQuotaUser   :: !(Maybe Text)
    , _acmgPrettyPrint :: !Bool
    , _acmgContainerId :: !Text
    , _acmgUserIP      :: !(Maybe Text)
    , _acmgAccountId   :: !Text
    , _acmgKey         :: !(Maybe AuthKey)
    , _acmgMacroId     :: !Text
    , _acmgOAuthToken  :: !(Maybe OAuthToken)
    , _acmgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMacrosGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmgQuotaUser'
--
-- * 'acmgPrettyPrint'
--
-- * 'acmgContainerId'
--
-- * 'acmgUserIP'
--
-- * 'acmgAccountId'
--
-- * 'acmgKey'
--
-- * 'acmgMacroId'
--
-- * 'acmgOAuthToken'
--
-- * 'acmgFields'
accountsContainersMacrosGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'macroId'
    -> AccountsContainersMacrosGet'
accountsContainersMacrosGet' pAcmgContainerId_ pAcmgAccountId_ pAcmgMacroId_ =
    AccountsContainersMacrosGet'
    { _acmgQuotaUser = Nothing
    , _acmgPrettyPrint = True
    , _acmgContainerId = pAcmgContainerId_
    , _acmgUserIP = Nothing
    , _acmgAccountId = pAcmgAccountId_
    , _acmgKey = Nothing
    , _acmgMacroId = pAcmgMacroId_
    , _acmgOAuthToken = Nothing
    , _acmgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmgQuotaUser :: Lens' AccountsContainersMacrosGet' (Maybe Text)
acmgQuotaUser
  = lens _acmgQuotaUser
      (\ s a -> s{_acmgQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmgPrettyPrint :: Lens' AccountsContainersMacrosGet' Bool
acmgPrettyPrint
  = lens _acmgPrettyPrint
      (\ s a -> s{_acmgPrettyPrint = a})

-- | The GTM Container ID.
acmgContainerId :: Lens' AccountsContainersMacrosGet' Text
acmgContainerId
  = lens _acmgContainerId
      (\ s a -> s{_acmgContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmgUserIP :: Lens' AccountsContainersMacrosGet' (Maybe Text)
acmgUserIP
  = lens _acmgUserIP (\ s a -> s{_acmgUserIP = a})

-- | The GTM Account ID.
acmgAccountId :: Lens' AccountsContainersMacrosGet' Text
acmgAccountId
  = lens _acmgAccountId
      (\ s a -> s{_acmgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmgKey :: Lens' AccountsContainersMacrosGet' (Maybe AuthKey)
acmgKey = lens _acmgKey (\ s a -> s{_acmgKey = a})

-- | The GTM Macro ID.
acmgMacroId :: Lens' AccountsContainersMacrosGet' Text
acmgMacroId
  = lens _acmgMacroId (\ s a -> s{_acmgMacroId = a})

-- | OAuth 2.0 token for the current user.
acmgOAuthToken :: Lens' AccountsContainersMacrosGet' (Maybe OAuthToken)
acmgOAuthToken
  = lens _acmgOAuthToken
      (\ s a -> s{_acmgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmgFields :: Lens' AccountsContainersMacrosGet' (Maybe Text)
acmgFields
  = lens _acmgFields (\ s a -> s{_acmgFields = a})

instance GoogleAuth AccountsContainersMacrosGet'
         where
        authKey = acmgKey . _Just
        authToken = acmgOAuthToken . _Just

instance GoogleRequest AccountsContainersMacrosGet'
         where
        type Rs AccountsContainersMacrosGet' = Macro
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersMacrosGet'{..}
          = go _acmgAccountId _acmgContainerId _acmgMacroId
              _acmgQuotaUser
              (Just _acmgPrettyPrint)
              _acmgUserIP
              _acmgFields
              _acmgKey
              _acmgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersMacrosGetResource)
                      r
                      u
