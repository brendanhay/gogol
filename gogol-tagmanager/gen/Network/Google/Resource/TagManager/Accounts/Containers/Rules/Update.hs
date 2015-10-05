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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Rules.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Rule.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersRulesUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Rules.Update
    (
    -- * REST Resource
      AccountsContainersRulesUpdateResource

    -- * Creating a Request
    , accountsContainersRulesUpdate'
    , AccountsContainersRulesUpdate'

    -- * Request Lenses
    , acruQuotaUser
    , acruPrettyPrint
    , acruContainerId
    , acruUserIP
    , acruFingerprint
    , acruRuleId
    , acruPayload
    , acruAccountId
    , acruKey
    , acruOAuthToken
    , acruFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersRulesUpdate@ which the
-- 'AccountsContainersRulesUpdate'' request conforms to.
type AccountsContainersRulesUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               Capture "ruleId" Text :>
                 QueryParam "fingerprint" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Rule :> Put '[JSON] Rule

-- | Updates a GTM Rule.
--
-- /See:/ 'accountsContainersRulesUpdate'' smart constructor.
data AccountsContainersRulesUpdate' = AccountsContainersRulesUpdate'
    { _acruQuotaUser   :: !(Maybe Text)
    , _acruPrettyPrint :: !Bool
    , _acruContainerId :: !Text
    , _acruUserIP      :: !(Maybe Text)
    , _acruFingerprint :: !(Maybe Text)
    , _acruRuleId      :: !Text
    , _acruPayload     :: !Rule
    , _acruAccountId   :: !Text
    , _acruKey         :: !(Maybe AuthKey)
    , _acruOAuthToken  :: !(Maybe OAuthToken)
    , _acruFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersRulesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acruQuotaUser'
--
-- * 'acruPrettyPrint'
--
-- * 'acruContainerId'
--
-- * 'acruUserIP'
--
-- * 'acruFingerprint'
--
-- * 'acruRuleId'
--
-- * 'acruPayload'
--
-- * 'acruAccountId'
--
-- * 'acruKey'
--
-- * 'acruOAuthToken'
--
-- * 'acruFields'
accountsContainersRulesUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'ruleId'
    -> Rule -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesUpdate'
accountsContainersRulesUpdate' pAcruContainerId_ pAcruRuleId_ pAcruPayload_ pAcruAccountId_ =
    AccountsContainersRulesUpdate'
    { _acruQuotaUser = Nothing
    , _acruPrettyPrint = True
    , _acruContainerId = pAcruContainerId_
    , _acruUserIP = Nothing
    , _acruFingerprint = Nothing
    , _acruRuleId = pAcruRuleId_
    , _acruPayload = pAcruPayload_
    , _acruAccountId = pAcruAccountId_
    , _acruKey = Nothing
    , _acruOAuthToken = Nothing
    , _acruFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acruQuotaUser :: Lens' AccountsContainersRulesUpdate' (Maybe Text)
acruQuotaUser
  = lens _acruQuotaUser
      (\ s a -> s{_acruQuotaUser = a})

-- | Returns response with indentations and line breaks.
acruPrettyPrint :: Lens' AccountsContainersRulesUpdate' Bool
acruPrettyPrint
  = lens _acruPrettyPrint
      (\ s a -> s{_acruPrettyPrint = a})

-- | The GTM Container ID.
acruContainerId :: Lens' AccountsContainersRulesUpdate' Text
acruContainerId
  = lens _acruContainerId
      (\ s a -> s{_acruContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acruUserIP :: Lens' AccountsContainersRulesUpdate' (Maybe Text)
acruUserIP
  = lens _acruUserIP (\ s a -> s{_acruUserIP = a})

-- | When provided, this fingerprint must match the fingerprint of the rule
-- in storage.
acruFingerprint :: Lens' AccountsContainersRulesUpdate' (Maybe Text)
acruFingerprint
  = lens _acruFingerprint
      (\ s a -> s{_acruFingerprint = a})

-- | The GTM Rule ID.
acruRuleId :: Lens' AccountsContainersRulesUpdate' Text
acruRuleId
  = lens _acruRuleId (\ s a -> s{_acruRuleId = a})

-- | Multipart request metadata.
acruPayload :: Lens' AccountsContainersRulesUpdate' Rule
acruPayload
  = lens _acruPayload (\ s a -> s{_acruPayload = a})

-- | The GTM Account ID.
acruAccountId :: Lens' AccountsContainersRulesUpdate' Text
acruAccountId
  = lens _acruAccountId
      (\ s a -> s{_acruAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acruKey :: Lens' AccountsContainersRulesUpdate' (Maybe AuthKey)
acruKey = lens _acruKey (\ s a -> s{_acruKey = a})

-- | OAuth 2.0 token for the current user.
acruOAuthToken :: Lens' AccountsContainersRulesUpdate' (Maybe OAuthToken)
acruOAuthToken
  = lens _acruOAuthToken
      (\ s a -> s{_acruOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acruFields :: Lens' AccountsContainersRulesUpdate' (Maybe Text)
acruFields
  = lens _acruFields (\ s a -> s{_acruFields = a})

instance GoogleAuth AccountsContainersRulesUpdate'
         where
        authKey = acruKey . _Just
        authToken = acruOAuthToken . _Just

instance GoogleRequest AccountsContainersRulesUpdate'
         where
        type Rs AccountsContainersRulesUpdate' = Rule
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersRulesUpdate'{..}
          = go _acruAccountId _acruContainerId _acruRuleId
              _acruFingerprint
              _acruQuotaUser
              (Just _acruPrettyPrint)
              _acruUserIP
              _acruFields
              _acruKey
              _acruOAuthToken
              (Just AltJSON)
              _acruPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersRulesUpdateResource)
                      r
                      u
