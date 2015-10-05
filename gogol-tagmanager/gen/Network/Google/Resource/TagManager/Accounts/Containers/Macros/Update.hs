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
    , acmuQuotaUser
    , acmuPrettyPrint
    , acmuContainerId
    , acmuUserIP
    , acmuFingerprint
    , acmuPayload
    , acmuAccountId
    , acmuKey
    , acmuMacroId
    , acmuOAuthToken
    , acmuFields
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
                 QueryParam "fingerprint" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Macro :> Put '[JSON] Macro

-- | Updates a GTM Macro.
--
-- /See:/ 'accountsContainersMacrosUpdate'' smart constructor.
data AccountsContainersMacrosUpdate' = AccountsContainersMacrosUpdate'
    { _acmuQuotaUser   :: !(Maybe Text)
    , _acmuPrettyPrint :: !Bool
    , _acmuContainerId :: !Text
    , _acmuUserIP      :: !(Maybe Text)
    , _acmuFingerprint :: !(Maybe Text)
    , _acmuPayload     :: !Macro
    , _acmuAccountId   :: !Text
    , _acmuKey         :: !(Maybe AuthKey)
    , _acmuMacroId     :: !Text
    , _acmuOAuthToken  :: !(Maybe OAuthToken)
    , _acmuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMacrosUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmuQuotaUser'
--
-- * 'acmuPrettyPrint'
--
-- * 'acmuContainerId'
--
-- * 'acmuUserIP'
--
-- * 'acmuFingerprint'
--
-- * 'acmuPayload'
--
-- * 'acmuAccountId'
--
-- * 'acmuKey'
--
-- * 'acmuMacroId'
--
-- * 'acmuOAuthToken'
--
-- * 'acmuFields'
accountsContainersMacrosUpdate'
    :: Text -- ^ 'containerId'
    -> Macro -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'macroId'
    -> AccountsContainersMacrosUpdate'
accountsContainersMacrosUpdate' pAcmuContainerId_ pAcmuPayload_ pAcmuAccountId_ pAcmuMacroId_ =
    AccountsContainersMacrosUpdate'
    { _acmuQuotaUser = Nothing
    , _acmuPrettyPrint = True
    , _acmuContainerId = pAcmuContainerId_
    , _acmuUserIP = Nothing
    , _acmuFingerprint = Nothing
    , _acmuPayload = pAcmuPayload_
    , _acmuAccountId = pAcmuAccountId_
    , _acmuKey = Nothing
    , _acmuMacroId = pAcmuMacroId_
    , _acmuOAuthToken = Nothing
    , _acmuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmuQuotaUser :: Lens' AccountsContainersMacrosUpdate' (Maybe Text)
acmuQuotaUser
  = lens _acmuQuotaUser
      (\ s a -> s{_acmuQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmuPrettyPrint :: Lens' AccountsContainersMacrosUpdate' Bool
acmuPrettyPrint
  = lens _acmuPrettyPrint
      (\ s a -> s{_acmuPrettyPrint = a})

-- | The GTM Container ID.
acmuContainerId :: Lens' AccountsContainersMacrosUpdate' Text
acmuContainerId
  = lens _acmuContainerId
      (\ s a -> s{_acmuContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmuUserIP :: Lens' AccountsContainersMacrosUpdate' (Maybe Text)
acmuUserIP
  = lens _acmuUserIP (\ s a -> s{_acmuUserIP = a})

-- | When provided, this fingerprint must match the fingerprint of the macro
-- in storage.
acmuFingerprint :: Lens' AccountsContainersMacrosUpdate' (Maybe Text)
acmuFingerprint
  = lens _acmuFingerprint
      (\ s a -> s{_acmuFingerprint = a})

-- | Multipart request metadata.
acmuPayload :: Lens' AccountsContainersMacrosUpdate' Macro
acmuPayload
  = lens _acmuPayload (\ s a -> s{_acmuPayload = a})

-- | The GTM Account ID.
acmuAccountId :: Lens' AccountsContainersMacrosUpdate' Text
acmuAccountId
  = lens _acmuAccountId
      (\ s a -> s{_acmuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmuKey :: Lens' AccountsContainersMacrosUpdate' (Maybe AuthKey)
acmuKey = lens _acmuKey (\ s a -> s{_acmuKey = a})

-- | The GTM Macro ID.
acmuMacroId :: Lens' AccountsContainersMacrosUpdate' Text
acmuMacroId
  = lens _acmuMacroId (\ s a -> s{_acmuMacroId = a})

-- | OAuth 2.0 token for the current user.
acmuOAuthToken :: Lens' AccountsContainersMacrosUpdate' (Maybe OAuthToken)
acmuOAuthToken
  = lens _acmuOAuthToken
      (\ s a -> s{_acmuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmuFields :: Lens' AccountsContainersMacrosUpdate' (Maybe Text)
acmuFields
  = lens _acmuFields (\ s a -> s{_acmuFields = a})

instance GoogleAuth AccountsContainersMacrosUpdate'
         where
        authKey = acmuKey . _Just
        authToken = acmuOAuthToken . _Just

instance GoogleRequest
         AccountsContainersMacrosUpdate' where
        type Rs AccountsContainersMacrosUpdate' = Macro
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersMacrosUpdate'{..}
          = go _acmuAccountId _acmuContainerId _acmuMacroId
              _acmuFingerprint
              _acmuQuotaUser
              (Just _acmuPrettyPrint)
              _acmuUserIP
              _acmuFields
              _acmuKey
              _acmuOAuthToken
              (Just AltJSON)
              _acmuPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersMacrosUpdateResource)
                      r
                      u
