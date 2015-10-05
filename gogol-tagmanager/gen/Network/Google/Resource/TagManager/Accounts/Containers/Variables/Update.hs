{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVariablesUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Update
    (
    -- * REST Resource
      AccountsContainersVariablesUpdateResource

    -- * Creating a Request
    , accountsContainersVariablesUpdate'
    , AccountsContainersVariablesUpdate'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aContainerId
    , aUserIP
    , aFingerprint
    , aVariableId
    , aPayload
    , aAccountId
    , aKey
    , aOAuthToken
    , aFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVariablesUpdate@ which the
-- 'AccountsContainersVariablesUpdate'' request conforms to.
type AccountsContainersVariablesUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "variables" :>
               Capture "variableId" Text :>
                 QueryParam "fingerprint" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Variable :>
                                   Put '[JSON] Variable

-- | Updates a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesUpdate'' smart constructor.
data AccountsContainersVariablesUpdate' = AccountsContainersVariablesUpdate'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aContainerId :: !Text
    , _aUserIP      :: !(Maybe Text)
    , _aFingerprint :: !(Maybe Text)
    , _aVariableId  :: !Text
    , _aPayload     :: !Variable
    , _aAccountId   :: !Text
    , _aKey         :: !(Maybe Key)
    , _aOAuthToken  :: !(Maybe OAuthToken)
    , _aFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aContainerId'
--
-- * 'aUserIP'
--
-- * 'aFingerprint'
--
-- * 'aVariableId'
--
-- * 'aPayload'
--
-- * 'aAccountId'
--
-- * 'aKey'
--
-- * 'aOAuthToken'
--
-- * 'aFields'
accountsContainersVariablesUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'variableId'
    -> Variable -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesUpdate'
accountsContainersVariablesUpdate' pAContainerId_ pAVariableId_ pAPayload_ pAAccountId_ =
    AccountsContainersVariablesUpdate'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aContainerId = pAContainerId_
    , _aUserIP = Nothing
    , _aFingerprint = Nothing
    , _aVariableId = pAVariableId_
    , _aPayload = pAPayload_
    , _aAccountId = pAAccountId_
    , _aKey = Nothing
    , _aOAuthToken = Nothing
    , _aFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AccountsContainersVariablesUpdate' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | The GTM Container ID.
aContainerId :: Lens' AccountsContainersVariablesUpdate' Text
aContainerId
  = lens _aContainerId (\ s a -> s{_aContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIP :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
aUserIP = lens _aUserIP (\ s a -> s{_aUserIP = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- variable in storage.
aFingerprint :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
aFingerprint
  = lens _aFingerprint (\ s a -> s{_aFingerprint = a})

-- | The GTM Variable ID.
aVariableId :: Lens' AccountsContainersVariablesUpdate' Text
aVariableId
  = lens _aVariableId (\ s a -> s{_aVariableId = a})

-- | Multipart request metadata.
aPayload :: Lens' AccountsContainersVariablesUpdate' Variable
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

-- | The GTM Account ID.
aAccountId :: Lens' AccountsContainersVariablesUpdate' Text
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AccountsContainersVariablesUpdate' (Maybe Key)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | OAuth 2.0 token for the current user.
aOAuthToken :: Lens' AccountsContainersVariablesUpdate' (Maybe OAuthToken)
aOAuthToken
  = lens _aOAuthToken (\ s a -> s{_aOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

instance GoogleAuth
         AccountsContainersVariablesUpdate' where
        authKey = aKey . _Just
        authToken = aOAuthToken . _Just

instance GoogleRequest
         AccountsContainersVariablesUpdate' where
        type Rs AccountsContainersVariablesUpdate' = Variable
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVariablesUpdate'{..}
          = go _aAccountId _aContainerId _aVariableId
              _aFingerprint
              _aQuotaUser
              (Just _aPrettyPrint)
              _aUserIP
              _aFields
              _aKey
              _aOAuthToken
              (Just AltJSON)
              _aPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVariablesUpdateResource)
                      r
                      u
