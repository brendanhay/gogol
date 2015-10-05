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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVariablesGet@.
module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Get
    (
    -- * REST Resource
      AccountsContainersVariablesGetResource

    -- * Creating a Request
    , accountsContainersVariablesGet'
    , AccountsContainersVariablesGet'

    -- * Request Lenses
    , acvgQuotaUser
    , acvgPrettyPrint
    , acvgContainerId
    , acvgUserIP
    , acvgVariableId
    , acvgAccountId
    , acvgKey
    , acvgOAuthToken
    , acvgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVariablesGet@ which the
-- 'AccountsContainersVariablesGet'' request conforms to.
type AccountsContainersVariablesGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "variables" :>
               Capture "variableId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Variable

-- | Gets a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesGet'' smart constructor.
data AccountsContainersVariablesGet' = AccountsContainersVariablesGet'
    { _acvgQuotaUser   :: !(Maybe Text)
    , _acvgPrettyPrint :: !Bool
    , _acvgContainerId :: !Text
    , _acvgUserIP      :: !(Maybe Text)
    , _acvgVariableId  :: !Text
    , _acvgAccountId   :: !Text
    , _acvgKey         :: !(Maybe AuthKey)
    , _acvgOAuthToken  :: !(Maybe OAuthToken)
    , _acvgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvgQuotaUser'
--
-- * 'acvgPrettyPrint'
--
-- * 'acvgContainerId'
--
-- * 'acvgUserIP'
--
-- * 'acvgVariableId'
--
-- * 'acvgAccountId'
--
-- * 'acvgKey'
--
-- * 'acvgOAuthToken'
--
-- * 'acvgFields'
accountsContainersVariablesGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'variableId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesGet'
accountsContainersVariablesGet' pAcvgContainerId_ pAcvgVariableId_ pAcvgAccountId_ =
    AccountsContainersVariablesGet'
    { _acvgQuotaUser = Nothing
    , _acvgPrettyPrint = True
    , _acvgContainerId = pAcvgContainerId_
    , _acvgUserIP = Nothing
    , _acvgVariableId = pAcvgVariableId_
    , _acvgAccountId = pAcvgAccountId_
    , _acvgKey = Nothing
    , _acvgOAuthToken = Nothing
    , _acvgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvgQuotaUser :: Lens' AccountsContainersVariablesGet' (Maybe Text)
acvgQuotaUser
  = lens _acvgQuotaUser
      (\ s a -> s{_acvgQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvgPrettyPrint :: Lens' AccountsContainersVariablesGet' Bool
acvgPrettyPrint
  = lens _acvgPrettyPrint
      (\ s a -> s{_acvgPrettyPrint = a})

-- | The GTM Container ID.
acvgContainerId :: Lens' AccountsContainersVariablesGet' Text
acvgContainerId
  = lens _acvgContainerId
      (\ s a -> s{_acvgContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvgUserIP :: Lens' AccountsContainersVariablesGet' (Maybe Text)
acvgUserIP
  = lens _acvgUserIP (\ s a -> s{_acvgUserIP = a})

-- | The GTM Variable ID.
acvgVariableId :: Lens' AccountsContainersVariablesGet' Text
acvgVariableId
  = lens _acvgVariableId
      (\ s a -> s{_acvgVariableId = a})

-- | The GTM Account ID.
acvgAccountId :: Lens' AccountsContainersVariablesGet' Text
acvgAccountId
  = lens _acvgAccountId
      (\ s a -> s{_acvgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvgKey :: Lens' AccountsContainersVariablesGet' (Maybe AuthKey)
acvgKey = lens _acvgKey (\ s a -> s{_acvgKey = a})

-- | OAuth 2.0 token for the current user.
acvgOAuthToken :: Lens' AccountsContainersVariablesGet' (Maybe OAuthToken)
acvgOAuthToken
  = lens _acvgOAuthToken
      (\ s a -> s{_acvgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvgFields :: Lens' AccountsContainersVariablesGet' (Maybe Text)
acvgFields
  = lens _acvgFields (\ s a -> s{_acvgFields = a})

instance GoogleAuth AccountsContainersVariablesGet'
         where
        authKey = acvgKey . _Just
        authToken = acvgOAuthToken . _Just

instance GoogleRequest
         AccountsContainersVariablesGet' where
        type Rs AccountsContainersVariablesGet' = Variable
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVariablesGet'{..}
          = go _acvgAccountId _acvgContainerId _acvgVariableId
              _acvgQuotaUser
              (Just _acvgPrettyPrint)
              _acvgUserIP
              _acvgFields
              _acvgKey
              _acvgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVariablesGetResource)
                      r
                      u
