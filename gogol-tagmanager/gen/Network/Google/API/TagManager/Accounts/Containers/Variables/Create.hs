{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Variables.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Variable.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.variables.create@.
module Network.Google.API.TagManager.Accounts.Containers.Variables.Create
    (
    -- * REST Resource
      AccountsContainersVariablesCreateAPI

    -- * Creating a Request
    , accountsContainersVariablesCreate'
    , AccountsContainersVariablesCreate'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aContainerId
    , aUserIp
    , aAccountId
    , aKey
    , aOauthToken
    , aFields
    , aAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.variables.create which the
-- 'AccountsContainersVariablesCreate'' request conforms to.
type AccountsContainersVariablesCreateAPI =
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
                           QueryParam "alt" Alt :> Post '[JSON] Variable

-- | Creates a GTM Variable.
--
-- /See:/ 'accountsContainersVariablesCreate'' smart constructor.
data AccountsContainersVariablesCreate' = AccountsContainersVariablesCreate'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aContainerId :: !Text
    , _aUserIp      :: !(Maybe Text)
    , _aAccountId   :: !Text
    , _aKey         :: !(Maybe Text)
    , _aOauthToken  :: !(Maybe Text)
    , _aFields      :: !(Maybe Text)
    , _aAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVariablesCreate'' with the minimum fields required to make a request.
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
-- * 'aAccountId'
--
-- * 'aKey'
--
-- * 'aOauthToken'
--
-- * 'aFields'
--
-- * 'aAlt'
accountsContainersVariablesCreate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVariablesCreate'
accountsContainersVariablesCreate' pAContainerId_ pAAccountId_ =
    AccountsContainersVariablesCreate'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aContainerId = pAContainerId_
    , _aUserIp = Nothing
    , _aAccountId = pAAccountId_
    , _aKey = Nothing
    , _aOauthToken = Nothing
    , _aFields = Nothing
    , _aAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AccountsContainersVariablesCreate' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | The GTM Container ID.
aContainerId :: Lens' AccountsContainersVariablesCreate' Text
aContainerId
  = lens _aContainerId (\ s a -> s{_aContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIp :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | The GTM Account ID.
aAccountId :: Lens' AccountsContainersVariablesCreate' Text
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AccountsContainersVariablesCreate' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AccountsContainersVariablesCreate' Alt
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest
         AccountsContainersVariablesCreate' where
        type Rs AccountsContainersVariablesCreate' = Variable
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVariablesCreate'{..}
          = go _aQuotaUser (Just _aPrettyPrint) _aContainerId
              _aUserIp
              _aAccountId
              _aKey
              _aOauthToken
              _aFields
              (Just _aAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersVariablesCreateAPI)
                      r
                      u
