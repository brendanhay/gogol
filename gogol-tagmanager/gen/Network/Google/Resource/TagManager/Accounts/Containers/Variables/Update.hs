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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVariablesUpdate@.
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
    , aUserIp
    , aFingerprint
    , aVariableId
    , aAccountId
    , aKey
    , aOauthToken
    , aFields
    , aAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVariablesUpdate@ which the
-- 'AccountsContainersVariablesUpdate'' request conforms to.
type AccountsContainersVariablesUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "variables" :>
               Capture "variableId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fingerprint" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Put '[JSON] Variable

-- | Updates a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesUpdate'' smart constructor.
data AccountsContainersVariablesUpdate' = AccountsContainersVariablesUpdate'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aContainerId :: !Text
    , _aUserIp      :: !(Maybe Text)
    , _aFingerprint :: !(Maybe Text)
    , _aVariableId  :: !Text
    , _aAccountId   :: !Text
    , _aKey         :: !(Maybe Text)
    , _aOauthToken  :: !(Maybe Text)
    , _aFields      :: !(Maybe Text)
    , _aAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'aUserIp'
--
-- * 'aFingerprint'
--
-- * 'aVariableId'
--
-- * 'aAccountId'
--
-- * 'aKey'
--
-- * 'aOauthToken'
--
-- * 'aFields'
--
-- * 'aAlt'
accountsContainersVariablesUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'variableId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesUpdate'
accountsContainersVariablesUpdate' pAContainerId_ pAVariableId_ pAAccountId_ =
    AccountsContainersVariablesUpdate'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aContainerId = pAContainerId_
    , _aUserIp = Nothing
    , _aFingerprint = Nothing
    , _aVariableId = pAVariableId_
    , _aAccountId = pAAccountId_
    , _aKey = Nothing
    , _aOauthToken = Nothing
    , _aFields = Nothing
    , _aAlt = JSON
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
aUserIp :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- variable in storage.
aFingerprint :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
aFingerprint
  = lens _aFingerprint (\ s a -> s{_aFingerprint = a})

-- | The GTM Variable ID.
aVariableId :: Lens' AccountsContainersVariablesUpdate' Text
aVariableId
  = lens _aVariableId (\ s a -> s{_aVariableId = a})

-- | The GTM Account ID.
aAccountId :: Lens' AccountsContainersVariablesUpdate' Text
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AccountsContainersVariablesUpdate' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AccountsContainersVariablesUpdate' Alt
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest
         AccountsContainersVariablesUpdate' where
        type Rs AccountsContainersVariablesUpdate' = Variable
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVariablesUpdate'{..}
          = go _aQuotaUser (Just _aPrettyPrint) _aContainerId
              _aUserIp
              _aFingerprint
              _aVariableId
              _aAccountId
              _aKey
              _aOauthToken
              _aFields
              (Just _aAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVariablesUpdateResource)
                      r
                      u
