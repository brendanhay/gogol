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
-- Module      : Network.Google.Resource.YouTube.PlayLists.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a collection of playlists that match the API request parameters.
-- For example, you can retrieve all playlists that the authenticated user
-- owns, or you can retrieve one or more playlists by their unique IDs.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubePlayListsList@.
module Network.Google.Resource.YouTube.PlayLists.List
    (
    -- * REST Resource
      PlayListsListResource

    -- * Creating a Request
    , playListsList'
    , PlayListsList'

    -- * Request Lenses
    , pllQuotaUser
    , pllPart
    , pllPrettyPrint
    , pllMine
    , pllUserIP
    , pllChannelId
    , pllHl
    , pllOnBehalfOfContentOwner
    , pllKey
    , pllOnBehalfOfContentOwnerChannel
    , pllId
    , pllPageToken
    , pllOAuthToken
    , pllMaxResults
    , pllFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubePlayListsList@ which the
-- 'PlayListsList'' request conforms to.
type PlayListsListResource =
     "playlists" :>
       QueryParam "part" Text :>
         QueryParam "mine" Bool :>
           QueryParam "channelId" Text :>
             QueryParam "hl" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "onBehalfOfContentOwnerChannel" Text :>
                   QueryParam "id" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] PlayListListResponse

-- | Returns a collection of playlists that match the API request parameters.
-- For example, you can retrieve all playlists that the authenticated user
-- owns, or you can retrieve one or more playlists by their unique IDs.
--
-- /See:/ 'playListsList'' smart constructor.
data PlayListsList' = PlayListsList'
    { _pllQuotaUser                     :: !(Maybe Text)
    , _pllPart                          :: !Text
    , _pllPrettyPrint                   :: !Bool
    , _pllMine                          :: !(Maybe Bool)
    , _pllUserIP                        :: !(Maybe Text)
    , _pllChannelId                     :: !(Maybe Text)
    , _pllHl                            :: !(Maybe Text)
    , _pllOnBehalfOfContentOwner        :: !(Maybe Text)
    , _pllKey                           :: !(Maybe Key)
    , _pllOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _pllId                            :: !(Maybe Text)
    , _pllPageToken                     :: !(Maybe Text)
    , _pllOAuthToken                    :: !(Maybe OAuthToken)
    , _pllMaxResults                    :: !Word32
    , _pllFields                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllQuotaUser'
--
-- * 'pllPart'
--
-- * 'pllPrettyPrint'
--
-- * 'pllMine'
--
-- * 'pllUserIP'
--
-- * 'pllChannelId'
--
-- * 'pllHl'
--
-- * 'pllOnBehalfOfContentOwner'
--
-- * 'pllKey'
--
-- * 'pllOnBehalfOfContentOwnerChannel'
--
-- * 'pllId'
--
-- * 'pllPageToken'
--
-- * 'pllOAuthToken'
--
-- * 'pllMaxResults'
--
-- * 'pllFields'
playListsList'
    :: Text -- ^ 'part'
    -> PlayListsList'
playListsList' pPllPart_ =
    PlayListsList'
    { _pllQuotaUser = Nothing
    , _pllPart = pPllPart_
    , _pllPrettyPrint = True
    , _pllMine = Nothing
    , _pllUserIP = Nothing
    , _pllChannelId = Nothing
    , _pllHl = Nothing
    , _pllOnBehalfOfContentOwner = Nothing
    , _pllKey = Nothing
    , _pllOnBehalfOfContentOwnerChannel = Nothing
    , _pllId = Nothing
    , _pllPageToken = Nothing
    , _pllOAuthToken = Nothing
    , _pllMaxResults = 5
    , _pllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pllQuotaUser :: Lens' PlayListsList' (Maybe Text)
pllQuotaUser
  = lens _pllQuotaUser (\ s a -> s{_pllQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- playlist resource properties that the API response will include. If the
-- parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- playlist resource, the snippet property contains properties like author,
-- title, description, tags, and timeCreated. As such, if you set
-- part=snippet, the API response will contain all of those properties.
pllPart :: Lens' PlayListsList' Text
pllPart = lens _pllPart (\ s a -> s{_pllPart = a})

-- | Returns response with indentations and line breaks.
pllPrettyPrint :: Lens' PlayListsList' Bool
pllPrettyPrint
  = lens _pllPrettyPrint
      (\ s a -> s{_pllPrettyPrint = a})

-- | Set this parameter\'s value to true to instruct the API to only return
-- playlists owned by the authenticated user.
pllMine :: Lens' PlayListsList' (Maybe Bool)
pllMine = lens _pllMine (\ s a -> s{_pllMine = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pllUserIP :: Lens' PlayListsList' (Maybe Text)
pllUserIP
  = lens _pllUserIP (\ s a -> s{_pllUserIP = a})

-- | This value indicates that the API should only return the specified
-- channel\'s playlists.
pllChannelId :: Lens' PlayListsList' (Maybe Text)
pllChannelId
  = lens _pllChannelId (\ s a -> s{_pllChannelId = a})

-- | The hl parameter should be used for filter out the properties that are
-- not in the given language. Used for the snippet part.
pllHl :: Lens' PlayListsList' (Maybe Text)
pllHl = lens _pllHl (\ s a -> s{_pllHl = a})

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
pllOnBehalfOfContentOwner :: Lens' PlayListsList' (Maybe Text)
pllOnBehalfOfContentOwner
  = lens _pllOnBehalfOfContentOwner
      (\ s a -> s{_pllOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pllKey :: Lens' PlayListsList' (Maybe Key)
pllKey = lens _pllKey (\ s a -> s{_pllKey = a})

-- | This parameter can only be used in a properly authorized request. Note:
-- This parameter is intended exclusively for YouTube content partners. The
-- onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
-- of the channel to which a video is being added. This parameter is
-- required when a request specifies a value for the onBehalfOfContentOwner
-- parameter, and it can only be used in conjunction with that parameter.
-- In addition, the request must be authorized using a CMS account that is
-- linked to the content owner that the onBehalfOfContentOwner parameter
-- specifies. Finally, the channel that the onBehalfOfContentOwnerChannel
-- parameter value specifies must be linked to the content owner that the
-- onBehalfOfContentOwner parameter specifies. This parameter is intended
-- for YouTube content partners that own and manage many different YouTube
-- channels. It allows content owners to authenticate once and perform
-- actions on behalf of the channel specified in the parameter value,
-- without having to provide authentication credentials for each separate
-- channel.
pllOnBehalfOfContentOwnerChannel :: Lens' PlayListsList' (Maybe Text)
pllOnBehalfOfContentOwnerChannel
  = lens _pllOnBehalfOfContentOwnerChannel
      (\ s a -> s{_pllOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies a comma-separated list of the YouTube
-- playlist ID(s) for the resource(s) that are being retrieved. In a
-- playlist resource, the id property specifies the playlist\'s YouTube
-- playlist ID.
pllId :: Lens' PlayListsList' (Maybe Text)
pllId = lens _pllId (\ s a -> s{_pllId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
pllPageToken :: Lens' PlayListsList' (Maybe Text)
pllPageToken
  = lens _pllPageToken (\ s a -> s{_pllPageToken = a})

-- | OAuth 2.0 token for the current user.
pllOAuthToken :: Lens' PlayListsList' (Maybe OAuthToken)
pllOAuthToken
  = lens _pllOAuthToken
      (\ s a -> s{_pllOAuthToken = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
pllMaxResults :: Lens' PlayListsList' Word32
pllMaxResults
  = lens _pllMaxResults
      (\ s a -> s{_pllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
pllFields :: Lens' PlayListsList' (Maybe Text)
pllFields
  = lens _pllFields (\ s a -> s{_pllFields = a})

instance GoogleAuth PlayListsList' where
        authKey = pllKey . _Just
        authToken = pllOAuthToken . _Just

instance GoogleRequest PlayListsList' where
        type Rs PlayListsList' = PlayListListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u PlayListsList'{..}
          = go (Just _pllPart) _pllMine _pllChannelId _pllHl
              _pllOnBehalfOfContentOwner
              _pllOnBehalfOfContentOwnerChannel
              _pllId
              _pllPageToken
              (Just _pllMaxResults)
              _pllQuotaUser
              (Just _pllPrettyPrint)
              _pllUserIP
              _pllFields
              _pllKey
              _pllOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlayListsListResource)
                      r
                      u
