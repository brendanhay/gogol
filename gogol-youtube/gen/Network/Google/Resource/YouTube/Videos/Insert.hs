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
-- Module      : Network.Google.Resource.YouTube.Videos.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Uploads a video to YouTube and optionally sets the video\'s metadata.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeVideosInsert@.
module Network.Google.Resource.YouTube.Videos.Insert
    (
    -- * REST Resource
      VideosInsertResource

    -- * Creating a Request
    , videosInsert'
    , VideosInsert'

    -- * Request Lenses
    , viQuotaUser
    , viPart
    , viPrettyPrint
    , viStabilize
    , viUserIP
    , viPayload
    , viMedia
    , viOnBehalfOfContentOwner
    , viKey
    , viOnBehalfOfContentOwnerChannel
    , viNotifySubscribers
    , viAutoLevels
    , viOAuthToken
    , viFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeVideosInsert@ which the
-- 'VideosInsert'' request conforms to.
type VideosInsertResource =
     "videos" :>
       QueryParam "part" Text :>
         QueryParam "stabilize" Bool :>
           QueryParam "onBehalfOfContentOwner" Text :>
             QueryParam "onBehalfOfContentOwnerChannel" Text :>
               QueryParam "notifySubscribers" Bool :>
                 QueryParam "autoLevels" Bool :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 MultipartRelated '[JSON] Video Body :>
                                   Post '[JSON] Video

-- | Uploads a video to YouTube and optionally sets the video\'s metadata.
--
-- /See:/ 'videosInsert'' smart constructor.
data VideosInsert' = VideosInsert'
    { _viQuotaUser                     :: !(Maybe Text)
    , _viPart                          :: !Text
    , _viPrettyPrint                   :: !Bool
    , _viStabilize                     :: !(Maybe Bool)
    , _viUserIP                        :: !(Maybe Text)
    , _viPayload                       :: !Video
    , _viMedia                         :: !Body
    , _viOnBehalfOfContentOwner        :: !(Maybe Text)
    , _viKey                           :: !(Maybe AuthKey)
    , _viOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _viNotifySubscribers             :: !Bool
    , _viAutoLevels                    :: !(Maybe Bool)
    , _viOAuthToken                    :: !(Maybe OAuthToken)
    , _viFields                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideosInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'viQuotaUser'
--
-- * 'viPart'
--
-- * 'viPrettyPrint'
--
-- * 'viStabilize'
--
-- * 'viUserIP'
--
-- * 'viPayload'
--
-- * 'viMedia'
--
-- * 'viOnBehalfOfContentOwner'
--
-- * 'viKey'
--
-- * 'viOnBehalfOfContentOwnerChannel'
--
-- * 'viNotifySubscribers'
--
-- * 'viAutoLevels'
--
-- * 'viOAuthToken'
--
-- * 'viFields'
videosInsert'
    :: Text -- ^ 'part'
    -> Video -- ^ 'payload'
    -> Body -- ^ 'media'
    -> VideosInsert'
videosInsert' pViPart_ pViPayload_ pViMedia_ =
    VideosInsert'
    { _viQuotaUser = Nothing
    , _viPart = pViPart_
    , _viPrettyPrint = True
    , _viStabilize = Nothing
    , _viUserIP = Nothing
    , _viPayload = pViPayload_
    , _viMedia = pViMedia_
    , _viOnBehalfOfContentOwner = Nothing
    , _viKey = Nothing
    , _viOnBehalfOfContentOwnerChannel = Nothing
    , _viNotifySubscribers = True
    , _viAutoLevels = Nothing
    , _viOAuthToken = Nothing
    , _viFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
viQuotaUser :: Lens' VideosInsert' (Maybe Text)
viQuotaUser
  = lens _viQuotaUser (\ s a -> s{_viQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. Note that not all parts
-- contain properties that can be set when inserting or updating a video.
-- For example, the statistics object encapsulates statistics that YouTube
-- calculates for a video and does not contain values that you can set or
-- modify. If the parameter value specifies a part that does not contain
-- mutable values, that part will still be included in the API response.
viPart :: Lens' VideosInsert' Text
viPart = lens _viPart (\ s a -> s{_viPart = a})

-- | Returns response with indentations and line breaks.
viPrettyPrint :: Lens' VideosInsert' Bool
viPrettyPrint
  = lens _viPrettyPrint
      (\ s a -> s{_viPrettyPrint = a})

-- | The stabilize parameter indicates whether YouTube should adjust the
-- video to remove shaky camera motions.
viStabilize :: Lens' VideosInsert' (Maybe Bool)
viStabilize
  = lens _viStabilize (\ s a -> s{_viStabilize = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
viUserIP :: Lens' VideosInsert' (Maybe Text)
viUserIP = lens _viUserIP (\ s a -> s{_viUserIP = a})

-- | Multipart request metadata.
viPayload :: Lens' VideosInsert' Video
viPayload
  = lens _viPayload (\ s a -> s{_viPayload = a})

viMedia :: Lens' VideosInsert' Body
viMedia = lens _viMedia (\ s a -> s{_viMedia = a})

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
viOnBehalfOfContentOwner :: Lens' VideosInsert' (Maybe Text)
viOnBehalfOfContentOwner
  = lens _viOnBehalfOfContentOwner
      (\ s a -> s{_viOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
viKey :: Lens' VideosInsert' (Maybe AuthKey)
viKey = lens _viKey (\ s a -> s{_viKey = a})

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
viOnBehalfOfContentOwnerChannel :: Lens' VideosInsert' (Maybe Text)
viOnBehalfOfContentOwnerChannel
  = lens _viOnBehalfOfContentOwnerChannel
      (\ s a -> s{_viOnBehalfOfContentOwnerChannel = a})

-- | The notifySubscribers parameter indicates whether YouTube should send a
-- notification about the new video to users who subscribe to the video\'s
-- channel. A parameter value of True indicates that subscribers will be
-- notified of newly uploaded videos. However, a channel owner who is
-- uploading many videos might prefer to set the value to False to avoid
-- sending a notification about each new video to the channel\'s
-- subscribers.
viNotifySubscribers :: Lens' VideosInsert' Bool
viNotifySubscribers
  = lens _viNotifySubscribers
      (\ s a -> s{_viNotifySubscribers = a})

-- | The autoLevels parameter indicates whether YouTube should automatically
-- enhance the video\'s lighting and color.
viAutoLevels :: Lens' VideosInsert' (Maybe Bool)
viAutoLevels
  = lens _viAutoLevels (\ s a -> s{_viAutoLevels = a})

-- | OAuth 2.0 token for the current user.
viOAuthToken :: Lens' VideosInsert' (Maybe OAuthToken)
viOAuthToken
  = lens _viOAuthToken (\ s a -> s{_viOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
viFields :: Lens' VideosInsert' (Maybe Text)
viFields = lens _viFields (\ s a -> s{_viFields = a})

instance GoogleAuth VideosInsert' where
        authKey = viKey . _Just
        authToken = viOAuthToken . _Just

instance GoogleRequest VideosInsert' where
        type Rs VideosInsert' = Video
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u VideosInsert'{..}
          = go (Just _viPart) _viStabilize
              _viOnBehalfOfContentOwner
              _viOnBehalfOfContentOwnerChannel
              (Just _viNotifySubscribers)
              _viAutoLevels
              _viQuotaUser
              (Just _viPrettyPrint)
              _viUserIP
              _viFields
              _viKey
              _viOAuthToken
              (Just AltJSON)
              _viPayload
              _viMedia
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VideosInsertResource)
                      r
                      u
