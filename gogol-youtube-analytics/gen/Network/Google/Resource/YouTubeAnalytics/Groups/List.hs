{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.YouTubeAnalytics.Groups.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a collection of groups that match the API request parameters.
-- For example, you can retrieve all groups that the authenticated user
-- owns, or you can retrieve one or more groups by their unique IDs.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsGroupsList@.
module Network.Google.Resource.YouTubeAnalytics.Groups.List
    (
    -- * REST Resource
      GroupsListResource

    -- * Creating a Request
    , groupsList'
    , GroupsList'

    -- * Request Lenses
    , glQuotaUser
    , glPrettyPrint
    , glMine
    , glUserIP
    , glOnBehalfOfContentOwner
    , glKey
    , glId
    , glOAuthToken
    , glFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsGroupsList@ which the
-- 'GroupsList'' request conforms to.
type GroupsListResource =
     "groups" :>
       QueryParam "mine" Bool :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "id" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] GroupListResponse

-- | Returns a collection of groups that match the API request parameters.
-- For example, you can retrieve all groups that the authenticated user
-- owns, or you can retrieve one or more groups by their unique IDs.
--
-- /See:/ 'groupsList'' smart constructor.
data GroupsList' = GroupsList'
    { _glQuotaUser              :: !(Maybe Text)
    , _glPrettyPrint            :: !Bool
    , _glMine                   :: !(Maybe Bool)
    , _glUserIP                 :: !(Maybe Text)
    , _glOnBehalfOfContentOwner :: !(Maybe Text)
    , _glKey                    :: !(Maybe Key)
    , _glId                     :: !(Maybe Text)
    , _glOAuthToken             :: !(Maybe OAuthToken)
    , _glFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glQuotaUser'
--
-- * 'glPrettyPrint'
--
-- * 'glMine'
--
-- * 'glUserIP'
--
-- * 'glOnBehalfOfContentOwner'
--
-- * 'glKey'
--
-- * 'glId'
--
-- * 'glOAuthToken'
--
-- * 'glFields'
groupsList'
    :: GroupsList'
groupsList' =
    GroupsList'
    { _glQuotaUser = Nothing
    , _glPrettyPrint = True
    , _glMine = Nothing
    , _glUserIP = Nothing
    , _glOnBehalfOfContentOwner = Nothing
    , _glKey = Nothing
    , _glId = Nothing
    , _glOAuthToken = Nothing
    , _glFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
glQuotaUser :: Lens' GroupsList' (Maybe Text)
glQuotaUser
  = lens _glQuotaUser (\ s a -> s{_glQuotaUser = a})

-- | Returns response with indentations and line breaks.
glPrettyPrint :: Lens' GroupsList' Bool
glPrettyPrint
  = lens _glPrettyPrint
      (\ s a -> s{_glPrettyPrint = a})

-- | Set this parameter\'s value to true to instruct the API to only return
-- groups owned by the authenticated user.
glMine :: Lens' GroupsList' (Maybe Bool)
glMine = lens _glMine (\ s a -> s{_glMine = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
glUserIP :: Lens' GroupsList' (Maybe Text)
glUserIP = lens _glUserIP (\ s a -> s{_glUserIP = a})

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
glOnBehalfOfContentOwner :: Lens' GroupsList' (Maybe Text)
glOnBehalfOfContentOwner
  = lens _glOnBehalfOfContentOwner
      (\ s a -> s{_glOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
glKey :: Lens' GroupsList' (Maybe Key)
glKey = lens _glKey (\ s a -> s{_glKey = a})

-- | The id parameter specifies a comma-separated list of the YouTube group
-- ID(s) for the resource(s) that are being retrieved. In a group resource,
-- the id property specifies the group\'s YouTube group ID.
glId :: Lens' GroupsList' (Maybe Text)
glId = lens _glId (\ s a -> s{_glId = a})

-- | OAuth 2.0 token for the current user.
glOAuthToken :: Lens' GroupsList' (Maybe OAuthToken)
glOAuthToken
  = lens _glOAuthToken (\ s a -> s{_glOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
glFields :: Lens' GroupsList' (Maybe Text)
glFields = lens _glFields (\ s a -> s{_glFields = a})

instance GoogleAuth GroupsList' where
        authKey = glKey . _Just
        authToken = glOAuthToken . _Just

instance GoogleRequest GroupsList' where
        type Rs GroupsList' = GroupListResponse
        request = requestWithRoute defReq youTubeAnalyticsURL
        requestWithRoute r u GroupsList'{..}
          = go _glMine _glOnBehalfOfContentOwner _glId
              _glQuotaUser
              (Just _glPrettyPrint)
              _glUserIP
              _glFields
              _glKey
              _glOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy GroupsListResource)
                      r
                      u
