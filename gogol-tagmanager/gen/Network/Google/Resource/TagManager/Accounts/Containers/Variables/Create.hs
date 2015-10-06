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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVariablesCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Variables.Create
    (
    -- * REST Resource
      AccountsContainersVariablesCreateResource

    -- * Creating a Request
    , accountsContainersVariablesCreate'
    , AccountsContainersVariablesCreate'

    -- * Request Lenses
    , acvccQuotaUser
    , acvccPrettyPrint
    , acvccContainerId
    , acvccUserIP
    , acvccPayload
    , acvccAccountId
    , acvccKey
    , acvccOAuthToken
    , acvccFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVariablesCreate@ which the
-- 'AccountsContainersVariablesCreate'' request conforms to.
type AccountsContainersVariablesCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "variables" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Variable :> Post '[JSON] Variable

-- | Creates a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesCreate'' smart constructor.
data AccountsContainersVariablesCreate' = AccountsContainersVariablesCreate'
    { _acvccQuotaUser   :: !(Maybe Text)
    , _acvccPrettyPrint :: !Bool
    , _acvccContainerId :: !Text
    , _acvccUserIP      :: !(Maybe Text)
    , _acvccPayload     :: !Variable
    , _acvccAccountId   :: !Text
    , _acvccKey         :: !(Maybe AuthKey)
    , _acvccOAuthToken  :: !(Maybe OAuthToken)
    , _acvccFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvccQuotaUser'
--
-- * 'acvccPrettyPrint'
--
-- * 'acvccContainerId'
--
-- * 'acvccUserIP'
--
-- * 'acvccPayload'
--
-- * 'acvccAccountId'
--
-- * 'acvccKey'
--
-- * 'acvccOAuthToken'
--
-- * 'acvccFields'
accountsContainersVariablesCreate'
    :: Text -- ^ 'containerId'
    -> Variable -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesCreate'
accountsContainersVariablesCreate' pAcvccContainerId_ pAcvccPayload_ pAcvccAccountId_ =
    AccountsContainersVariablesCreate'
    { _acvccQuotaUser = Nothing
    , _acvccPrettyPrint = True
    , _acvccContainerId = pAcvccContainerId_
    , _acvccUserIP = Nothing
    , _acvccPayload = pAcvccPayload_
    , _acvccAccountId = pAcvccAccountId_
    , _acvccKey = Nothing
    , _acvccOAuthToken = Nothing
    , _acvccFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvccQuotaUser :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvccQuotaUser
  = lens _acvccQuotaUser
      (\ s a -> s{_acvccQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvccPrettyPrint :: Lens' AccountsContainersVariablesCreate' Bool
acvccPrettyPrint
  = lens _acvccPrettyPrint
      (\ s a -> s{_acvccPrettyPrint = a})

-- | The GTM Container ID.
acvccContainerId :: Lens' AccountsContainersVariablesCreate' Text
acvccContainerId
  = lens _acvccContainerId
      (\ s a -> s{_acvccContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvccUserIP :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvccUserIP
  = lens _acvccUserIP (\ s a -> s{_acvccUserIP = a})

-- | Multipart request metadata.
acvccPayload :: Lens' AccountsContainersVariablesCreate' Variable
acvccPayload
  = lens _acvccPayload (\ s a -> s{_acvccPayload = a})

-- | The GTM Account ID.
acvccAccountId :: Lens' AccountsContainersVariablesCreate' Text
acvccAccountId
  = lens _acvccAccountId
      (\ s a -> s{_acvccAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvccKey :: Lens' AccountsContainersVariablesCreate' (Maybe AuthKey)
acvccKey = lens _acvccKey (\ s a -> s{_acvccKey = a})

-- | OAuth 2.0 token for the current user.
acvccOAuthToken :: Lens' AccountsContainersVariablesCreate' (Maybe OAuthToken)
acvccOAuthToken
  = lens _acvccOAuthToken
      (\ s a -> s{_acvccOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvccFields :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
acvccFields
  = lens _acvccFields (\ s a -> s{_acvccFields = a})

instance GoogleAuth
         AccountsContainersVariablesCreate' where
        authKey = acvccKey . _Just
        authToken = acvccOAuthToken . _Just

instance GoogleRequest
         AccountsContainersVariablesCreate' where
        type Rs AccountsContainersVariablesCreate' = Variable
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersVariablesCreate'{..}
          = go _acvccAccountId _acvccContainerId
              _acvccQuotaUser
              (Just _acvccPrettyPrint)
              _acvccUserIP
              _acvccFields
              _acvccKey
              _acvccOAuthToken
              (Just AltJSON)
              _acvccPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AccountsContainersVariablesCreateResource)
                      rq
