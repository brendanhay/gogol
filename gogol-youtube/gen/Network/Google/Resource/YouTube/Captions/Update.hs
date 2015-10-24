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
-- Module      : Network.Google.Resource.YouTube.Captions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a caption track. When updating a caption track, you can change
-- the track\'s draft status, upload a new caption file for the track, or
-- both.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.captions.update@.
module Network.Google.Resource.YouTube.Captions.Update
    (
    -- * REST Resource
      CaptionsUpdateResource

    -- * Creating a Request
    , captionsUpdate
    , CaptionsUpdate

    -- * Request Lenses
    , capOnBehalfOf
    , capPart
    , capPayload
    , capOnBehalfOfContentOwner
    , capSync
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.captions.update@ method which the
-- 'CaptionsUpdate' request conforms to.
type CaptionsUpdateResource =
     "youtube" :>
       "v3" :>
         "captions" :>
           QueryParam "part" Text :>
             QueryParam "onBehalfOf" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "sync" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Caption :> Put '[JSON] Caption
       :<|>
       "upload" :>
         "youtube" :>
           "v3" :>
             "captions" :>
               QueryParam "part" Text :>
                 QueryParam "onBehalfOf" Text :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "sync" Bool :>
                       QueryParam "alt" AltJSON :>
                         QueryParam "uploadType" AltMedia :>
                           MultipartRelated '[JSON] Caption RequestBody :>
                             Put '[JSON] Caption

-- | Updates a caption track. When updating a caption track, you can change
-- the track\'s draft status, upload a new caption file for the track, or
-- both.
--
-- /See:/ 'captionsUpdate' smart constructor.
data CaptionsUpdate = CaptionsUpdate
    { _capOnBehalfOf             :: !(Maybe Text)
    , _capPart                   :: !Text
    , _capPayload                :: !Caption
    , _capOnBehalfOfContentOwner :: !(Maybe Text)
    , _capSync                   :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capOnBehalfOf'
--
-- * 'capPart'
--
-- * 'capPayload'
--
-- * 'capOnBehalfOfContentOwner'
--
-- * 'capSync'
captionsUpdate
    :: Text -- ^ 'capPart'
    -> Caption -- ^ 'capPayload'
    -> CaptionsUpdate
captionsUpdate pCapPart_ pCapPayload_ =
    CaptionsUpdate
    { _capOnBehalfOf = Nothing
    , _capPart = pCapPart_
    , _capPayload = pCapPayload_
    , _capOnBehalfOfContentOwner = Nothing
    , _capSync = Nothing
    }

-- | ID of the Google+ Page for the channel that the request is be on behalf
-- of
capOnBehalfOf :: Lens' CaptionsUpdate (Maybe Text)
capOnBehalfOf
  = lens _capOnBehalfOf
      (\ s a -> s{_capOnBehalfOf = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. Set the property value to
-- snippet if you are updating the track\'s draft status. Otherwise, set
-- the property value to id.
capPart :: Lens' CaptionsUpdate Text
capPart = lens _capPart (\ s a -> s{_capPart = a})

-- | Multipart request metadata.
capPayload :: Lens' CaptionsUpdate Caption
capPayload
  = lens _capPayload (\ s a -> s{_capPayload = a})

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
capOnBehalfOfContentOwner :: Lens' CaptionsUpdate (Maybe Text)
capOnBehalfOfContentOwner
  = lens _capOnBehalfOfContentOwner
      (\ s a -> s{_capOnBehalfOfContentOwner = a})

-- | Note: The API server only processes the parameter value if the request
-- contains an updated caption file. The sync parameter indicates whether
-- YouTube should automatically synchronize the caption file with the audio
-- track of the video. If you set the value to true, YouTube will
-- automatically synchronize the caption track with the audio track.
capSync :: Lens' CaptionsUpdate (Maybe Bool)
capSync = lens _capSync (\ s a -> s{_capSync = a})

instance GoogleRequest CaptionsUpdate where
        type Rs CaptionsUpdate = Caption
        requestClient CaptionsUpdate{..}
          = go (Just _capPart) _capOnBehalfOf
              _capOnBehalfOfContentOwner
              _capSync
              (Just AltJSON)
              _capPayload
              youTubeService
          where go :<|> _
                  = buildClient (Proxy :: Proxy CaptionsUpdateResource)
                      mempty

instance GoogleRequest (MediaUpload CaptionsUpdate)
         where
        type Rs (MediaUpload CaptionsUpdate) = Caption
        requestClient (MediaUpload CaptionsUpdate{..} body)
          = go (Just _capPart) _capOnBehalfOf
              _capOnBehalfOfContentOwner
              _capSync
              (Just AltJSON)
              (Just AltMedia)
              _capPayload
              body
              youTubeService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy CaptionsUpdateResource)
                      mempty
