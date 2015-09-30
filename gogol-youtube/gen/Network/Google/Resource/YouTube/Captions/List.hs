{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Captions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of caption tracks that are associated with a specified
-- video. Note that the API response does not contain the actual captions
-- and that the captions.download method provides the ability to retrieve a
-- caption track.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCaptionsList@.
module YouTube.Captions.List
    (
    -- * REST Resource
      CaptionsListAPI

    -- * Creating a Request
    , captionsList
    , CaptionsList

    -- * Request Lenses
    , clOnBehalfOf
    , clQuotaUser
    , clPart
    , clPrettyPrint
    , clUserIp
    , clOnBehalfOfContentOwner
    , clVideoId
    , clKey
    , clId
    , clOauthToken
    , clFields
    , clAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCaptionsList@ which the
-- 'CaptionsList' request conforms to.
type CaptionsListAPI =
     "captions" :>
       QueryParam "onBehalfOf" Text :>
         QueryParam "part" Text :>
           QueryParam "onBehalfOfContentOwner" Text :>
             QueryParam "videoId" Text :>
               QueryParam "id" Text :>
                 Get '[JSON] CaptionListResponse

-- | Returns a list of caption tracks that are associated with a specified
-- video. Note that the API response does not contain the actual captions
-- and that the captions.download method provides the ability to retrieve a
-- caption track.
--
-- /See:/ 'captionsList' smart constructor.
data CaptionsList = CaptionsList
    { _clOnBehalfOf             :: !(Maybe Text)
    , _clQuotaUser              :: !(Maybe Text)
    , _clPart                   :: !Text
    , _clPrettyPrint            :: !Bool
    , _clUserIp                 :: !(Maybe Text)
    , _clOnBehalfOfContentOwner :: !(Maybe Text)
    , _clVideoId                :: !Text
    , _clKey                    :: !(Maybe Text)
    , _clId                     :: !(Maybe Text)
    , _clOauthToken             :: !(Maybe Text)
    , _clFields                 :: !(Maybe Text)
    , _clAlt                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clOnBehalfOf'
--
-- * 'clQuotaUser'
--
-- * 'clPart'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIp'
--
-- * 'clOnBehalfOfContentOwner'
--
-- * 'clVideoId'
--
-- * 'clKey'
--
-- * 'clId'
--
-- * 'clOauthToken'
--
-- * 'clFields'
--
-- * 'clAlt'
captionsList
    :: Text -- ^ 'part'
    -> Text -- ^ 'videoId'
    -> CaptionsList
captionsList pClPart_ pClVideoId_ =
    CaptionsList
    { _clOnBehalfOf = Nothing
    , _clQuotaUser = Nothing
    , _clPart = pClPart_
    , _clPrettyPrint = True
    , _clUserIp = Nothing
    , _clOnBehalfOfContentOwner = Nothing
    , _clVideoId = pClVideoId_
    , _clKey = Nothing
    , _clId = Nothing
    , _clOauthToken = Nothing
    , _clFields = Nothing
    , _clAlt = "json"
    }

-- | ID of the Google+ Page for the channel that the request is on behalf of.
clOnBehalfOf :: Lens' CaptionsList' (Maybe Text)
clOnBehalfOf
  = lens _clOnBehalfOf (\ s a -> s{_clOnBehalfOf = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CaptionsList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- caption resource parts that the API response will include. The part
-- names that you can include in the parameter value are id and snippet.
clPart :: Lens' CaptionsList' Text
clPart = lens _clPart (\ s a -> s{_clPart = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CaptionsList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' CaptionsList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
clOnBehalfOfContentOwner :: Lens' CaptionsList' (Maybe Text)
clOnBehalfOfContentOwner
  = lens _clOnBehalfOfContentOwner
      (\ s a -> s{_clOnBehalfOfContentOwner = a})

-- | The videoId parameter specifies the YouTube video ID of the video for
-- which the API should return caption tracks.
clVideoId :: Lens' CaptionsList' Text
clVideoId
  = lens _clVideoId (\ s a -> s{_clVideoId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CaptionsList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | The id parameter specifies a comma-separated list of IDs that identify
-- the caption resources that should be retrieved. Each ID must identify a
-- caption track associated with the specified video.
clId :: Lens' CaptionsList' (Maybe Text)
clId = lens _clId (\ s a -> s{_clId = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CaptionsList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CaptionsList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' CaptionsList' Text
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CaptionsList' where
        type Rs CaptionsList' = CaptionListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CaptionsList{..}
          = go _clOnBehalfOf _clQuotaUser (Just _clPart)
              _clPrettyPrint
              _clUserIp
              _clOnBehalfOfContentOwner
              (Just _clVideoId)
              _clKey
              _clId
              _clOauthToken
              _clFields
              _clAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CaptionsListAPI) r
                      u
