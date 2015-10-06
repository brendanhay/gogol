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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVariablesDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Delete
    (
    -- * REST Resource
      AccountsContainersVariablesDeleteResource

    -- * Creating a Request
    , accountsContainersVariablesDelete'
    , AccountsContainersVariablesDelete'

    -- * Request Lenses
    , acvdQuotaUser
    , acvdPrettyPrint
    , acvdContainerId
    , acvdUserIP
    , acvdVariableId
    , acvdAccountId
    , acvdKey
    , acvdOAuthToken
    , acvdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVariablesDelete@ which the
-- 'AccountsContainersVariablesDelete'' request conforms to.
type AccountsContainersVariablesDeleteResource =
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
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesDelete'' smart constructor.
data AccountsContainersVariablesDelete' = AccountsContainersVariablesDelete'
    { _acvdQuotaUser   :: !(Maybe Text)
    , _acvdPrettyPrint :: !Bool
    , _acvdContainerId :: !Text
    , _acvdUserIP      :: !(Maybe Text)
    , _acvdVariableId  :: !Text
    , _acvdAccountId   :: !Text
    , _acvdKey         :: !(Maybe AuthKey)
    , _acvdOAuthToken  :: !(Maybe OAuthToken)
    , _acvdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvdQuotaUser'
--
-- * 'acvdPrettyPrint'
--
-- * 'acvdContainerId'
--
-- * 'acvdUserIP'
--
-- * 'acvdVariableId'
--
-- * 'acvdAccountId'
--
-- * 'acvdKey'
--
-- * 'acvdOAuthToken'
--
-- * 'acvdFields'
accountsContainersVariablesDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'variableId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesDelete'
accountsContainersVariablesDelete' pAcvdContainerId_ pAcvdVariableId_ pAcvdAccountId_ =
    AccountsContainersVariablesDelete'
    { _acvdQuotaUser = Nothing
    , _acvdPrettyPrint = True
    , _acvdContainerId = pAcvdContainerId_
    , _acvdUserIP = Nothing
    , _acvdVariableId = pAcvdVariableId_
    , _acvdAccountId = pAcvdAccountId_
    , _acvdKey = Nothing
    , _acvdOAuthToken = Nothing
    , _acvdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvdQuotaUser :: Lens' AccountsContainersVariablesDelete' (Maybe Text)
acvdQuotaUser
  = lens _acvdQuotaUser
      (\ s a -> s{_acvdQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvdPrettyPrint :: Lens' AccountsContainersVariablesDelete' Bool
acvdPrettyPrint
  = lens _acvdPrettyPrint
      (\ s a -> s{_acvdPrettyPrint = a})

-- | The GTM Container ID.
acvdContainerId :: Lens' AccountsContainersVariablesDelete' Text
acvdContainerId
  = lens _acvdContainerId
      (\ s a -> s{_acvdContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvdUserIP :: Lens' AccountsContainersVariablesDelete' (Maybe Text)
acvdUserIP
  = lens _acvdUserIP (\ s a -> s{_acvdUserIP = a})

-- | The GTM Variable ID.
acvdVariableId :: Lens' AccountsContainersVariablesDelete' Text
acvdVariableId
  = lens _acvdVariableId
      (\ s a -> s{_acvdVariableId = a})

-- | The GTM Account ID.
acvdAccountId :: Lens' AccountsContainersVariablesDelete' Text
acvdAccountId
  = lens _acvdAccountId
      (\ s a -> s{_acvdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvdKey :: Lens' AccountsContainersVariablesDelete' (Maybe AuthKey)
acvdKey = lens _acvdKey (\ s a -> s{_acvdKey = a})

-- | OAuth 2.0 token for the current user.
acvdOAuthToken :: Lens' AccountsContainersVariablesDelete' (Maybe OAuthToken)
acvdOAuthToken
  = lens _acvdOAuthToken
      (\ s a -> s{_acvdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvdFields :: Lens' AccountsContainersVariablesDelete' (Maybe Text)
acvdFields
  = lens _acvdFields (\ s a -> s{_acvdFields = a})

instance GoogleAuth
         AccountsContainersVariablesDelete' where
        _AuthKey = acvdKey . _Just
        _AuthToken = acvdOAuthToken . _Just

instance GoogleRequest
         AccountsContainersVariablesDelete' where
        type Rs AccountsContainersVariablesDelete' = ()
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersVariablesDelete'{..}
          = go _acvdAccountId _acvdContainerId _acvdVariableId
              _acvdQuotaUser
              (Just _acvdPrettyPrint)
              _acvdUserIP
              _acvdFields
              _acvdKey
              _acvdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AccountsContainersVariablesDeleteResource)
                      rq
