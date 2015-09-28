{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTubeAnalytics.GroupItems.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes an item from a group.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @youtubeAnalytics.groupItems.delete@.
module Network.Google.API.YouTubeAnalytics.GroupItems.Delete
    (
    -- * REST Resource
      GroupItemsDeleteAPI

    -- * Creating a Request
    , groupItemsDelete'
    , GroupItemsDelete'

    -- * Request Lenses
    , gidQuotaUser
    , gidPrettyPrint
    , gidUserIp
    , gidOnBehalfOfContentOwner
    , gidKey
    , gidId
    , gidOauthToken
    , gidFields
    , gidAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for youtubeAnalytics.groupItems.delete which the
-- 'GroupItemsDelete'' request conforms to.
type GroupItemsDeleteAPI =
     "groupItems" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "key" Text :>
                 QueryParam "id" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Removes an item from a group.
--
-- /See:/ 'groupItemsDelete'' smart constructor.
data GroupItemsDelete' = GroupItemsDelete'
    { _gidQuotaUser              :: !(Maybe Text)
    , _gidPrettyPrint            :: !Bool
    , _gidUserIp                 :: !(Maybe Text)
    , _gidOnBehalfOfContentOwner :: !(Maybe Text)
    , _gidKey                    :: !(Maybe Text)
    , _gidId                     :: !Text
    , _gidOauthToken             :: !(Maybe Text)
    , _gidFields                 :: !(Maybe Text)
    , _gidAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItemsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gidQuotaUser'
--
-- * 'gidPrettyPrint'
--
-- * 'gidUserIp'
--
-- * 'gidOnBehalfOfContentOwner'
--
-- * 'gidKey'
--
-- * 'gidId'
--
-- * 'gidOauthToken'
--
-- * 'gidFields'
--
-- * 'gidAlt'
groupItemsDelete'
    :: Text -- ^ 'id'
    -> GroupItemsDelete'
groupItemsDelete' pGidId_ =
    GroupItemsDelete'
    { _gidQuotaUser = Nothing
    , _gidPrettyPrint = True
    , _gidUserIp = Nothing
    , _gidOnBehalfOfContentOwner = Nothing
    , _gidKey = Nothing
    , _gidId = pGidId_
    , _gidOauthToken = Nothing
    , _gidFields = Nothing
    , _gidAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gidQuotaUser :: Lens' GroupItemsDelete' (Maybe Text)
gidQuotaUser
  = lens _gidQuotaUser (\ s a -> s{_gidQuotaUser = a})

-- | Returns response with indentations and line breaks.
gidPrettyPrint :: Lens' GroupItemsDelete' Bool
gidPrettyPrint
  = lens _gidPrettyPrint
      (\ s a -> s{_gidPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gidUserIp :: Lens' GroupItemsDelete' (Maybe Text)
gidUserIp
  = lens _gidUserIp (\ s a -> s{_gidUserIp = a})

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
gidOnBehalfOfContentOwner :: Lens' GroupItemsDelete' (Maybe Text)
gidOnBehalfOfContentOwner
  = lens _gidOnBehalfOfContentOwner
      (\ s a -> s{_gidOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gidKey :: Lens' GroupItemsDelete' (Maybe Text)
gidKey = lens _gidKey (\ s a -> s{_gidKey = a})

-- | The id parameter specifies the YouTube group item ID for the group that
-- is being deleted.
gidId :: Lens' GroupItemsDelete' Text
gidId = lens _gidId (\ s a -> s{_gidId = a})

-- | OAuth 2.0 token for the current user.
gidOauthToken :: Lens' GroupItemsDelete' (Maybe Text)
gidOauthToken
  = lens _gidOauthToken
      (\ s a -> s{_gidOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gidFields :: Lens' GroupItemsDelete' (Maybe Text)
gidFields
  = lens _gidFields (\ s a -> s{_gidFields = a})

-- | Data format for the response.
gidAlt :: Lens' GroupItemsDelete' Alt
gidAlt = lens _gidAlt (\ s a -> s{_gidAlt = a})

instance GoogleRequest GroupItemsDelete' where
        type Rs GroupItemsDelete' = ()
        request = requestWithRoute defReq youTubeAnalyticsURL
        requestWithRoute r u GroupItemsDelete'{..}
          = go _gidQuotaUser (Just _gidPrettyPrint) _gidUserIp
              _gidOnBehalfOfContentOwner
              _gidKey
              (Just _gidId)
              _gidOauthToken
              _gidFields
              (Just _gidAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupItemsDeleteAPI)
                      r
                      u
