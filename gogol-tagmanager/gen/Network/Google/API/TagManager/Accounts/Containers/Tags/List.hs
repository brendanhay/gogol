{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Tags.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all GTM Tags of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.tags.list@.
module Network.Google.API.TagManager.Accounts.Containers.Tags.List
    (
    -- * REST Resource
      AccountsContainersTagsListAPI

    -- * Creating a Request
    , accountsContainersTagsList'
    , AccountsContainersTagsList'

    -- * Request Lenses
    , actlQuotaUser
    , actlPrettyPrint
    , actlContainerId
    , actlUserIp
    , actlAccountId
    , actlKey
    , actlOauthToken
    , actlFields
    , actlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.tags.list which the
-- 'AccountsContainersTagsList'' request conforms to.
type AccountsContainersTagsListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] ListTagsResponse

-- | Lists all GTM Tags of a Container.
--
-- /See:/ 'accountsContainersTagsList'' smart constructor.
data AccountsContainersTagsList' = AccountsContainersTagsList'
    { _actlQuotaUser   :: !(Maybe Text)
    , _actlPrettyPrint :: !Bool
    , _actlContainerId :: !Text
    , _actlUserIp      :: !(Maybe Text)
    , _actlAccountId   :: !Text
    , _actlKey         :: !(Maybe Text)
    , _actlOauthToken  :: !(Maybe Text)
    , _actlFields      :: !(Maybe Text)
    , _actlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actlQuotaUser'
--
-- * 'actlPrettyPrint'
--
-- * 'actlContainerId'
--
-- * 'actlUserIp'
--
-- * 'actlAccountId'
--
-- * 'actlKey'
--
-- * 'actlOauthToken'
--
-- * 'actlFields'
--
-- * 'actlAlt'
accountsContainersTagsList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTagsList'
accountsContainersTagsList' pActlContainerId_ pActlAccountId_ =
    AccountsContainersTagsList'
    { _actlQuotaUser = Nothing
    , _actlPrettyPrint = True
    , _actlContainerId = pActlContainerId_
    , _actlUserIp = Nothing
    , _actlAccountId = pActlAccountId_
    , _actlKey = Nothing
    , _actlOauthToken = Nothing
    , _actlFields = Nothing
    , _actlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actlQuotaUser :: Lens' AccountsContainersTagsList' (Maybe Text)
actlQuotaUser
  = lens _actlQuotaUser
      (\ s a -> s{_actlQuotaUser = a})

-- | Returns response with indentations and line breaks.
actlPrettyPrint :: Lens' AccountsContainersTagsList' Bool
actlPrettyPrint
  = lens _actlPrettyPrint
      (\ s a -> s{_actlPrettyPrint = a})

-- | The GTM Container ID.
actlContainerId :: Lens' AccountsContainersTagsList' Text
actlContainerId
  = lens _actlContainerId
      (\ s a -> s{_actlContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actlUserIp :: Lens' AccountsContainersTagsList' (Maybe Text)
actlUserIp
  = lens _actlUserIp (\ s a -> s{_actlUserIp = a})

-- | The GTM Account ID.
actlAccountId :: Lens' AccountsContainersTagsList' Text
actlAccountId
  = lens _actlAccountId
      (\ s a -> s{_actlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actlKey :: Lens' AccountsContainersTagsList' (Maybe Text)
actlKey = lens _actlKey (\ s a -> s{_actlKey = a})

-- | OAuth 2.0 token for the current user.
actlOauthToken :: Lens' AccountsContainersTagsList' (Maybe Text)
actlOauthToken
  = lens _actlOauthToken
      (\ s a -> s{_actlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actlFields :: Lens' AccountsContainersTagsList' (Maybe Text)
actlFields
  = lens _actlFields (\ s a -> s{_actlFields = a})

-- | Data format for the response.
actlAlt :: Lens' AccountsContainersTagsList' Alt
actlAlt = lens _actlAlt (\ s a -> s{_actlAlt = a})

instance GoogleRequest AccountsContainersTagsList'
         where
        type Rs AccountsContainersTagsList' =
             ListTagsResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersTagsList'{..}
          = go _actlQuotaUser (Just _actlPrettyPrint)
              _actlContainerId
              _actlUserIp
              _actlAccountId
              _actlKey
              _actlOauthToken
              _actlFields
              (Just _actlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTagsListAPI)
                      r
                      u
