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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all Container Versions of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVersionsList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.List
    (
    -- * REST Resource
      AccountsContainersVersionsListResource

    -- * Creating a Request
    , accountsContainersVersionsList'
    , AccountsContainersVersionsList'

    -- * Request Lenses
    , acvlQuotaUser
    , acvlPrettyPrint
    , acvlContainerId
    , acvlUserIp
    , acvlHeaders
    , acvlAccountId
    , acvlKey
    , acvlOauthToken
    , acvlFields
    , acvlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVersionsList@ which the
-- 'AccountsContainersVersionsList'' request conforms to.
type AccountsContainersVersionsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "headers" Bool :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] ListContainerVersionsResponse

-- | Lists all Container Versions of a GTM Container.
--
-- /See:/ 'accountsContainersVersionsList'' smart constructor.
data AccountsContainersVersionsList' = AccountsContainersVersionsList'
    { _acvlQuotaUser   :: !(Maybe Text)
    , _acvlPrettyPrint :: !Bool
    , _acvlContainerId :: !Text
    , _acvlUserIp      :: !(Maybe Text)
    , _acvlHeaders     :: !Bool
    , _acvlAccountId   :: !Text
    , _acvlKey         :: !(Maybe Text)
    , _acvlOauthToken  :: !(Maybe Text)
    , _acvlFields      :: !(Maybe Text)
    , _acvlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvlQuotaUser'
--
-- * 'acvlPrettyPrint'
--
-- * 'acvlContainerId'
--
-- * 'acvlUserIp'
--
-- * 'acvlHeaders'
--
-- * 'acvlAccountId'
--
-- * 'acvlKey'
--
-- * 'acvlOauthToken'
--
-- * 'acvlFields'
--
-- * 'acvlAlt'
accountsContainersVersionsList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsList'
accountsContainersVersionsList' pAcvlContainerId_ pAcvlAccountId_ =
    AccountsContainersVersionsList'
    { _acvlQuotaUser = Nothing
    , _acvlPrettyPrint = True
    , _acvlContainerId = pAcvlContainerId_
    , _acvlUserIp = Nothing
    , _acvlHeaders = False
    , _acvlAccountId = pAcvlAccountId_
    , _acvlKey = Nothing
    , _acvlOauthToken = Nothing
    , _acvlFields = Nothing
    , _acvlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvlQuotaUser :: Lens' AccountsContainersVersionsList' (Maybe Text)
acvlQuotaUser
  = lens _acvlQuotaUser
      (\ s a -> s{_acvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvlPrettyPrint :: Lens' AccountsContainersVersionsList' Bool
acvlPrettyPrint
  = lens _acvlPrettyPrint
      (\ s a -> s{_acvlPrettyPrint = a})

-- | The GTM Container ID.
acvlContainerId :: Lens' AccountsContainersVersionsList' Text
acvlContainerId
  = lens _acvlContainerId
      (\ s a -> s{_acvlContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvlUserIp :: Lens' AccountsContainersVersionsList' (Maybe Text)
acvlUserIp
  = lens _acvlUserIp (\ s a -> s{_acvlUserIp = a})

-- | Retrieve headers only when true.
acvlHeaders :: Lens' AccountsContainersVersionsList' Bool
acvlHeaders
  = lens _acvlHeaders (\ s a -> s{_acvlHeaders = a})

-- | The GTM Account ID.
acvlAccountId :: Lens' AccountsContainersVersionsList' Text
acvlAccountId
  = lens _acvlAccountId
      (\ s a -> s{_acvlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvlKey :: Lens' AccountsContainersVersionsList' (Maybe Text)
acvlKey = lens _acvlKey (\ s a -> s{_acvlKey = a})

-- | OAuth 2.0 token for the current user.
acvlOauthToken :: Lens' AccountsContainersVersionsList' (Maybe Text)
acvlOauthToken
  = lens _acvlOauthToken
      (\ s a -> s{_acvlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvlFields :: Lens' AccountsContainersVersionsList' (Maybe Text)
acvlFields
  = lens _acvlFields (\ s a -> s{_acvlFields = a})

-- | Data format for the response.
acvlAlt :: Lens' AccountsContainersVersionsList' Alt
acvlAlt = lens _acvlAlt (\ s a -> s{_acvlAlt = a})

instance GoogleRequest
         AccountsContainersVersionsList' where
        type Rs AccountsContainersVersionsList' =
             ListContainerVersionsResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsList'{..}
          = go _acvlQuotaUser (Just _acvlPrettyPrint)
              _acvlContainerId
              _acvlUserIp
              (Just _acvlHeaders)
              _acvlAccountId
              _acvlKey
              _acvlOauthToken
              _acvlFields
              (Just _acvlAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVersionsListResource)
                      r
                      u
