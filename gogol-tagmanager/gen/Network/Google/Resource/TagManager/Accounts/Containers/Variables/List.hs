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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Variables.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Variables of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVariablesList@.
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
    , acvlcUserIp
    , acvlcAccountId
    , acvlcKey
    , acvlcOauthToken
    , acvlcFields
    , acvlcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVariablesList@ which the
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] ListVariablesResponse

-- | Lists all GTM Variables of a Container.
--
-- /See:/ 'accountsContainersVariablesList'' smart constructor.
data AccountsContainersVariablesList' = AccountsContainersVariablesList'
    { _acvlcQuotaUser   :: !(Maybe Text)
    , _acvlcPrettyPrint :: !Bool
    , _acvlcContainerId :: !Text
    , _acvlcUserIp      :: !(Maybe Text)
    , _acvlcAccountId   :: !Text
    , _acvlcKey         :: !(Maybe Text)
    , _acvlcOauthToken  :: !(Maybe Text)
    , _acvlcFields      :: !(Maybe Text)
    , _acvlcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'acvlcUserIp'
--
-- * 'acvlcAccountId'
--
-- * 'acvlcKey'
--
-- * 'acvlcOauthToken'
--
-- * 'acvlcFields'
--
-- * 'acvlcAlt'
accountsContainersVariablesList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesList'
accountsContainersVariablesList' pAcvlcContainerId_ pAcvlcAccountId_ =
    AccountsContainersVariablesList'
    { _acvlcQuotaUser = Nothing
    , _acvlcPrettyPrint = True
    , _acvlcContainerId = pAcvlcContainerId_
    , _acvlcUserIp = Nothing
    , _acvlcAccountId = pAcvlcAccountId_
    , _acvlcKey = Nothing
    , _acvlcOauthToken = Nothing
    , _acvlcFields = Nothing
    , _acvlcAlt = JSON
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
acvlcUserIp :: Lens' AccountsContainersVariablesList' (Maybe Text)
acvlcUserIp
  = lens _acvlcUserIp (\ s a -> s{_acvlcUserIp = a})

-- | The GTM Account ID.
acvlcAccountId :: Lens' AccountsContainersVariablesList' Text
acvlcAccountId
  = lens _acvlcAccountId
      (\ s a -> s{_acvlcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvlcKey :: Lens' AccountsContainersVariablesList' (Maybe Text)
acvlcKey = lens _acvlcKey (\ s a -> s{_acvlcKey = a})

-- | OAuth 2.0 token for the current user.
acvlcOauthToken :: Lens' AccountsContainersVariablesList' (Maybe Text)
acvlcOauthToken
  = lens _acvlcOauthToken
      (\ s a -> s{_acvlcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvlcFields :: Lens' AccountsContainersVariablesList' (Maybe Text)
acvlcFields
  = lens _acvlcFields (\ s a -> s{_acvlcFields = a})

-- | Data format for the response.
acvlcAlt :: Lens' AccountsContainersVariablesList' Alt
acvlcAlt = lens _acvlcAlt (\ s a -> s{_acvlcAlt = a})

instance GoogleRequest
         AccountsContainersVariablesList' where
        type Rs AccountsContainersVariablesList' =
             ListVariablesResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVariablesList'{..}
          = go _acvlcQuotaUser (Just _acvlcPrettyPrint)
              _acvlcContainerId
              _acvlcUserIp
              _acvlcAccountId
              _acvlcKey
              _acvlcOauthToken
              _acvlcFields
              (Just _acvlcAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVariablesListResource)
                      r
                      u
