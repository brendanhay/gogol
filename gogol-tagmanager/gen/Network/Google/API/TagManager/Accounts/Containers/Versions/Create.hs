{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Versions.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.versions.create@.
module Network.Google.API.TagManager.Accounts.Containers.Versions.Create
    (
    -- * REST Resource
      AccountsContainersVersionsCreateAPI

    -- * Creating a Request
    , accountsContainersVersionsCreate'
    , AccountsContainersVersionsCreate'

    -- * Request Lenses
    , acvcQuotaUser
    , acvcPrettyPrint
    , acvcContainerId
    , acvcUserIp
    , acvcAccountId
    , acvcKey
    , acvcOauthToken
    , acvcFields
    , acvcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.versions.create which the
-- 'AccountsContainersVersionsCreate'' request conforms to.
type AccountsContainersVersionsCreateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Post '[JSON] CreateContainerVersionResponse

-- | Creates a Container Version.
--
-- /See:/ 'accountsContainersVersionsCreate'' smart constructor.
data AccountsContainersVersionsCreate' = AccountsContainersVersionsCreate'
    { _acvcQuotaUser   :: !(Maybe Text)
    , _acvcPrettyPrint :: !Bool
    , _acvcContainerId :: !Text
    , _acvcUserIp      :: !(Maybe Text)
    , _acvcAccountId   :: !Text
    , _acvcKey         :: !(Maybe Text)
    , _acvcOauthToken  :: !(Maybe Text)
    , _acvcFields      :: !(Maybe Text)
    , _acvcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvcQuotaUser'
--
-- * 'acvcPrettyPrint'
--
-- * 'acvcContainerId'
--
-- * 'acvcUserIp'
--
-- * 'acvcAccountId'
--
-- * 'acvcKey'
--
-- * 'acvcOauthToken'
--
-- * 'acvcFields'
--
-- * 'acvcAlt'
accountsContainersVersionsCreate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsCreate'
accountsContainersVersionsCreate' pAcvcContainerId_ pAcvcAccountId_ =
    AccountsContainersVersionsCreate'
    { _acvcQuotaUser = Nothing
    , _acvcPrettyPrint = True
    , _acvcContainerId = pAcvcContainerId_
    , _acvcUserIp = Nothing
    , _acvcAccountId = pAcvcAccountId_
    , _acvcKey = Nothing
    , _acvcOauthToken = Nothing
    , _acvcFields = Nothing
    , _acvcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvcQuotaUser :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvcQuotaUser
  = lens _acvcQuotaUser
      (\ s a -> s{_acvcQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvcPrettyPrint :: Lens' AccountsContainersVersionsCreate' Bool
acvcPrettyPrint
  = lens _acvcPrettyPrint
      (\ s a -> s{_acvcPrettyPrint = a})

-- | The GTM Container ID.
acvcContainerId :: Lens' AccountsContainersVersionsCreate' Text
acvcContainerId
  = lens _acvcContainerId
      (\ s a -> s{_acvcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvcUserIp :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvcUserIp
  = lens _acvcUserIp (\ s a -> s{_acvcUserIp = a})

-- | The GTM Account ID.
acvcAccountId :: Lens' AccountsContainersVersionsCreate' Text
acvcAccountId
  = lens _acvcAccountId
      (\ s a -> s{_acvcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvcKey :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvcKey = lens _acvcKey (\ s a -> s{_acvcKey = a})

-- | OAuth 2.0 token for the current user.
acvcOauthToken :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvcOauthToken
  = lens _acvcOauthToken
      (\ s a -> s{_acvcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvcFields :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvcFields
  = lens _acvcFields (\ s a -> s{_acvcFields = a})

-- | Data format for the response.
acvcAlt :: Lens' AccountsContainersVersionsCreate' Alt
acvcAlt = lens _acvcAlt (\ s a -> s{_acvcAlt = a})

instance GoogleRequest
         AccountsContainersVersionsCreate' where
        type Rs AccountsContainersVersionsCreate' =
             CreateContainerVersionResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsCreate'{..}
          = go _acvcQuotaUser (Just _acvcPrettyPrint)
              _acvcContainerId
              _acvcUserIp
              _acvcAccountId
              _acvcKey
              _acvcOauthToken
              _acvcFields
              (Just _acvcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersVersionsCreateAPI)
                      r
                      u
