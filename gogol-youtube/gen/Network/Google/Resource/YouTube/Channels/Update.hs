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
-- Module      : Network.Google.Resource.YouTube.Channels.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.channels.update@.
module Network.Google.Resource.YouTube.Channels.Update
    (
    -- * REST Resource
      ChannelsUpdateResource

    -- * Creating a Request
    , channelsUpdate
    , ChannelsUpdate

    -- * Request Lenses
    , chaXgafv
    , chaPart
    , chaUploadProtocol
    , chaAccessToken
    , chaUploadType
    , chaPayload
    , chaOnBehalfOfContentOwner
    , chaCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.channels.update@ method which the
-- 'ChannelsUpdate' request conforms to.
type ChannelsUpdateResource =
     "youtube" :>
       "v3" :>
         "channels" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Channel :> Put '[JSON] Channel

-- | Updates an existing resource.
--
-- /See:/ 'channelsUpdate' smart constructor.
data ChannelsUpdate =
  ChannelsUpdate'
    { _chaXgafv :: !(Maybe Xgafv)
    , _chaPart :: ![Text]
    , _chaUploadProtocol :: !(Maybe Text)
    , _chaAccessToken :: !(Maybe Text)
    , _chaUploadType :: !(Maybe Text)
    , _chaPayload :: !Channel
    , _chaOnBehalfOfContentOwner :: !(Maybe Text)
    , _chaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChannelsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaXgafv'
--
-- * 'chaPart'
--
-- * 'chaUploadProtocol'
--
-- * 'chaAccessToken'
--
-- * 'chaUploadType'
--
-- * 'chaPayload'
--
-- * 'chaOnBehalfOfContentOwner'
--
-- * 'chaCallback'
channelsUpdate
    :: [Text] -- ^ 'chaPart'
    -> Channel -- ^ 'chaPayload'
    -> ChannelsUpdate
channelsUpdate pChaPart_ pChaPayload_ =
  ChannelsUpdate'
    { _chaXgafv = Nothing
    , _chaPart = _Coerce # pChaPart_
    , _chaUploadProtocol = Nothing
    , _chaAccessToken = Nothing
    , _chaUploadType = Nothing
    , _chaPayload = pChaPayload_
    , _chaOnBehalfOfContentOwner = Nothing
    , _chaCallback = Nothing
    }


-- | V1 error format.
chaXgafv :: Lens' ChannelsUpdate (Maybe Xgafv)
chaXgafv = lens _chaXgafv (\ s a -> s{_chaXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include. The API currently
-- only allows the parameter value to be set to either brandingSettings or
-- invideoPromotion. (You cannot update both of those parts with a single
-- request.) Note that this method overrides the existing values for all of
-- the mutable properties that are contained in any parts that the
-- parameter value specifies.
chaPart :: Lens' ChannelsUpdate [Text]
chaPart
  = lens _chaPart (\ s a -> s{_chaPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
chaUploadProtocol :: Lens' ChannelsUpdate (Maybe Text)
chaUploadProtocol
  = lens _chaUploadProtocol
      (\ s a -> s{_chaUploadProtocol = a})

-- | OAuth access token.
chaAccessToken :: Lens' ChannelsUpdate (Maybe Text)
chaAccessToken
  = lens _chaAccessToken
      (\ s a -> s{_chaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
chaUploadType :: Lens' ChannelsUpdate (Maybe Text)
chaUploadType
  = lens _chaUploadType
      (\ s a -> s{_chaUploadType = a})

-- | Multipart request metadata.
chaPayload :: Lens' ChannelsUpdate Channel
chaPayload
  = lens _chaPayload (\ s a -> s{_chaPayload = a})

-- | The *onBehalfOfContentOwner* parameter indicates that the authenticated
-- user is acting on behalf of the content owner specified in the parameter
-- value. This parameter is intended for YouTube content partners that own
-- and manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with needs
-- to be linked to the specified YouTube content owner.
chaOnBehalfOfContentOwner :: Lens' ChannelsUpdate (Maybe Text)
chaOnBehalfOfContentOwner
  = lens _chaOnBehalfOfContentOwner
      (\ s a -> s{_chaOnBehalfOfContentOwner = a})

-- | JSONP
chaCallback :: Lens' ChannelsUpdate (Maybe Text)
chaCallback
  = lens _chaCallback (\ s a -> s{_chaCallback = a})

instance GoogleRequest ChannelsUpdate where
        type Rs ChannelsUpdate = Channel
        type Scopes ChannelsUpdate =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient ChannelsUpdate'{..}
          = go _chaPart _chaXgafv _chaUploadProtocol
              _chaAccessToken
              _chaUploadType
              _chaOnBehalfOfContentOwner
              _chaCallback
              (Just AltJSON)
              _chaPayload
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy ChannelsUpdateResource)
                      mempty
