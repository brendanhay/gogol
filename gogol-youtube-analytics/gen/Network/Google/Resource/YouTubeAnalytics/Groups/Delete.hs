{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTubeAnalytics.Groups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a group.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsGroupsDelete@.
module Network.Google.Resource.YouTubeAnalytics.Groups.Delete
    (
    -- * REST Resource
      GroupsDeleteResource

    -- * Creating a Request
    , groupsDelete'
    , GroupsDelete'

    -- * Request Lenses
    , gdQuotaUser
    , gdPrettyPrint
    , gdUserIP
    , gdOnBehalfOfContentOwner
    , gdKey
    , gdId
    , gdOAuthToken
    , gdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsGroupsDelete@ which the
-- 'GroupsDelete'' request conforms to.
type GroupsDeleteResource =
     "groups" :>
       QueryParam "id" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a group.
--
-- /See:/ 'groupsDelete'' smart constructor.
data GroupsDelete' = GroupsDelete'
    { _gdQuotaUser              :: !(Maybe Text)
    , _gdPrettyPrint            :: !Bool
    , _gdUserIP                 :: !(Maybe Text)
    , _gdOnBehalfOfContentOwner :: !(Maybe Text)
    , _gdKey                    :: !(Maybe Key)
    , _gdId                     :: !Text
    , _gdOAuthToken             :: !(Maybe OAuthToken)
    , _gdFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdQuotaUser'
--
-- * 'gdPrettyPrint'
--
-- * 'gdUserIP'
--
-- * 'gdOnBehalfOfContentOwner'
--
-- * 'gdKey'
--
-- * 'gdId'
--
-- * 'gdOAuthToken'
--
-- * 'gdFields'
groupsDelete'
    :: Text -- ^ 'id'
    -> GroupsDelete'
groupsDelete' pGdId_ =
    GroupsDelete'
    { _gdQuotaUser = Nothing
    , _gdPrettyPrint = True
    , _gdUserIP = Nothing
    , _gdOnBehalfOfContentOwner = Nothing
    , _gdKey = Nothing
    , _gdId = pGdId_
    , _gdOAuthToken = Nothing
    , _gdFields = Nothing
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
gdUserIP :: Lens' GroupsDelete' (Maybe Text)
gdUserIP = lens _gdUserIP (\ s a -> s{_gdUserIP = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
gdOnBehalfOfContentOwner :: Lens' GroupsDelete' (Maybe Text)
gdOnBehalfOfContentOwner
  = lens _gdOnBehalfOfContentOwner
      (\ s a -> s{_gdOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gdKey :: Lens' GroupsDelete' (Maybe Key)
gdKey = lens _gdKey (\ s a -> s{_gdKey = a})

-- | The id parameter specifies the YouTube group ID for the group that is
-- being deleted.
gdId :: Lens' GroupsDelete' Text
gdId = lens _gdId (\ s a -> s{_gdId = a})

-- | OAuth 2.0 token for the current user.
gdOAuthToken :: Lens' GroupsDelete' (Maybe OAuthToken)
gdOAuthToken
  = lens _gdOAuthToken (\ s a -> s{_gdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gdFields :: Lens' GroupsDelete' (Maybe Text)
gdFields = lens _gdFields (\ s a -> s{_gdFields = a})

instance GoogleAuth GroupsDelete' where
        authKey = gdKey . _Just
        authToken = gdOAuthToken . _Just

instance GoogleRequest GroupsDelete' where
        type Rs GroupsDelete' = ()
        request = requestWithRoute defReq youTubeAnalyticsURL
        requestWithRoute r u GroupsDelete'{..}
          = go (Just _gdId) _gdOnBehalfOfContentOwner
              _gdQuotaUser
              (Just _gdPrettyPrint)
              _gdUserIP
              _gdFields
              _gdKey
              _gdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsDeleteResource)
                      r
                      u
