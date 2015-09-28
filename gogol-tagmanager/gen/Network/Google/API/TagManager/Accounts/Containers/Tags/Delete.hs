{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.TagManager.Accounts.Containers.Tags.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.containers.tags.delete@.
module Network.Google.API.TagManager.Accounts.Containers.Tags.Delete
    (
    -- * REST Resource
      AccountsContainersTagsDeleteAPI

    -- * Creating a Request
    , accountsContainersTagsDelete'
    , AccountsContainersTagsDelete'

    -- * Request Lenses
    , actdQuotaUser
    , actdPrettyPrint
    , actdContainerId
    , actdUserIp
    , actdAccountId
    , actdTagId
    , actdKey
    , actdOauthToken
    , actdFields
    , actdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for tagmanager.accounts.containers.tags.delete which the
-- 'AccountsContainersTagsDelete'' request conforms to.
type AccountsContainersTagsDeleteAPI =
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
                             QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a GTM Tag.
--
-- /See:/ 'accountsContainersTagsDelete'' smart constructor.
data AccountsContainersTagsDelete' = AccountsContainersTagsDelete'
    { _actdQuotaUser   :: !(Maybe Text)
    , _actdPrettyPrint :: !Bool
    , _actdContainerId :: !Text
    , _actdUserIp      :: !(Maybe Text)
    , _actdAccountId   :: !Text
    , _actdTagId       :: !Text
    , _actdKey         :: !(Maybe Text)
    , _actdOauthToken  :: !(Maybe Text)
    , _actdFields      :: !(Maybe Text)
    , _actdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actdQuotaUser'
--
-- * 'actdPrettyPrint'
--
-- * 'actdContainerId'
--
-- * 'actdUserIp'
--
-- * 'actdAccountId'
--
-- * 'actdTagId'
--
-- * 'actdKey'
--
-- * 'actdOauthToken'
--
-- * 'actdFields'
--
-- * 'actdAlt'
accountsContainersTagsDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'tagId'
    -> AccountsContainersTagsDelete'
accountsContainersTagsDelete' pActdContainerId_ pActdAccountId_ pActdTagId_ =
    AccountsContainersTagsDelete'
    { _actdQuotaUser = Nothing
    , _actdPrettyPrint = True
    , _actdContainerId = pActdContainerId_
    , _actdUserIp = Nothing
    , _actdAccountId = pActdAccountId_
    , _actdTagId = pActdTagId_
    , _actdKey = Nothing
    , _actdOauthToken = Nothing
    , _actdFields = Nothing
    , _actdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actdQuotaUser :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdQuotaUser
  = lens _actdQuotaUser
      (\ s a -> s{_actdQuotaUser = a})

-- | Returns response with indentations and line breaks.
actdPrettyPrint :: Lens' AccountsContainersTagsDelete' Bool
actdPrettyPrint
  = lens _actdPrettyPrint
      (\ s a -> s{_actdPrettyPrint = a})

-- | The GTM Container ID.
actdContainerId :: Lens' AccountsContainersTagsDelete' Text
actdContainerId
  = lens _actdContainerId
      (\ s a -> s{_actdContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actdUserIp :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdUserIp
  = lens _actdUserIp (\ s a -> s{_actdUserIp = a})

-- | The GTM Account ID.
actdAccountId :: Lens' AccountsContainersTagsDelete' Text
actdAccountId
  = lens _actdAccountId
      (\ s a -> s{_actdAccountId = a})

-- | The GTM Tag ID.
actdTagId :: Lens' AccountsContainersTagsDelete' Text
actdTagId
  = lens _actdTagId (\ s a -> s{_actdTagId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actdKey :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdKey = lens _actdKey (\ s a -> s{_actdKey = a})

-- | OAuth 2.0 token for the current user.
actdOauthToken :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdOauthToken
  = lens _actdOauthToken
      (\ s a -> s{_actdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actdFields :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdFields
  = lens _actdFields (\ s a -> s{_actdFields = a})

-- | Data format for the response.
actdAlt :: Lens' AccountsContainersTagsDelete' Alt
actdAlt = lens _actdAlt (\ s a -> s{_actdAlt = a})

instance GoogleRequest AccountsContainersTagsDelete'
         where
        type Rs AccountsContainersTagsDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersTagsDelete'{..}
          = go _actdQuotaUser (Just _actdPrettyPrint)
              _actdContainerId
              _actdUserIp
              _actdAccountId
              _actdTagId
              _actdKey
              _actdOauthToken
              _actdFields
              (Just _actdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTagsDeleteAPI)
                      r
                      u
