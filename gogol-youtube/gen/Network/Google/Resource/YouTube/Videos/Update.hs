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
-- Module      : Network.Google.Resource.YouTube.Videos.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videos.update@.
module Network.Google.Resource.YouTube.Videos.Update
    (
    -- * REST Resource
      VideosUpdateResource

    -- * Creating a Request
    , videosUpdate
    , VideosUpdate

    -- * Request Lenses
    , vuXgafv
    , vuPart
    , vuUploadProtocol
    , vuAccessToken
    , vuUploadType
    , vuPayload
    , vuOnBehalfOfContentOwner
    , vuCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.videos.update@ method which the
-- 'VideosUpdate' request conforms to.
type VideosUpdateResource =
     "youtube" :>
       "v3" :>
         "videos" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Video :> Put '[JSON] Video

-- | Updates an existing resource.
--
-- /See:/ 'videosUpdate' smart constructor.
data VideosUpdate =
  VideosUpdate'
    { _vuXgafv :: !(Maybe Xgafv)
    , _vuPart :: ![Text]
    , _vuUploadProtocol :: !(Maybe Text)
    , _vuAccessToken :: !(Maybe Text)
    , _vuUploadType :: !(Maybe Text)
    , _vuPayload :: !Video
    , _vuOnBehalfOfContentOwner :: !(Maybe Text)
    , _vuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideosUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vuXgafv'
--
-- * 'vuPart'
--
-- * 'vuUploadProtocol'
--
-- * 'vuAccessToken'
--
-- * 'vuUploadType'
--
-- * 'vuPayload'
--
-- * 'vuOnBehalfOfContentOwner'
--
-- * 'vuCallback'
videosUpdate
    :: [Text] -- ^ 'vuPart'
    -> Video -- ^ 'vuPayload'
    -> VideosUpdate
videosUpdate pVuPart_ pVuPayload_ =
  VideosUpdate'
    { _vuXgafv = Nothing
    , _vuPart = _Coerce # pVuPart_
    , _vuUploadProtocol = Nothing
    , _vuAccessToken = Nothing
    , _vuUploadType = Nothing
    , _vuPayload = pVuPayload_
    , _vuOnBehalfOfContentOwner = Nothing
    , _vuCallback = Nothing
    }


-- | V1 error format.
vuXgafv :: Lens' VideosUpdate (Maybe Xgafv)
vuXgafv = lens _vuXgafv (\ s a -> s{_vuXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include. Note that this method
-- will override the existing values for all of the mutable properties that
-- are contained in any parts that the parameter value specifies. For
-- example, a video\'s privacy setting is contained in the status part. As
-- such, if your request is updating a private video, and the request\'s
-- part parameter value includes the status part, the video\'s privacy
-- setting will be updated to whatever value the request body specifies. If
-- the request body does not specify a value, the existing privacy setting
-- will be removed and the video will revert to the default privacy
-- setting. In addition, not all parts contain properties that can be set
-- when inserting or updating a video. For example, the statistics object
-- encapsulates statistics that YouTube calculates for a video and does not
-- contain values that you can set or modify. If the parameter value
-- specifies a part that does not contain mutable values, that part will
-- still be included in the API response.
vuPart :: Lens' VideosUpdate [Text]
vuPart
  = lens _vuPart (\ s a -> s{_vuPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vuUploadProtocol :: Lens' VideosUpdate (Maybe Text)
vuUploadProtocol
  = lens _vuUploadProtocol
      (\ s a -> s{_vuUploadProtocol = a})

-- | OAuth access token.
vuAccessToken :: Lens' VideosUpdate (Maybe Text)
vuAccessToken
  = lens _vuAccessToken
      (\ s a -> s{_vuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vuUploadType :: Lens' VideosUpdate (Maybe Text)
vuUploadType
  = lens _vuUploadType (\ s a -> s{_vuUploadType = a})

-- | Multipart request metadata.
vuPayload :: Lens' VideosUpdate Video
vuPayload
  = lens _vuPayload (\ s a -> s{_vuPayload = a})

-- | *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwner* parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
vuOnBehalfOfContentOwner :: Lens' VideosUpdate (Maybe Text)
vuOnBehalfOfContentOwner
  = lens _vuOnBehalfOfContentOwner
      (\ s a -> s{_vuOnBehalfOfContentOwner = a})

-- | JSONP
vuCallback :: Lens' VideosUpdate (Maybe Text)
vuCallback
  = lens _vuCallback (\ s a -> s{_vuCallback = a})

instance GoogleRequest VideosUpdate where
        type Rs VideosUpdate = Video
        type Scopes VideosUpdate =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient VideosUpdate'{..}
          = go _vuPart _vuXgafv _vuUploadProtocol
              _vuAccessToken
              _vuUploadType
              _vuOnBehalfOfContentOwner
              _vuCallback
              (Just AltJSON)
              _vuPayload
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy VideosUpdateResource)
                      mempty
