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
module Network.Google.Resource.YouTube.Captions.List
    (
    -- * REST Resource
      CaptionsListResource

    -- * Creating a Request
    , captionsList'
    , CaptionsList'

    -- * Request Lenses
    , cllOnBehalfOf
    , cllQuotaUser
    , cllPart
    , cllPrettyPrint
    , cllUserIP
    , cllOnBehalfOfContentOwner
    , cllVideoId
    , cllKey
    , cllId
    , cllOAuthToken
    , cllFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCaptionsList@ which the
-- 'CaptionsList'' request conforms to.
type CaptionsListResource =
     "captions" :>
       QueryParam "part" Text :>
         QueryParam "videoId" Text :>
           QueryParam "onBehalfOf" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "id" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] CaptionListResponse

-- | Returns a list of caption tracks that are associated with a specified
-- video. Note that the API response does not contain the actual captions
-- and that the captions.download method provides the ability to retrieve a
-- caption track.
--
-- /See:/ 'captionsList'' smart constructor.
data CaptionsList' = CaptionsList'
    { _cllOnBehalfOf             :: !(Maybe Text)
    , _cllQuotaUser              :: !(Maybe Text)
    , _cllPart                   :: !Text
    , _cllPrettyPrint            :: !Bool
    , _cllUserIP                 :: !(Maybe Text)
    , _cllOnBehalfOfContentOwner :: !(Maybe Text)
    , _cllVideoId                :: !Text
    , _cllKey                    :: !(Maybe AuthKey)
    , _cllId                     :: !(Maybe Text)
    , _cllOAuthToken             :: !(Maybe OAuthToken)
    , _cllFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllOnBehalfOf'
--
-- * 'cllQuotaUser'
--
-- * 'cllPart'
--
-- * 'cllPrettyPrint'
--
-- * 'cllUserIP'
--
-- * 'cllOnBehalfOfContentOwner'
--
-- * 'cllVideoId'
--
-- * 'cllKey'
--
-- * 'cllId'
--
-- * 'cllOAuthToken'
--
-- * 'cllFields'
captionsList'
    :: Text -- ^ 'part'
    -> Text -- ^ 'videoId'
    -> CaptionsList'
captionsList' pCllPart_ pCllVideoId_ =
    CaptionsList'
    { _cllOnBehalfOf = Nothing
    , _cllQuotaUser = Nothing
    , _cllPart = pCllPart_
    , _cllPrettyPrint = True
    , _cllUserIP = Nothing
    , _cllOnBehalfOfContentOwner = Nothing
    , _cllVideoId = pCllVideoId_
    , _cllKey = Nothing
    , _cllId = Nothing
    , _cllOAuthToken = Nothing
    , _cllFields = Nothing
    }

-- | ID of the Google+ Page for the channel that the request is on behalf of.
cllOnBehalfOf :: Lens' CaptionsList' (Maybe Text)
cllOnBehalfOf
  = lens _cllOnBehalfOf
      (\ s a -> s{_cllOnBehalfOf = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cllQuotaUser :: Lens' CaptionsList' (Maybe Text)
cllQuotaUser
  = lens _cllQuotaUser (\ s a -> s{_cllQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- caption resource parts that the API response will include. The part
-- names that you can include in the parameter value are id and snippet.
cllPart :: Lens' CaptionsList' Text
cllPart = lens _cllPart (\ s a -> s{_cllPart = a})

-- | Returns response with indentations and line breaks.
cllPrettyPrint :: Lens' CaptionsList' Bool
cllPrettyPrint
  = lens _cllPrettyPrint
      (\ s a -> s{_cllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cllUserIP :: Lens' CaptionsList' (Maybe Text)
cllUserIP
  = lens _cllUserIP (\ s a -> s{_cllUserIP = a})

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
cllOnBehalfOfContentOwner :: Lens' CaptionsList' (Maybe Text)
cllOnBehalfOfContentOwner
  = lens _cllOnBehalfOfContentOwner
      (\ s a -> s{_cllOnBehalfOfContentOwner = a})

-- | The videoId parameter specifies the YouTube video ID of the video for
-- which the API should return caption tracks.
cllVideoId :: Lens' CaptionsList' Text
cllVideoId
  = lens _cllVideoId (\ s a -> s{_cllVideoId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cllKey :: Lens' CaptionsList' (Maybe AuthKey)
cllKey = lens _cllKey (\ s a -> s{_cllKey = a})

-- | The id parameter specifies a comma-separated list of IDs that identify
-- the caption resources that should be retrieved. Each ID must identify a
-- caption track associated with the specified video.
cllId :: Lens' CaptionsList' (Maybe Text)
cllId = lens _cllId (\ s a -> s{_cllId = a})

-- | OAuth 2.0 token for the current user.
cllOAuthToken :: Lens' CaptionsList' (Maybe OAuthToken)
cllOAuthToken
  = lens _cllOAuthToken
      (\ s a -> s{_cllOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cllFields :: Lens' CaptionsList' (Maybe Text)
cllFields
  = lens _cllFields (\ s a -> s{_cllFields = a})

instance GoogleAuth CaptionsList' where
        _AuthKey = cllKey . _Just
        _AuthToken = cllOAuthToken . _Just

instance GoogleRequest CaptionsList' where
        type Rs CaptionsList' = CaptionListResponse
        request = requestWith youTubeRequest
        requestWith rq CaptionsList'{..}
          = go (Just _cllPart) (Just _cllVideoId)
              _cllOnBehalfOf
              _cllOnBehalfOfContentOwner
              _cllId
              _cllQuotaUser
              (Just _cllPrettyPrint)
              _cllUserIP
              _cllFields
              _cllKey
              _cllOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CaptionsListResource)
                      rq
