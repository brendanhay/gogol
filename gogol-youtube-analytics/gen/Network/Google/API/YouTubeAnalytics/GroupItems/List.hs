{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTubeAnalytics.GroupItems.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a collection of group items that match the API request
-- parameters.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @youtubeAnalytics.groupItems.list@.
module Network.Google.API.YouTubeAnalytics.GroupItems.List
    (
    -- * REST Resource
      GroupItemsListAPI

    -- * Creating a Request
    , groupItemsList'
    , GroupItemsList'

    -- * Request Lenses
    , gilQuotaUser
    , gilPrettyPrint
    , gilUserIp
    , gilOnBehalfOfContentOwner
    , gilKey
    , gilGroupId
    , gilOauthToken
    , gilFields
    , gilAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for youtubeAnalytics.groupItems.list which the
-- 'GroupItemsList'' request conforms to.
type GroupItemsListAPI =
     "groupItems" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "key" Text :>
                 QueryParam "groupId" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] GroupItemListResponse

-- | Returns a collection of group items that match the API request
-- parameters.
--
-- /See:/ 'groupItemsList'' smart constructor.
data GroupItemsList' = GroupItemsList'
    { _gilQuotaUser              :: !(Maybe Text)
    , _gilPrettyPrint            :: !Bool
    , _gilUserIp                 :: !(Maybe Text)
    , _gilOnBehalfOfContentOwner :: !(Maybe Text)
    , _gilKey                    :: !(Maybe Text)
    , _gilGroupId                :: !Text
    , _gilOauthToken             :: !(Maybe Text)
    , _gilFields                 :: !(Maybe Text)
    , _gilAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItemsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gilQuotaUser'
--
-- * 'gilPrettyPrint'
--
-- * 'gilUserIp'
--
-- * 'gilOnBehalfOfContentOwner'
--
-- * 'gilKey'
--
-- * 'gilGroupId'
--
-- * 'gilOauthToken'
--
-- * 'gilFields'
--
-- * 'gilAlt'
groupItemsList'
    :: Text -- ^ 'groupId'
    -> GroupItemsList'
groupItemsList' pGilGroupId_ =
    GroupItemsList'
    { _gilQuotaUser = Nothing
    , _gilPrettyPrint = True
    , _gilUserIp = Nothing
    , _gilOnBehalfOfContentOwner = Nothing
    , _gilKey = Nothing
    , _gilGroupId = pGilGroupId_
    , _gilOauthToken = Nothing
    , _gilFields = Nothing
    , _gilAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gilQuotaUser :: Lens' GroupItemsList' (Maybe Text)
gilQuotaUser
  = lens _gilQuotaUser (\ s a -> s{_gilQuotaUser = a})

-- | Returns response with indentations and line breaks.
gilPrettyPrint :: Lens' GroupItemsList' Bool
gilPrettyPrint
  = lens _gilPrettyPrint
      (\ s a -> s{_gilPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gilUserIp :: Lens' GroupItemsList' (Maybe Text)
gilUserIp
  = lens _gilUserIp (\ s a -> s{_gilUserIp = a})

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
gilOnBehalfOfContentOwner :: Lens' GroupItemsList' (Maybe Text)
gilOnBehalfOfContentOwner
  = lens _gilOnBehalfOfContentOwner
      (\ s a -> s{_gilOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gilKey :: Lens' GroupItemsList' (Maybe Text)
gilKey = lens _gilKey (\ s a -> s{_gilKey = a})

-- | The id parameter specifies the unique ID of the group for which you want
-- to retrieve group items.
gilGroupId :: Lens' GroupItemsList' Text
gilGroupId
  = lens _gilGroupId (\ s a -> s{_gilGroupId = a})

-- | OAuth 2.0 token for the current user.
gilOauthToken :: Lens' GroupItemsList' (Maybe Text)
gilOauthToken
  = lens _gilOauthToken
      (\ s a -> s{_gilOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gilFields :: Lens' GroupItemsList' (Maybe Text)
gilFields
  = lens _gilFields (\ s a -> s{_gilFields = a})

-- | Data format for the response.
gilAlt :: Lens' GroupItemsList' Alt
gilAlt = lens _gilAlt (\ s a -> s{_gilAlt = a})

instance GoogleRequest GroupItemsList' where
        type Rs GroupItemsList' = GroupItemListResponse
        request = requestWithRoute defReq youTubeAnalyticsURL
        requestWithRoute r u GroupItemsList'{..}
          = go _gilQuotaUser (Just _gilPrettyPrint) _gilUserIp
              _gilOnBehalfOfContentOwner
              _gilKey
              (Just _gilGroupId)
              _gilOauthToken
              _gilFields
              (Just _gilAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy GroupItemsListAPI)
                      r
                      u
