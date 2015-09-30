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
-- Module      : Network.Google.Resource.Directory.Groups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete Group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsDelete@.
module Network.Google.Resource.Directory.Groups.Delete
    (
    -- * REST Resource
      GroupsDeleteResource

    -- * Creating a Request
    , groupsDelete'
    , GroupsDelete'

    -- * Request Lenses
    , gdQuotaUser
    , gdPrettyPrint
    , gdUserIp
    , gdGroupKey
    , gdKey
    , gdOauthToken
    , gdFields
    , gdAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsDelete@ which the
-- 'GroupsDelete'' request conforms to.
type GroupsDeleteResource =
     "groups" :>
       Capture "groupKey" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete Group
--
-- /See:/ 'groupsDelete'' smart constructor.
data GroupsDelete' = GroupsDelete'
    { _gdQuotaUser   :: !(Maybe Text)
    , _gdPrettyPrint :: !Bool
    , _gdUserIp      :: !(Maybe Text)
    , _gdGroupKey    :: !Text
    , _gdKey         :: !(Maybe Text)
    , _gdOauthToken  :: !(Maybe Text)
    , _gdFields      :: !(Maybe Text)
    , _gdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdQuotaUser'
--
-- * 'gdPrettyPrint'
--
-- * 'gdUserIp'
--
-- * 'gdGroupKey'
--
-- * 'gdKey'
--
-- * 'gdOauthToken'
--
-- * 'gdFields'
--
-- * 'gdAlt'
groupsDelete'
    :: Text -- ^ 'groupKey'
    -> GroupsDelete'
groupsDelete' pGdGroupKey_ =
    GroupsDelete'
    { _gdQuotaUser = Nothing
    , _gdPrettyPrint = True
    , _gdUserIp = Nothing
    , _gdGroupKey = pGdGroupKey_
    , _gdKey = Nothing
    , _gdOauthToken = Nothing
    , _gdFields = Nothing
    , _gdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gdQuotaUser :: Lens' GroupsDelete' (Maybe Text)
gdQuotaUser
  = lens _gdQuotaUser (\ s a -> s{_gdQuotaUser = a})

-- | Returns response with indentations and line breaks.
gdPrettyPrint :: Lens' GroupsDelete' Bool
gdPrettyPrint
  = lens _gdPrettyPrint
      (\ s a -> s{_gdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gdUserIp :: Lens' GroupsDelete' (Maybe Text)
gdUserIp = lens _gdUserIp (\ s a -> s{_gdUserIp = a})

-- | Email or immutable Id of the group
gdGroupKey :: Lens' GroupsDelete' Text
gdGroupKey
  = lens _gdGroupKey (\ s a -> s{_gdGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gdKey :: Lens' GroupsDelete' (Maybe Text)
gdKey = lens _gdKey (\ s a -> s{_gdKey = a})

-- | OAuth 2.0 token for the current user.
gdOauthToken :: Lens' GroupsDelete' (Maybe Text)
gdOauthToken
  = lens _gdOauthToken (\ s a -> s{_gdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gdFields :: Lens' GroupsDelete' (Maybe Text)
gdFields = lens _gdFields (\ s a -> s{_gdFields = a})

-- | Data format for the response.
gdAlt :: Lens' GroupsDelete' Alt
gdAlt = lens _gdAlt (\ s a -> s{_gdAlt = a})

instance GoogleRequest GroupsDelete' where
        type Rs GroupsDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsDelete'{..}
          = go _gdQuotaUser (Just _gdPrettyPrint) _gdUserIp
              _gdGroupKey
              _gdKey
              _gdOauthToken
              _gdFields
              (Just _gdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsDeleteResource)
                      r
                      u
