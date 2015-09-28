{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Captions.List
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
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.captions.list@.
module Network.Google.API.YouTube.Captions.List
    (
    -- * REST Resource
      CaptionsListAPI

    -- * Creating a Request
    , captionsList'
    , CaptionsList'

    -- * Request Lenses
    , cOnBehalfOf
    , cQuotaUser
    , cPart
    , cPrettyPrint
    , cUserIp
    , cOnBehalfOfContentOwner
    , cVideoId
    , cKey
    , cId
    , cOauthToken
    , cFields
    , cAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.captions.list which the
-- 'CaptionsList'' request conforms to.
type CaptionsListAPI =
     "captions" :>
       QueryParam "onBehalfOf" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "part" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "onBehalfOfContentOwner" Text :>
                   QueryParam "videoId" Text :>
                     QueryParam "key" Text :>
                       QueryParam "id" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] CaptionListResponse

-- | Returns a list of caption tracks that are associated with a specified
-- video. Note that the API response does not contain the actual captions
-- and that the captions.download method provides the ability to retrieve a
-- caption track.
--
-- /See:/ 'captionsList'' smart constructor.
data CaptionsList' = CaptionsList'
    { _cOnBehalfOf             :: !(Maybe Text)
    , _cQuotaUser              :: !(Maybe Text)
    , _cPart                   :: !Text
    , _cPrettyPrint            :: !Bool
    , _cUserIp                 :: !(Maybe Text)
    , _cOnBehalfOfContentOwner :: !(Maybe Text)
    , _cVideoId                :: !Text
    , _cKey                    :: !(Maybe Text)
    , _cId                     :: !(Maybe Text)
    , _cOauthToken             :: !(Maybe Text)
    , _cFields                 :: !(Maybe Text)
    , _cAlt                    :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cOnBehalfOf'
--
-- * 'cQuotaUser'
--
-- * 'cPart'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIp'
--
-- * 'cOnBehalfOfContentOwner'
--
-- * 'cVideoId'
--
-- * 'cKey'
--
-- * 'cId'
--
-- * 'cOauthToken'
--
-- * 'cFields'
--
-- * 'cAlt'
captionsList'
    :: Text -- ^ 'part'
    -> Text -- ^ 'videoId'
    -> CaptionsList'
captionsList' pCPart_ pCVideoId_ =
    CaptionsList'
    { _cOnBehalfOf = Nothing
    , _cQuotaUser = Nothing
    , _cPart = pCPart_
    , _cPrettyPrint = True
    , _cUserIp = Nothing
    , _cOnBehalfOfContentOwner = Nothing
    , _cVideoId = pCVideoId_
    , _cKey = Nothing
    , _cId = Nothing
    , _cOauthToken = Nothing
    , _cFields = Nothing
    , _cAlt = JSON
    }

-- | ID of the Google+ Page for the channel that the request is on behalf of.
cOnBehalfOf :: Lens' CaptionsList' (Maybe Text)
cOnBehalfOf
  = lens _cOnBehalfOf (\ s a -> s{_cOnBehalfOf = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CaptionsList' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- caption resource parts that the API response will include. The part
-- names that you can include in the parameter value are id and snippet.
cPart :: Lens' CaptionsList' Text
cPart = lens _cPart (\ s a -> s{_cPart = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CaptionsList' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' CaptionsList' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

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
cOnBehalfOfContentOwner :: Lens' CaptionsList' (Maybe Text)
cOnBehalfOfContentOwner
  = lens _cOnBehalfOfContentOwner
      (\ s a -> s{_cOnBehalfOfContentOwner = a})

-- | The videoId parameter specifies the YouTube video ID of the video for
-- which the API should return caption tracks.
cVideoId :: Lens' CaptionsList' Text
cVideoId = lens _cVideoId (\ s a -> s{_cVideoId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CaptionsList' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | The id parameter specifies a comma-separated list of IDs that identify
-- the caption resources that should be retrieved. Each ID must identify a
-- caption track associated with the specified video.
cId :: Lens' CaptionsList' (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' CaptionsList' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CaptionsList' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' CaptionsList' Alt
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest CaptionsList' where
        type Rs CaptionsList' = CaptionListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CaptionsList'{..}
          = go _cOnBehalfOf _cQuotaUser (Just _cPart)
              (Just _cPrettyPrint)
              _cUserIp
              _cOnBehalfOfContentOwner
              (Just _cVideoId)
              _cKey
              _cId
              _cOauthToken
              _cFields
              (Just _cAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CaptionsListAPI) r
                      u
