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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Variables of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVariablesList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Variables.List
    (
    -- * REST Resource
      AccountsContainersVariablesListResource

    -- * Creating a Request
    , accountsContainersVariablesList'
    , AccountsContainersVariablesList'

    -- * Request Lenses
    , acvlcQuotaUser
    , acvlcPrettyPrint
    , acvlcContainerId
    , acvlcUserIP
    , acvlcAccountId
    , acvlcKey
    , acvlcOAuthToken
    , acvlcFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVariablesList@ method which the
-- 'AccountsContainersVariablesList'' request conforms to.
type AccountsContainersVariablesListResource =
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
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListVariablesResponse

-- | Lists all GTM Variables of a Container.
--
-- /See:/ 'accountsContainersVariablesList'' smart constructor.
data AccountsContainersVariablesList' = AccountsContainersVariablesList'
    { _acvlcQuotaUser   :: !(Maybe Text)
    , _acvlcPrettyPrint :: !Bool
    , _acvlcContainerId :: !Text
    , _acvlcUserIP      :: !(Maybe Text)
    , _acvlcAccountId   :: !Text
    , _acvlcKey         :: !(Maybe AuthKey)
    , _acvlcOAuthToken  :: !(Maybe OAuthToken)
    , _acvlcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvlcQuotaUser'
--
-- * 'acvlcPrettyPrint'
--
-- * 'acvlcContainerId'
--
-- * 'acvlcUserIP'
--
-- * 'acvlcAccountId'
--
-- * 'acvlcKey'
--
-- * 'acvlcOAuthToken'
--
-- * 'acvlcFields'
accountsContainersVariablesList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesList'
accountsContainersVariablesList' pAcvlcContainerId_ pAcvlcAccountId_ =
    AccountsContainersVariablesList'
    { _acvlcQuotaUser = Nothing
    , _acvlcPrettyPrint = True
    , _acvlcContainerId = pAcvlcContainerId_
    , _acvlcUserIP = Nothing
    , _acvlcAccountId = pAcvlcAccountId_
    , _acvlcKey = Nothing
    , _acvlcOAuthToken = Nothing
    , _acvlcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvlcQuotaUser :: Lens' AccountsContainersVariablesList' (Maybe Text)
acvlcQuotaUser
  = lens _acvlcQuotaUser
      (\ s a -> s{_acvlcQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvlcPrettyPrint :: Lens' AccountsContainersVariablesList' Bool
acvlcPrettyPrint
  = lens _acvlcPrettyPrint
      (\ s a -> s{_acvlcPrettyPrint = a})

-- | The GTM Container ID.
acvlcContainerId :: Lens' AccountsContainersVariablesList' Text
acvlcContainerId
  = lens _acvlcContainerId
      (\ s a -> s{_acvlcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvlcUserIP :: Lens' AccountsContainersVariablesList' (Maybe Text)
acvlcUserIP
  = lens _acvlcUserIP (\ s a -> s{_acvlcUserIP = a})

-- | The GTM Account ID.
acvlcAccountId :: Lens' AccountsContainersVariablesList' Text
acvlcAccountId
  = lens _acvlcAccountId
      (\ s a -> s{_acvlcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvlcKey :: Lens' AccountsContainersVariablesList' (Maybe AuthKey)
acvlcKey = lens _acvlcKey (\ s a -> s{_acvlcKey = a})

-- | OAuth 2.0 token for the current user.
acvlcOAuthToken :: Lens' AccountsContainersVariablesList' (Maybe OAuthToken)
acvlcOAuthToken
  = lens _acvlcOAuthToken
      (\ s a -> s{_acvlcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvlcFields :: Lens' AccountsContainersVariablesList' (Maybe Text)
acvlcFields
  = lens _acvlcFields (\ s a -> s{_acvlcFields = a})

instance GoogleAuth AccountsContainersVariablesList'
         where
        _AuthKey = acvlcKey . _Just
        _AuthToken = acvlcOAuthToken . _Just

instance GoogleRequest
         AccountsContainersVariablesList' where
        type Rs AccountsContainersVariablesList' =
             ListVariablesResponse
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersVariablesList'{..}
          = go _acvlcAccountId _acvlcContainerId
              _acvlcQuotaUser
              (Just _acvlcPrettyPrint)
              _acvlcUserIP
              _acvlcFields
              _acvlcKey
              _acvlcOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AccountsContainersVariablesListResource)
                      rq
