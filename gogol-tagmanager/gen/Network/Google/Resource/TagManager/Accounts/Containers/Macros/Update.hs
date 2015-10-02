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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Macros.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Macro.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersMacrosUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Macros.Update
    (
    -- * REST Resource
      AccountsContainersMacrosUpdateResource

    -- * Creating a Request
    , accountsContainersMacrosUpdate'
    , AccountsContainersMacrosUpdate'

    -- * Request Lenses
    , acmucQuotaUser
    , acmucPrettyPrint
    , acmucMacro
    , acmucContainerId
    , acmucUserIP
    , acmucFingerprint
    , acmucAccountId
    , acmucKey
    , acmucMacroId
    , acmucOAuthToken
    , acmucFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersMacrosUpdate@ which the
-- 'AccountsContainersMacrosUpdate'' request conforms to.
type AccountsContainersMacrosUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               Capture "macroId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fingerprint" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Macro :> Put '[JSON] Macro

-- | Updates a GTM Macro.
--
-- /See:/ 'accountsContainersMacrosUpdate'' smart constructor.
data AccountsContainersMacrosUpdate' = AccountsContainersMacrosUpdate'
    { _acmucQuotaUser   :: !(Maybe Text)
    , _acmucPrettyPrint :: !Bool
    , _acmucMacro       :: !Macro
    , _acmucContainerId :: !Text
    , _acmucUserIP      :: !(Maybe Text)
    , _acmucFingerprint :: !(Maybe Text)
    , _acmucAccountId   :: !Text
    , _acmucKey         :: !(Maybe Key)
    , _acmucMacroId     :: !Text
    , _acmucOAuthToken  :: !(Maybe OAuthToken)
    , _acmucFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMacrosUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmucQuotaUser'
--
-- * 'acmucPrettyPrint'
--
-- * 'acmucMacro'
--
-- * 'acmucContainerId'
--
-- * 'acmucUserIP'
--
-- * 'acmucFingerprint'
--
-- * 'acmucAccountId'
--
-- * 'acmucKey'
--
-- * 'acmucMacroId'
--
-- * 'acmucOAuthToken'
--
-- * 'acmucFields'
accountsContainersMacrosUpdate'
    :: Macro -- ^ 'Macro'
    -> Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'macroId'
    -> AccountsContainersMacrosUpdate'
accountsContainersMacrosUpdate' pAcmucMacro_ pAcmucContainerId_ pAcmucAccountId_ pAcmucMacroId_ =
    AccountsContainersMacrosUpdate'
    { _acmucQuotaUser = Nothing
    , _acmucPrettyPrint = True
    , _acmucMacro = pAcmucMacro_
    , _acmucContainerId = pAcmucContainerId_
    , _acmucUserIP = Nothing
    , _acmucFingerprint = Nothing
    , _acmucAccountId = pAcmucAccountId_
    , _acmucKey = Nothing
    , _acmucMacroId = pAcmucMacroId_
    , _acmucOAuthToken = Nothing
    , _acmucFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmucQuotaUser :: Lens' AccountsContainersMacrosUpdate' (Maybe Text)
acmucQuotaUser
  = lens _acmucQuotaUser
      (\ s a -> s{_acmucQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmucPrettyPrint :: Lens' AccountsContainersMacrosUpdate' Bool
acmucPrettyPrint
  = lens _acmucPrettyPrint
      (\ s a -> s{_acmucPrettyPrint = a})

-- | Multipart request metadata.
acmucMacro :: Lens' AccountsContainersMacrosUpdate' Macro
acmucMacro
  = lens _acmucMacro (\ s a -> s{_acmucMacro = a})

-- | The GTM Container ID.
acmucContainerId :: Lens' AccountsContainersMacrosUpdate' Text
acmucContainerId
  = lens _acmucContainerId
      (\ s a -> s{_acmucContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmucUserIP :: Lens' AccountsContainersMacrosUpdate' (Maybe Text)
acmucUserIP
  = lens _acmucUserIP (\ s a -> s{_acmucUserIP = a})

-- | When provided, this fingerprint must match the fingerprint of the macro
-- in storage.
acmucFingerprint :: Lens' AccountsContainersMacrosUpdate' (Maybe Text)
acmucFingerprint
  = lens _acmucFingerprint
      (\ s a -> s{_acmucFingerprint = a})

-- | The GTM Account ID.
acmucAccountId :: Lens' AccountsContainersMacrosUpdate' Text
acmucAccountId
  = lens _acmucAccountId
      (\ s a -> s{_acmucAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmucKey :: Lens' AccountsContainersMacrosUpdate' (Maybe Key)
acmucKey = lens _acmucKey (\ s a -> s{_acmucKey = a})

-- | The GTM Macro ID.
acmucMacroId :: Lens' AccountsContainersMacrosUpdate' Text
acmucMacroId
  = lens _acmucMacroId (\ s a -> s{_acmucMacroId = a})

-- | OAuth 2.0 token for the current user.
acmucOAuthToken :: Lens' AccountsContainersMacrosUpdate' (Maybe OAuthToken)
acmucOAuthToken
  = lens _acmucOAuthToken
      (\ s a -> s{_acmucOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmucFields :: Lens' AccountsContainersMacrosUpdate' (Maybe Text)
acmucFields
  = lens _acmucFields (\ s a -> s{_acmucFields = a})

instance GoogleAuth AccountsContainersMacrosUpdate'
         where
        authKey = acmucKey . _Just
        authToken = acmucOAuthToken . _Just

instance GoogleRequest
         AccountsContainersMacrosUpdate' where
        type Rs AccountsContainersMacrosUpdate' = Macro
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersMacrosUpdate'{..}
          = go _acmucQuotaUser (Just _acmucPrettyPrint)
              _acmucContainerId
              _acmucUserIP
              _acmucFingerprint
              _acmucAccountId
              _acmucKey
              _acmucMacroId
              _acmucOAuthToken
              _acmucFields
              (Just AltJSON)
              _acmucMacro
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersMacrosUpdateResource)
                      r
                      u
