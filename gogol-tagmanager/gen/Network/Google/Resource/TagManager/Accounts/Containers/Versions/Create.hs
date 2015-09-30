{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVersionsCreate@.
module TagManager.Accounts.Containers.Versions.Create
    (
    -- * REST Resource
      AccountsContainersVersionsCreateAPI

    -- * Creating a Request
    , accountsContainersVersionsCreate
    , AccountsContainersVersionsCreate

    -- * Request Lenses
    , acvccQuotaUser
    , acvccPrettyPrint
    , acvccContainerId
    , acvccUserIp
    , acvccAccountId
    , acvccKey
    , acvccOauthToken
    , acvccFields
    , acvccAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVersionsCreate@ which the
-- 'AccountsContainersVersionsCreate' request conforms to.
type AccountsContainersVersionsCreateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Post '[JSON] CreateContainerVersionResponse

-- | Creates a Container Version.
--
-- /See:/ 'accountsContainersVersionsCreate' smart constructor.
data AccountsContainersVersionsCreate = AccountsContainersVersionsCreate
    { _acvccQuotaUser   :: !(Maybe Text)
    , _acvccPrettyPrint :: !Bool
    , _acvccContainerId :: !Text
    , _acvccUserIp      :: !(Maybe Text)
    , _acvccAccountId   :: !Text
    , _acvccKey         :: !(Maybe Text)
    , _acvccOauthToken  :: !(Maybe Text)
    , _acvccFields      :: !(Maybe Text)
    , _acvccAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvccQuotaUser'
--
-- * 'acvccPrettyPrint'
--
-- * 'acvccContainerId'
--
-- * 'acvccUserIp'
--
-- * 'acvccAccountId'
--
-- * 'acvccKey'
--
-- * 'acvccOauthToken'
--
-- * 'acvccFields'
--
-- * 'acvccAlt'
accountsContainersVersionsCreate
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsCreate
accountsContainersVersionsCreate pAcvccContainerId_ pAcvccAccountId_ =
    AccountsContainersVersionsCreate
    { _acvccQuotaUser = Nothing
    , _acvccPrettyPrint = True
    , _acvccContainerId = pAcvccContainerId_
    , _acvccUserIp = Nothing
    , _acvccAccountId = pAcvccAccountId_
    , _acvccKey = Nothing
    , _acvccOauthToken = Nothing
    , _acvccFields = Nothing
    , _acvccAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvccQuotaUser :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvccQuotaUser
  = lens _acvccQuotaUser
      (\ s a -> s{_acvccQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvccPrettyPrint :: Lens' AccountsContainersVersionsCreate' Bool
acvccPrettyPrint
  = lens _acvccPrettyPrint
      (\ s a -> s{_acvccPrettyPrint = a})

-- | The GTM Container ID.
acvccContainerId :: Lens' AccountsContainersVersionsCreate' Text
acvccContainerId
  = lens _acvccContainerId
      (\ s a -> s{_acvccContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvccUserIp :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvccUserIp
  = lens _acvccUserIp (\ s a -> s{_acvccUserIp = a})

-- | The GTM Account ID.
acvccAccountId :: Lens' AccountsContainersVersionsCreate' Text
acvccAccountId
  = lens _acvccAccountId
      (\ s a -> s{_acvccAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvccKey :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvccKey = lens _acvccKey (\ s a -> s{_acvccKey = a})

-- | OAuth 2.0 token for the current user.
acvccOauthToken :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvccOauthToken
  = lens _acvccOauthToken
      (\ s a -> s{_acvccOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvccFields :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvccFields
  = lens _acvccFields (\ s a -> s{_acvccFields = a})

-- | Data format for the response.
acvccAlt :: Lens' AccountsContainersVersionsCreate' Text
acvccAlt = lens _acvccAlt (\ s a -> s{_acvccAlt = a})

instance GoogleRequest
         AccountsContainersVersionsCreate' where
        type Rs AccountsContainersVersionsCreate' =
             CreateContainerVersionResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsCreate{..}
          = go _acvccQuotaUser _acvccPrettyPrint
              _acvccContainerId
              _acvccUserIp
              _acvccAccountId
              _acvccKey
              _acvccOauthToken
              _acvccFields
              _acvccAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersVersionsCreateAPI)
                      r
                      u
