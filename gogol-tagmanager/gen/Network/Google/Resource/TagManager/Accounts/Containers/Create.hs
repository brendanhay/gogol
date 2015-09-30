{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersCreate@.
module TagManager.Accounts.Containers.Create
    (
    -- * REST Resource
      AccountsContainersCreateAPI

    -- * Creating a Request
    , accountsContainersCreate
    , AccountsContainersCreate

    -- * Request Lenses
    , acccQuotaUser
    , acccPrettyPrint
    , acccUserIp
    , acccAccountId
    , acccKey
    , acccOauthToken
    , acccFields
    , acccAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersCreate@ which the
-- 'AccountsContainersCreate' request conforms to.
type AccountsContainersCreateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :> Post '[JSON] Container

-- | Creates a Container.
--
-- /See:/ 'accountsContainersCreate' smart constructor.
data AccountsContainersCreate = AccountsContainersCreate
    { _acccQuotaUser   :: !(Maybe Text)
    , _acccPrettyPrint :: !Bool
    , _acccUserIp      :: !(Maybe Text)
    , _acccAccountId   :: !Text
    , _acccKey         :: !(Maybe Text)
    , _acccOauthToken  :: !(Maybe Text)
    , _acccFields      :: !(Maybe Text)
    , _acccAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccQuotaUser'
--
-- * 'acccPrettyPrint'
--
-- * 'acccUserIp'
--
-- * 'acccAccountId'
--
-- * 'acccKey'
--
-- * 'acccOauthToken'
--
-- * 'acccFields'
--
-- * 'acccAlt'
accountsContainersCreate
    :: Text -- ^ 'accountId'
    -> AccountsContainersCreate
accountsContainersCreate pAcccAccountId_ =
    AccountsContainersCreate
    { _acccQuotaUser = Nothing
    , _acccPrettyPrint = True
    , _acccUserIp = Nothing
    , _acccAccountId = pAcccAccountId_
    , _acccKey = Nothing
    , _acccOauthToken = Nothing
    , _acccFields = Nothing
    , _acccAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acccQuotaUser :: Lens' AccountsContainersCreate' (Maybe Text)
acccQuotaUser
  = lens _acccQuotaUser
      (\ s a -> s{_acccQuotaUser = a})

-- | Returns response with indentations and line breaks.
acccPrettyPrint :: Lens' AccountsContainersCreate' Bool
acccPrettyPrint
  = lens _acccPrettyPrint
      (\ s a -> s{_acccPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acccUserIp :: Lens' AccountsContainersCreate' (Maybe Text)
acccUserIp
  = lens _acccUserIp (\ s a -> s{_acccUserIp = a})

-- | The GTM Account ID.
acccAccountId :: Lens' AccountsContainersCreate' Text
acccAccountId
  = lens _acccAccountId
      (\ s a -> s{_acccAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acccKey :: Lens' AccountsContainersCreate' (Maybe Text)
acccKey = lens _acccKey (\ s a -> s{_acccKey = a})

-- | OAuth 2.0 token for the current user.
acccOauthToken :: Lens' AccountsContainersCreate' (Maybe Text)
acccOauthToken
  = lens _acccOauthToken
      (\ s a -> s{_acccOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acccFields :: Lens' AccountsContainersCreate' (Maybe Text)
acccFields
  = lens _acccFields (\ s a -> s{_acccFields = a})

-- | Data format for the response.
acccAlt :: Lens' AccountsContainersCreate' Text
acccAlt = lens _acccAlt (\ s a -> s{_acccAlt = a})

instance GoogleRequest AccountsContainersCreate'
         where
        type Rs AccountsContainersCreate' = Container
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersCreate{..}
          = go _acccQuotaUser _acccPrettyPrint _acccUserIp
              _acccAccountId
              _acccKey
              _acccOauthToken
              _acccFields
              _acccAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersCreateAPI)
                      r
                      u
