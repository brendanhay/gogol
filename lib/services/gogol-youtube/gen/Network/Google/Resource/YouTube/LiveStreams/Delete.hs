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
-- Module      : Network.Google.Resource.YouTube.LiveStreams.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing stream for the authenticated user.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveStreams.delete@.
module Network.Google.Resource.YouTube.LiveStreams.Delete
    (
    -- * REST Resource
      LiveStreamsDeleteResource

    -- * Creating a Request
    , liveStreamsDelete
    , LiveStreamsDelete

    -- * Request Lenses
    , lsdXgafv
    , lsdUploadProtocol
    , lsdAccessToken
    , lsdUploadType
    , lsdOnBehalfOfContentOwner
    , lsdOnBehalfOfContentOwnerChannel
    , lsdId
    , lsdCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveStreams.delete@ method which the
-- 'LiveStreamsDelete' request conforms to.
type LiveStreamsDeleteResource =
     "youtube" :>
       "v3" :>
         "liveStreams" :>
           QueryParam "id" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "onBehalfOfContentOwnerChannel" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing stream for the authenticated user.
--
-- /See:/ 'liveStreamsDelete' smart constructor.
data LiveStreamsDelete =
  LiveStreamsDelete'
    { _lsdXgafv :: !(Maybe Xgafv)
    , _lsdUploadProtocol :: !(Maybe Text)
    , _lsdAccessToken :: !(Maybe Text)
    , _lsdUploadType :: !(Maybe Text)
    , _lsdOnBehalfOfContentOwner :: !(Maybe Text)
    , _lsdOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lsdId :: !Text
    , _lsdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveStreamsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsdXgafv'
--
-- * 'lsdUploadProtocol'
--
-- * 'lsdAccessToken'
--
-- * 'lsdUploadType'
--
-- * 'lsdOnBehalfOfContentOwner'
--
-- * 'lsdOnBehalfOfContentOwnerChannel'
--
-- * 'lsdId'
--
-- * 'lsdCallback'
liveStreamsDelete
    :: Text -- ^ 'lsdId'
    -> LiveStreamsDelete
liveStreamsDelete pLsdId_ =
  LiveStreamsDelete'
    { _lsdXgafv = Nothing
    , _lsdUploadProtocol = Nothing
    , _lsdAccessToken = Nothing
    , _lsdUploadType = Nothing
    , _lsdOnBehalfOfContentOwner = Nothing
    , _lsdOnBehalfOfContentOwnerChannel = Nothing
    , _lsdId = pLsdId_
    , _lsdCallback = Nothing
    }


-- | V1 error format.
lsdXgafv :: Lens' LiveStreamsDelete (Maybe Xgafv)
lsdXgafv = lens _lsdXgafv (\ s a -> s{_lsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lsdUploadProtocol :: Lens' LiveStreamsDelete (Maybe Text)
lsdUploadProtocol
  = lens _lsdUploadProtocol
      (\ s a -> s{_lsdUploadProtocol = a})

-- | OAuth access token.
lsdAccessToken :: Lens' LiveStreamsDelete (Maybe Text)
lsdAccessToken
  = lens _lsdAccessToken
      (\ s a -> s{_lsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lsdUploadType :: Lens' LiveStreamsDelete (Maybe Text)
lsdUploadType
  = lens _lsdUploadType
      (\ s a -> s{_lsdUploadType = a})

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
lsdOnBehalfOfContentOwner :: Lens' LiveStreamsDelete (Maybe Text)
lsdOnBehalfOfContentOwner
  = lens _lsdOnBehalfOfContentOwner
      (\ s a -> s{_lsdOnBehalfOfContentOwner = a})

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
lsdOnBehalfOfContentOwnerChannel :: Lens' LiveStreamsDelete (Maybe Text)
lsdOnBehalfOfContentOwnerChannel
  = lens _lsdOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lsdOnBehalfOfContentOwnerChannel = a})

lsdId :: Lens' LiveStreamsDelete Text
lsdId = lens _lsdId (\ s a -> s{_lsdId = a})

-- | JSONP
lsdCallback :: Lens' LiveStreamsDelete (Maybe Text)
lsdCallback
  = lens _lsdCallback (\ s a -> s{_lsdCallback = a})

instance GoogleRequest LiveStreamsDelete where
        type Rs LiveStreamsDelete = ()
        type Scopes LiveStreamsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveStreamsDelete'{..}
          = go (Just _lsdId) _lsdXgafv _lsdUploadProtocol
              _lsdAccessToken
              _lsdUploadType
              _lsdOnBehalfOfContentOwner
              _lsdOnBehalfOfContentOwnerChannel
              _lsdCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveStreamsDeleteResource)
                      mempty
