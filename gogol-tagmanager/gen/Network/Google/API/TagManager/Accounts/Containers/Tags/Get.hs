{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Tags.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.tags.get@.
module Network.Google.API.TagManager.Accounts.Containers.Tags.Get
    (
    -- * REST Resource
      AccountsContainersTagsGetAPI

    -- * Creating a Request
    , accountsContainersTagsGet'
    , AccountsContainersTagsGet'

    -- * Request Lenses
    , actgQuotaUser
    , actgPrettyPrint
    , actgContainerId
    , actgUserIp
    , actgAccountId
    , actgTagId
    , actgKey
    , actgOauthToken
    , actgFields
    , actgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.tags.get which the
-- 'AccountsContainersTagsGet'' request conforms to.
type AccountsContainersTagsGetAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :>
               Capture "tagId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] Tag

-- | Gets a GTM Tag.
--
-- /See:/ 'accountsContainersTagsGet'' smart constructor.
data AccountsContainersTagsGet' = AccountsContainersTagsGet'
    { _actgQuotaUser   :: !(Maybe Text)
    , _actgPrettyPrint :: !Bool
    , _actgContainerId :: !Text
    , _actgUserIp      :: !(Maybe Text)
    , _actgAccountId   :: !Text
    , _actgTagId       :: !Text
    , _actgKey         :: !(Maybe Text)
    , _actgOauthToken  :: !(Maybe Text)
    , _actgFields      :: !(Maybe Text)
    , _actgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actgQuotaUser'
--
-- * 'actgPrettyPrint'
--
-- * 'actgContainerId'
--
-- * 'actgUserIp'
--
-- * 'actgAccountId'
--
-- * 'actgTagId'
--
-- * 'actgKey'
--
-- * 'actgOauthToken'
--
-- * 'actgFields'
--
-- * 'actgAlt'
accountsContainersTagsGet'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'tagId'
    -> AccountsContainersTagsGet'
accountsContainersTagsGet' pActgContainerId_ pActgAccountId_ pActgTagId_ =
    AccountsContainersTagsGet'
    { _actgQuotaUser = Nothing
    , _actgPrettyPrint = True
    , _actgContainerId = pActgContainerId_
    , _actgUserIp = Nothing
    , _actgAccountId = pActgAccountId_
    , _actgTagId = pActgTagId_
    , _actgKey = Nothing
    , _actgOauthToken = Nothing
    , _actgFields = Nothing
    , _actgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actgQuotaUser :: Lens' AccountsContainersTagsGet' (Maybe Text)
actgQuotaUser
  = lens _actgQuotaUser
      (\ s a -> s{_actgQuotaUser = a})

-- | Returns response with indentations and line breaks.
actgPrettyPrint :: Lens' AccountsContainersTagsGet' Bool
actgPrettyPrint
  = lens _actgPrettyPrint
      (\ s a -> s{_actgPrettyPrint = a})

-- | The GTM Container ID.
actgContainerId :: Lens' AccountsContainersTagsGet' Text
actgContainerId
  = lens _actgContainerId
      (\ s a -> s{_actgContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actgUserIp :: Lens' AccountsContainersTagsGet' (Maybe Text)
actgUserIp
  = lens _actgUserIp (\ s a -> s{_actgUserIp = a})

-- | The GTM Account ID.
actgAccountId :: Lens' AccountsContainersTagsGet' Text
actgAccountId
  = lens _actgAccountId
      (\ s a -> s{_actgAccountId = a})

-- | The GTM Tag ID.
actgTagId :: Lens' AccountsContainersTagsGet' Text
actgTagId
  = lens _actgTagId (\ s a -> s{_actgTagId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actgKey :: Lens' AccountsContainersTagsGet' (Maybe Text)
actgKey = lens _actgKey (\ s a -> s{_actgKey = a})

-- | OAuth 2.0 token for the current user.
actgOauthToken :: Lens' AccountsContainersTagsGet' (Maybe Text)
actgOauthToken
  = lens _actgOauthToken
      (\ s a -> s{_actgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actgFields :: Lens' AccountsContainersTagsGet' (Maybe Text)
actgFields
  = lens _actgFields (\ s a -> s{_actgFields = a})

-- | Data format for the response.
actgAlt :: Lens' AccountsContainersTagsGet' Alt
actgAlt = lens _actgAlt (\ s a -> s{_actgAlt = a})

instance GoogleRequest AccountsContainersTagsGet'
         where
        type Rs AccountsContainersTagsGet' = Tag
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersTagsGet'{..}
          = go _actgQuotaUser (Just _actgPrettyPrint)
              _actgContainerId
              _actgUserIp
              _actgAccountId
              _actgTagId
              _actgKey
              _actgOauthToken
              _actgFields
              (Just _actgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTagsGetAPI)
                      r
                      u
