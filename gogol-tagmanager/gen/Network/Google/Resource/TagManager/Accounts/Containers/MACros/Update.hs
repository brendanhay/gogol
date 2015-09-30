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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.MACros.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Macro.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersMACrosUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.MACros.Update
    (
    -- * REST Resource
      AccountsContainersMacrosUpdateResource

    -- * Creating a Request
    , accountsContainersMACrosUpdate'
    , AccountsContainersMACrosUpdate'

    -- * Request Lenses
    , acmacuQuotaUser
    , acmacuPrettyPrint
    , acmacuContainerId
    , acmacuUserIp
    , acmacuFingerprint
    , acmacuAccountId
    , acmacuKey
    , acmacuMacroId
    , acmacuOauthToken
    , acmacuFields
    , acmacuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersMACrosUpdate@ which the
-- 'AccountsContainersMACrosUpdate'' request conforms to.
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
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Put '[JSON] MACro

-- | Updates a GTM Macro.
--
-- /See:/ 'accountsContainersMACrosUpdate'' smart constructor.
data AccountsContainersMACrosUpdate' = AccountsContainersMACrosUpdate'
    { _acmacuQuotaUser   :: !(Maybe Text)
    , _acmacuPrettyPrint :: !Bool
    , _acmacuContainerId :: !Text
    , _acmacuUserIp      :: !(Maybe Text)
    , _acmacuFingerprint :: !(Maybe Text)
    , _acmacuAccountId   :: !Text
    , _acmacuKey         :: !(Maybe Text)
    , _acmacuMacroId     :: !Text
    , _acmacuOauthToken  :: !(Maybe Text)
    , _acmacuFields      :: !(Maybe Text)
    , _acmacuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMACrosUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmacuQuotaUser'
--
-- * 'acmacuPrettyPrint'
--
-- * 'acmacuContainerId'
--
-- * 'acmacuUserIp'
--
-- * 'acmacuFingerprint'
--
-- * 'acmacuAccountId'
--
-- * 'acmacuKey'
--
-- * 'acmacuMacroId'
--
-- * 'acmacuOauthToken'
--
-- * 'acmacuFields'
--
-- * 'acmacuAlt'
accountsContainersMACrosUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'macroId'
    -> AccountsContainersMACrosUpdate'
accountsContainersMACrosUpdate' pAcmacuContainerId_ pAcmacuAccountId_ pAcmacuMacroId_ =
    AccountsContainersMACrosUpdate'
    { _acmacuQuotaUser = Nothing
    , _acmacuPrettyPrint = True
    , _acmacuContainerId = pAcmacuContainerId_
    , _acmacuUserIp = Nothing
    , _acmacuFingerprint = Nothing
    , _acmacuAccountId = pAcmacuAccountId_
    , _acmacuKey = Nothing
    , _acmacuMacroId = pAcmacuMacroId_
    , _acmacuOauthToken = Nothing
    , _acmacuFields = Nothing
    , _acmacuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmacuQuotaUser :: Lens' AccountsContainersMACrosUpdate' (Maybe Text)
acmacuQuotaUser
  = lens _acmacuQuotaUser
      (\ s a -> s{_acmacuQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmacuPrettyPrint :: Lens' AccountsContainersMACrosUpdate' Bool
acmacuPrettyPrint
  = lens _acmacuPrettyPrint
      (\ s a -> s{_acmacuPrettyPrint = a})

-- | The GTM Container ID.
acmacuContainerId :: Lens' AccountsContainersMACrosUpdate' Text
acmacuContainerId
  = lens _acmacuContainerId
      (\ s a -> s{_acmacuContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmacuUserIp :: Lens' AccountsContainersMACrosUpdate' (Maybe Text)
acmacuUserIp
  = lens _acmacuUserIp (\ s a -> s{_acmacuUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the macro
-- in storage.
acmacuFingerprint :: Lens' AccountsContainersMACrosUpdate' (Maybe Text)
acmacuFingerprint
  = lens _acmacuFingerprint
      (\ s a -> s{_acmacuFingerprint = a})

-- | The GTM Account ID.
acmacuAccountId :: Lens' AccountsContainersMACrosUpdate' Text
acmacuAccountId
  = lens _acmacuAccountId
      (\ s a -> s{_acmacuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmacuKey :: Lens' AccountsContainersMACrosUpdate' (Maybe Text)
acmacuKey
  = lens _acmacuKey (\ s a -> s{_acmacuKey = a})

-- | The GTM Macro ID.
acmacuMacroId :: Lens' AccountsContainersMACrosUpdate' Text
acmacuMacroId
  = lens _acmacuMacroId
      (\ s a -> s{_acmacuMacroId = a})

-- | OAuth 2.0 token for the current user.
acmacuOauthToken :: Lens' AccountsContainersMACrosUpdate' (Maybe Text)
acmacuOauthToken
  = lens _acmacuOauthToken
      (\ s a -> s{_acmacuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmacuFields :: Lens' AccountsContainersMACrosUpdate' (Maybe Text)
acmacuFields
  = lens _acmacuFields (\ s a -> s{_acmacuFields = a})

-- | Data format for the response.
acmacuAlt :: Lens' AccountsContainersMACrosUpdate' Alt
acmacuAlt
  = lens _acmacuAlt (\ s a -> s{_acmacuAlt = a})

instance GoogleRequest
         AccountsContainersMACrosUpdate' where
        type Rs AccountsContainersMACrosUpdate' = MACro
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersMACrosUpdate'{..}
          = go _acmacuQuotaUser (Just _acmacuPrettyPrint)
              _acmacuContainerId
              _acmacuUserIp
              _acmacuFingerprint
              _acmacuAccountId
              _acmacuKey
              _acmacuMacroId
              _acmacuOauthToken
              _acmacuFields
              (Just _acmacuAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersMacrosUpdateResource)
                      r
                      u
