{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Captions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a caption track. When updating a caption track, you can change
-- the track\'s draft status, upload a new caption file for the track, or
-- both.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCaptionsUpdate@.
module YouTube.Captions.Update
    (
    -- * REST Resource
      CaptionsUpdateAPI

    -- * Creating a Request
    , captionsUpdate
    , CaptionsUpdate

    -- * Request Lenses
    , cuOnBehalfOf
    , cuQuotaUser
    , cuPart
    , cuPrettyPrint
    , cuUserIp
    , cuOnBehalfOfContentOwner
    , cuKey
    , cuSync
    , cuOauthToken
    , cuFields
    , cuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCaptionsUpdate@ which the
-- 'CaptionsUpdate' request conforms to.
type CaptionsUpdateAPI =
     "captions" :>
       QueryParam "onBehalfOf" Text :>
         QueryParam "part" Text :>
           QueryParam "onBehalfOfContentOwner" Text :>
             QueryParam "sync" Bool :> Put '[JSON] Caption

-- | Updates a caption track. When updating a caption track, you can change
-- the track\'s draft status, upload a new caption file for the track, or
-- both.
--
-- /See:/ 'captionsUpdate' smart constructor.
data CaptionsUpdate = CaptionsUpdate
    { _cuOnBehalfOf             :: !(Maybe Text)
    , _cuQuotaUser              :: !(Maybe Text)
    , _cuPart                   :: !Text
    , _cuPrettyPrint            :: !Bool
    , _cuUserIp                 :: !(Maybe Text)
    , _cuOnBehalfOfContentOwner :: !(Maybe Text)
    , _cuKey                    :: !(Maybe Text)
    , _cuSync                   :: !(Maybe Bool)
    , _cuOauthToken             :: !(Maybe Text)
    , _cuFields                 :: !(Maybe Text)
    , _cuAlt                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuOnBehalfOf'
--
-- * 'cuQuotaUser'
--
-- * 'cuPart'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIp'
--
-- * 'cuOnBehalfOfContentOwner'
--
-- * 'cuKey'
--
-- * 'cuSync'
--
-- * 'cuOauthToken'
--
-- * 'cuFields'
--
-- * 'cuAlt'
captionsUpdate
    :: Text -- ^ 'part'
    -> CaptionsUpdate
captionsUpdate pCuPart_ =
    CaptionsUpdate
    { _cuOnBehalfOf = Nothing
    , _cuQuotaUser = Nothing
    , _cuPart = pCuPart_
    , _cuPrettyPrint = True
    , _cuUserIp = Nothing
    , _cuOnBehalfOfContentOwner = Nothing
    , _cuKey = Nothing
    , _cuSync = Nothing
    , _cuOauthToken = Nothing
    , _cuFields = Nothing
    , _cuAlt = "json"
    }

-- | ID of the Google+ Page for the channel that the request is be on behalf
-- of
cuOnBehalfOf :: Lens' CaptionsUpdate' (Maybe Text)
cuOnBehalfOf
  = lens _cuOnBehalfOf (\ s a -> s{_cuOnBehalfOf = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CaptionsUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. Set the property value to
-- snippet if you are updating the track\'s draft status. Otherwise, set
-- the property value to id.
cuPart :: Lens' CaptionsUpdate' Text
cuPart = lens _cuPart (\ s a -> s{_cuPart = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CaptionsUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIp :: Lens' CaptionsUpdate' (Maybe Text)
cuUserIp = lens _cuUserIp (\ s a -> s{_cuUserIp = a})

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
cuOnBehalfOfContentOwner :: Lens' CaptionsUpdate' (Maybe Text)
cuOnBehalfOfContentOwner
  = lens _cuOnBehalfOfContentOwner
      (\ s a -> s{_cuOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CaptionsUpdate' (Maybe Text)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | Note: The API server only processes the parameter value if the request
-- contains an updated caption file. The sync parameter indicates whether
-- YouTube should automatically synchronize the caption file with the audio
-- track of the video. If you set the value to true, YouTube will
-- automatically synchronize the caption track with the audio track.
cuSync :: Lens' CaptionsUpdate' (Maybe Bool)
cuSync = lens _cuSync (\ s a -> s{_cuSync = a})

-- | OAuth 2.0 token for the current user.
cuOauthToken :: Lens' CaptionsUpdate' (Maybe Text)
cuOauthToken
  = lens _cuOauthToken (\ s a -> s{_cuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CaptionsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

-- | Data format for the response.
cuAlt :: Lens' CaptionsUpdate' Text
cuAlt = lens _cuAlt (\ s a -> s{_cuAlt = a})

instance GoogleRequest CaptionsUpdate' where
        type Rs CaptionsUpdate' = Caption
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CaptionsUpdate{..}
          = go _cuOnBehalfOf _cuQuotaUser (Just _cuPart)
              _cuPrettyPrint
              _cuUserIp
              _cuOnBehalfOfContentOwner
              _cuKey
              _cuSync
              _cuOauthToken
              _cuFields
              _cuAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CaptionsUpdateAPI)
                      r
                      u
