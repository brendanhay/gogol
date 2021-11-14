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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videos.insert@.
module Network.Google.Resource.YouTube.Videos.Insert
    (
    -- * REST Resource
      VideosInsertResource

    -- * Creating a Request
    , videosInsert
    , VideosInsert

    -- * Request Lenses
    , viXgafv
    , viPart
    , viStabilize
    , viUploadProtocol
    , viAccessToken
    , viUploadType
    , viPayload
    , viOnBehalfOfContentOwner
    , viOnBehalfOfContentOwnerChannel
    , viNotifySubscribers
    , viAutoLevels
    , viCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.videos.insert@ method which the
-- 'VideosInsert' request conforms to.
type VideosInsertResource =
     "youtube" :>
       "v3" :>
         "videos" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "stabilize" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "onBehalfOfContentOwner" Text :>
                         QueryParam "onBehalfOfContentOwnerChannel" Text :>
                           QueryParam "notifySubscribers" Bool :>
                             QueryParam "autoLevels" Bool :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Video :> Post '[JSON] Video
       :<|>
       "upload" :>
         "youtube" :>
           "v3" :>
             "videos" :>
               QueryParams "part" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "stabilize" Bool :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "onBehalfOfContentOwner" Text :>
                             QueryParam "onBehalfOfContentOwnerChannel" Text :>
                               QueryParam "notifySubscribers" Bool :>
                                 QueryParam "autoLevels" Bool :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       QueryParam "uploadType" Multipart :>
                                         MultipartRelated '[JSON] Video :>
                                           Post '[JSON] Video

-- | Inserts a new resource into this collection.
--
-- /See:/ 'videosInsert' smart constructor.
data VideosInsert =
  VideosInsert'
    { _viXgafv :: !(Maybe Xgafv)
    , _viPart :: ![Text]
    , _viStabilize :: !(Maybe Bool)
    , _viUploadProtocol :: !(Maybe Text)
    , _viAccessToken :: !(Maybe Text)
    , _viUploadType :: !(Maybe Text)
    , _viPayload :: !Video
    , _viOnBehalfOfContentOwner :: !(Maybe Text)
    , _viOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _viNotifySubscribers :: !Bool
    , _viAutoLevels :: !(Maybe Bool)
    , _viCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideosInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'viXgafv'
--
-- * 'viPart'
--
-- * 'viStabilize'
--
-- * 'viUploadProtocol'
--
-- * 'viAccessToken'
--
-- * 'viUploadType'
--
-- * 'viPayload'
--
-- * 'viOnBehalfOfContentOwner'
--
-- * 'viOnBehalfOfContentOwnerChannel'
--
-- * 'viNotifySubscribers'
--
-- * 'viAutoLevels'
--
-- * 'viCallback'
videosInsert
    :: [Text] -- ^ 'viPart'
    -> Video -- ^ 'viPayload'
    -> VideosInsert
videosInsert pViPart_ pViPayload_ =
  VideosInsert'
    { _viXgafv = Nothing
    , _viPart = _Coerce # pViPart_
    , _viStabilize = Nothing
    , _viUploadProtocol = Nothing
    , _viAccessToken = Nothing
    , _viUploadType = Nothing
    , _viPayload = pViPayload_
    , _viOnBehalfOfContentOwner = Nothing
    , _viOnBehalfOfContentOwnerChannel = Nothing
    , _viNotifySubscribers = True
    , _viAutoLevels = Nothing
    , _viCallback = Nothing
    }


-- | V1 error format.
viXgafv :: Lens' VideosInsert (Maybe Xgafv)
viXgafv = lens _viXgafv (\ s a -> s{_viXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include. Note that not all
-- parts contain properties that can be set when inserting or updating a
-- video. For example, the statistics object encapsulates statistics that
-- YouTube calculates for a video and does not contain values that you can
-- set or modify. If the parameter value specifies a part that does not
-- contain mutable values, that part will still be included in the API
-- response.
viPart :: Lens' VideosInsert [Text]
viPart
  = lens _viPart (\ s a -> s{_viPart = a}) . _Coerce

-- | Should stabilize be applied to the upload.
viStabilize :: Lens' VideosInsert (Maybe Bool)
viStabilize
  = lens _viStabilize (\ s a -> s{_viStabilize = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
viUploadProtocol :: Lens' VideosInsert (Maybe Text)
viUploadProtocol
  = lens _viUploadProtocol
      (\ s a -> s{_viUploadProtocol = a})

-- | OAuth access token.
viAccessToken :: Lens' VideosInsert (Maybe Text)
viAccessToken
  = lens _viAccessToken
      (\ s a -> s{_viAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
viUploadType :: Lens' VideosInsert (Maybe Text)
viUploadType
  = lens _viUploadType (\ s a -> s{_viUploadType = a})

-- | Multipart request metadata.
viPayload :: Lens' VideosInsert Video
viPayload
  = lens _viPayload (\ s a -> s{_viPayload = a})

-- | *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwner* parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
viOnBehalfOfContentOwner :: Lens' VideosInsert (Maybe Text)
viOnBehalfOfContentOwner
  = lens _viOnBehalfOfContentOwner
      (\ s a -> s{_viOnBehalfOfContentOwner = a})

-- | This parameter can only be used in a properly authorized request.
-- *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwnerChannel* parameter specifies the
-- YouTube channel ID of the channel to which a video is being added. This
-- parameter is required when a request specifies a value for the
-- onBehalfOfContentOwner parameter, and it can only be used in conjunction
-- with that parameter. In addition, the request must be authorized using a
-- CMS account that is linked to the content owner that the
-- onBehalfOfContentOwner parameter specifies. Finally, the channel that
-- the onBehalfOfContentOwnerChannel parameter value specifies must be
-- linked to the content owner that the onBehalfOfContentOwner parameter
-- specifies. This parameter is intended for YouTube content partners that
-- own and manage many different YouTube channels. It allows content owners
-- to authenticate once and perform actions on behalf of the channel
-- specified in the parameter value, without having to provide
-- authentication credentials for each separate channel.
viOnBehalfOfContentOwnerChannel :: Lens' VideosInsert (Maybe Text)
viOnBehalfOfContentOwnerChannel
  = lens _viOnBehalfOfContentOwnerChannel
      (\ s a -> s{_viOnBehalfOfContentOwnerChannel = a})

-- | Notify the channel subscribers about the new video. As default, the
-- notification is enabled.
viNotifySubscribers :: Lens' VideosInsert Bool
viNotifySubscribers
  = lens _viNotifySubscribers
      (\ s a -> s{_viNotifySubscribers = a})

-- | Should auto-levels be applied to the upload.
viAutoLevels :: Lens' VideosInsert (Maybe Bool)
viAutoLevels
  = lens _viAutoLevels (\ s a -> s{_viAutoLevels = a})

-- | JSONP
viCallback :: Lens' VideosInsert (Maybe Text)
viCallback
  = lens _viCallback (\ s a -> s{_viCallback = a})

instance GoogleRequest VideosInsert where
        type Rs VideosInsert = Video
        type Scopes VideosInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.upload",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient VideosInsert'{..}
          = go _viPart _viXgafv _viStabilize _viUploadProtocol
              _viAccessToken
              _viUploadType
              _viOnBehalfOfContentOwner
              _viOnBehalfOfContentOwnerChannel
              (Just _viNotifySubscribers)
              _viAutoLevels
              _viCallback
              (Just AltJSON)
              _viPayload
              youTubeService
          where go :<|> _
                  = buildClient (Proxy :: Proxy VideosInsertResource)
                      mempty

instance GoogleRequest (MediaUpload VideosInsert)
         where
        type Rs (MediaUpload VideosInsert) = Video
        type Scopes (MediaUpload VideosInsert) =
             Scopes VideosInsert
        requestClient (MediaUpload VideosInsert'{..} body)
          = go _viPart _viXgafv _viStabilize _viUploadProtocol
              _viAccessToken
              _viUploadType
              _viOnBehalfOfContentOwner
              _viOnBehalfOfContentOwnerChannel
              (Just _viNotifySubscribers)
              _viAutoLevels
              _viCallback
              (Just AltJSON)
              (Just Multipart)
              _viPayload
              body
              youTubeService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy VideosInsertResource)
                      mempty
