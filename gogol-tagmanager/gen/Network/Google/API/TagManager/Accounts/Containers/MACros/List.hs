{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.MACros.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Macros of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.macros.list@.
module Network.Google.API.TagManager.Accounts.Containers.MACros.List
    (
    -- * REST Resource
      AccountsContainersMACrosListAPI

    -- * Creating a Request
    , accountsContainersMACrosList'
    , AccountsContainersMACrosList'

    -- * Request Lenses
    , acmaclQuotaUser
    , acmaclPrettyPrint
    , acmaclContainerId
    , acmaclUserIp
    , acmaclAccountId
    , acmaclKey
    , acmaclOauthToken
    , acmaclFields
    , acmaclAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.macros.list which the
-- 'AccountsContainersMACrosList'' request conforms to.
type AccountsContainersMACrosListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] ListMacrosResponse

-- | Lists all GTM Macros of a Container.
--
-- /See:/ 'accountsContainersMACrosList'' smart constructor.
data AccountsContainersMACrosList' = AccountsContainersMACrosList'
    { _acmaclQuotaUser   :: !(Maybe Text)
    , _acmaclPrettyPrint :: !Bool
    , _acmaclContainerId :: !Text
    , _acmaclUserIp      :: !(Maybe Text)
    , _acmaclAccountId   :: !Text
    , _acmaclKey         :: !(Maybe Text)
    , _acmaclOauthToken  :: !(Maybe Text)
    , _acmaclFields      :: !(Maybe Text)
    , _acmaclAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMACrosList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmaclQuotaUser'
--
-- * 'acmaclPrettyPrint'
--
-- * 'acmaclContainerId'
--
-- * 'acmaclUserIp'
--
-- * 'acmaclAccountId'
--
-- * 'acmaclKey'
--
-- * 'acmaclOauthToken'
--
-- * 'acmaclFields'
--
-- * 'acmaclAlt'
accountsContainersMACrosList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersMACrosList'
accountsContainersMACrosList' pAcmaclContainerId_ pAcmaclAccountId_ =
    AccountsContainersMACrosList'
    { _acmaclQuotaUser = Nothing
    , _acmaclPrettyPrint = True
    , _acmaclContainerId = pAcmaclContainerId_
    , _acmaclUserIp = Nothing
    , _acmaclAccountId = pAcmaclAccountId_
    , _acmaclKey = Nothing
    , _acmaclOauthToken = Nothing
    , _acmaclFields = Nothing
    , _acmaclAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmaclQuotaUser :: Lens' AccountsContainersMACrosList' (Maybe Text)
acmaclQuotaUser
  = lens _acmaclQuotaUser
      (\ s a -> s{_acmaclQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmaclPrettyPrint :: Lens' AccountsContainersMACrosList' Bool
acmaclPrettyPrint
  = lens _acmaclPrettyPrint
      (\ s a -> s{_acmaclPrettyPrint = a})

-- | The GTM Container ID.
acmaclContainerId :: Lens' AccountsContainersMACrosList' Text
acmaclContainerId
  = lens _acmaclContainerId
      (\ s a -> s{_acmaclContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmaclUserIp :: Lens' AccountsContainersMACrosList' (Maybe Text)
acmaclUserIp
  = lens _acmaclUserIp (\ s a -> s{_acmaclUserIp = a})

-- | The GTM Account ID.
acmaclAccountId :: Lens' AccountsContainersMACrosList' Text
acmaclAccountId
  = lens _acmaclAccountId
      (\ s a -> s{_acmaclAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmaclKey :: Lens' AccountsContainersMACrosList' (Maybe Text)
acmaclKey
  = lens _acmaclKey (\ s a -> s{_acmaclKey = a})

-- | OAuth 2.0 token for the current user.
acmaclOauthToken :: Lens' AccountsContainersMACrosList' (Maybe Text)
acmaclOauthToken
  = lens _acmaclOauthToken
      (\ s a -> s{_acmaclOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmaclFields :: Lens' AccountsContainersMACrosList' (Maybe Text)
acmaclFields
  = lens _acmaclFields (\ s a -> s{_acmaclFields = a})

-- | Data format for the response.
acmaclAlt :: Lens' AccountsContainersMACrosList' Alt
acmaclAlt
  = lens _acmaclAlt (\ s a -> s{_acmaclAlt = a})

instance GoogleRequest AccountsContainersMACrosList'
         where
        type Rs AccountsContainersMACrosList' =
             ListMacrosResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersMACrosList'{..}
          = go _acmaclQuotaUser (Just _acmaclPrettyPrint)
              _acmaclContainerId
              _acmaclUserIp
              _acmaclAccountId
              _acmaclKey
              _acmaclOauthToken
              _acmaclFields
              (Just _acmaclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersMACrosListAPI)
                      r
                      u
