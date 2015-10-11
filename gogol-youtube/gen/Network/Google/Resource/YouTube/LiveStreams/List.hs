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
-- Module      : Network.Google.Resource.YouTube.LiveStreams.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of video streams that match the API request parameters.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeLiveStreamsList@.
module Network.Google.Resource.YouTube.LiveStreams.List
    (
    -- * REST Resource
      LiveStreamsListResource

    -- * Creating a Request
    , liveStreamsList'
    , LiveStreamsList'

    -- * Request Lenses
    , lslQuotaUser
    , lslPart
    , lslPrettyPrint
    , lslMine
    , lslUserIP
    , lslOnBehalfOfContentOwner
    , lslKey
    , lslOnBehalfOfContentOwnerChannel
    , lslId
    , lslPageToken
    , lslOAuthToken
    , lslMaxResults
    , lslFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeLiveStreamsList@ method which the
-- 'LiveStreamsList'' request conforms to.
type LiveStreamsListResource =
     "liveStreams" :>
       QueryParam "part" Text :>
         QueryParam "mine" Bool :>
           QueryParam "onBehalfOfContentOwner" Text :>
             QueryParam "onBehalfOfContentOwnerChannel" Text :>
               QueryParam "id" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               Header "Authorization" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] LiveStreamListResponse

-- | Returns a list of video streams that match the API request parameters.
--
-- /See:/ 'liveStreamsList'' smart constructor.
data LiveStreamsList' = LiveStreamsList'
    { _lslQuotaUser                     :: !(Maybe Text)
    , _lslPart                          :: !Text
    , _lslPrettyPrint                   :: !Bool
    , _lslMine                          :: !(Maybe Bool)
    , _lslUserIP                        :: !(Maybe Text)
    , _lslOnBehalfOfContentOwner        :: !(Maybe Text)
    , _lslKey                           :: !(Maybe AuthKey)
    , _lslOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lslId                            :: !(Maybe Text)
    , _lslPageToken                     :: !(Maybe Text)
    , _lslOAuthToken                    :: !(Maybe OAuthToken)
    , _lslMaxResults                    :: !Word32
    , _lslFields                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lslQuotaUser'
--
-- * 'lslPart'
--
-- * 'lslPrettyPrint'
--
-- * 'lslMine'
--
-- * 'lslUserIP'
--
-- * 'lslOnBehalfOfContentOwner'
--
-- * 'lslKey'
--
-- * 'lslOnBehalfOfContentOwnerChannel'
--
-- * 'lslId'
--
-- * 'lslPageToken'
--
-- * 'lslOAuthToken'
--
-- * 'lslMaxResults'
--
-- * 'lslFields'
liveStreamsList'
    :: Text -- ^ 'part'
    -> LiveStreamsList'
liveStreamsList' pLslPart_ =
    LiveStreamsList'
    { _lslQuotaUser = Nothing
    , _lslPart = pLslPart_
    , _lslPrettyPrint = True
    , _lslMine = Nothing
    , _lslUserIP = Nothing
    , _lslOnBehalfOfContentOwner = Nothing
    , _lslKey = Nothing
    , _lslOnBehalfOfContentOwnerChannel = Nothing
    , _lslId = Nothing
    , _lslPageToken = Nothing
    , _lslOAuthToken = Nothing
    , _lslMaxResults = 5
    , _lslFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lslQuotaUser :: Lens' LiveStreamsList' (Maybe Text)
lslQuotaUser
  = lens _lslQuotaUser (\ s a -> s{_lslQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- liveStream resource properties that the API response will include. The
-- part names that you can include in the parameter value are id, snippet,
-- cdn, and status.
lslPart :: Lens' LiveStreamsList' Text
lslPart = lens _lslPart (\ s a -> s{_lslPart = a})

-- | Returns response with indentations and line breaks.
lslPrettyPrint :: Lens' LiveStreamsList' Bool
lslPrettyPrint
  = lens _lslPrettyPrint
      (\ s a -> s{_lslPrettyPrint = a})

-- | The mine parameter can be used to instruct the API to only return
-- streams owned by the authenticated user. Set the parameter value to true
-- to only retrieve your own streams.
lslMine :: Lens' LiveStreamsList' (Maybe Bool)
lslMine = lens _lslMine (\ s a -> s{_lslMine = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lslUserIP :: Lens' LiveStreamsList' (Maybe Text)
lslUserIP
  = lens _lslUserIP (\ s a -> s{_lslUserIP = a})

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
lslOnBehalfOfContentOwner :: Lens' LiveStreamsList' (Maybe Text)
lslOnBehalfOfContentOwner
  = lens _lslOnBehalfOfContentOwner
      (\ s a -> s{_lslOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lslKey :: Lens' LiveStreamsList' (Maybe AuthKey)
lslKey = lens _lslKey (\ s a -> s{_lslKey = a})

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
lslOnBehalfOfContentOwnerChannel :: Lens' LiveStreamsList' (Maybe Text)
lslOnBehalfOfContentOwnerChannel
  = lens _lslOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lslOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies a comma-separated list of YouTube stream IDs
-- that identify the streams being retrieved. In a liveStream resource, the
-- id property specifies the stream\'s ID.
lslId :: Lens' LiveStreamsList' (Maybe Text)
lslId = lens _lslId (\ s a -> s{_lslId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
lslPageToken :: Lens' LiveStreamsList' (Maybe Text)
lslPageToken
  = lens _lslPageToken (\ s a -> s{_lslPageToken = a})

-- | OAuth 2.0 token for the current user.
lslOAuthToken :: Lens' LiveStreamsList' (Maybe OAuthToken)
lslOAuthToken
  = lens _lslOAuthToken
      (\ s a -> s{_lslOAuthToken = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
lslMaxResults :: Lens' LiveStreamsList' Word32
lslMaxResults
  = lens _lslMaxResults
      (\ s a -> s{_lslMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
lslFields :: Lens' LiveStreamsList' (Maybe Text)
lslFields
  = lens _lslFields (\ s a -> s{_lslFields = a})

instance GoogleAuth LiveStreamsList' where
        _AuthKey = lslKey . _Just
        _AuthToken = lslOAuthToken . _Just

instance GoogleRequest LiveStreamsList' where
        type Rs LiveStreamsList' = LiveStreamListResponse
        request = requestWith youTubeRequest
        requestWith rq LiveStreamsList'{..}
          = go (Just _lslPart) _lslMine
              _lslOnBehalfOfContentOwner
              _lslOnBehalfOfContentOwnerChannel
              _lslId
              _lslPageToken
              (Just _lslMaxResults)
              _lslQuotaUser
              (Just _lslPrettyPrint)
              _lslUserIP
              _lslFields
              _lslKey
              _lslOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy LiveStreamsListResource)
                      rq
