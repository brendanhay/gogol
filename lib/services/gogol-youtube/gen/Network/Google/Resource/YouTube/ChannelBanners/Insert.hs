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
-- Module      : Network.Google.Resource.YouTube.ChannelBanners.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.channelBanners.insert@.
module Network.Google.Resource.YouTube.ChannelBanners.Insert
    (
    -- * REST Resource
      ChannelBannersInsertResource

    -- * Creating a Request
    , channelBannersInsert
    , ChannelBannersInsert

    -- * Request Lenses
    , cbiXgafv
    , cbiUploadProtocol
    , cbiAccessToken
    , cbiUploadType
    , cbiChannelId
    , cbiPayload
    , cbiOnBehalfOfContentOwner
    , cbiOnBehalfOfContentOwnerChannel
    , cbiCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.channelBanners.insert@ method which the
-- 'ChannelBannersInsert' request conforms to.
type ChannelBannersInsertResource =
     "youtube" :>
       "v3" :>
         "channelBanners" :>
           "insert" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "channelId" Text :>
                       QueryParam "onBehalfOfContentOwner" Text :>
                         QueryParam "onBehalfOfContentOwnerChannel" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ChannelBannerResource :>
                                 Post '[JSON] ChannelBannerResource
       :<|>
       "upload" :>
         "youtube" :>
           "v3" :>
             "channelBanners" :>
               "insert" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "channelId" Text :>
                           QueryParam "onBehalfOfContentOwner" Text :>
                             QueryParam "onBehalfOfContentOwnerChannel" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   QueryParam "uploadType" Multipart :>
                                     MultipartRelated '[JSON]
                                       ChannelBannerResource
                                       :> Post '[JSON] ChannelBannerResource

-- | Inserts a new resource into this collection.
--
-- /See:/ 'channelBannersInsert' smart constructor.
data ChannelBannersInsert =
  ChannelBannersInsert'
    { _cbiXgafv :: !(Maybe Xgafv)
    , _cbiUploadProtocol :: !(Maybe Text)
    , _cbiAccessToken :: !(Maybe Text)
    , _cbiUploadType :: !(Maybe Text)
    , _cbiChannelId :: !(Maybe Text)
    , _cbiPayload :: !ChannelBannerResource
    , _cbiOnBehalfOfContentOwner :: !(Maybe Text)
    , _cbiOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _cbiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChannelBannersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbiXgafv'
--
-- * 'cbiUploadProtocol'
--
-- * 'cbiAccessToken'
--
-- * 'cbiUploadType'
--
-- * 'cbiChannelId'
--
-- * 'cbiPayload'
--
-- * 'cbiOnBehalfOfContentOwner'
--
-- * 'cbiOnBehalfOfContentOwnerChannel'
--
-- * 'cbiCallback'
channelBannersInsert
    :: ChannelBannerResource -- ^ 'cbiPayload'
    -> ChannelBannersInsert
channelBannersInsert pCbiPayload_ =
  ChannelBannersInsert'
    { _cbiXgafv = Nothing
    , _cbiUploadProtocol = Nothing
    , _cbiAccessToken = Nothing
    , _cbiUploadType = Nothing
    , _cbiChannelId = Nothing
    , _cbiPayload = pCbiPayload_
    , _cbiOnBehalfOfContentOwner = Nothing
    , _cbiOnBehalfOfContentOwnerChannel = Nothing
    , _cbiCallback = Nothing
    }


-- | V1 error format.
cbiXgafv :: Lens' ChannelBannersInsert (Maybe Xgafv)
cbiXgafv = lens _cbiXgafv (\ s a -> s{_cbiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cbiUploadProtocol :: Lens' ChannelBannersInsert (Maybe Text)
cbiUploadProtocol
  = lens _cbiUploadProtocol
      (\ s a -> s{_cbiUploadProtocol = a})

-- | OAuth access token.
cbiAccessToken :: Lens' ChannelBannersInsert (Maybe Text)
cbiAccessToken
  = lens _cbiAccessToken
      (\ s a -> s{_cbiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cbiUploadType :: Lens' ChannelBannersInsert (Maybe Text)
cbiUploadType
  = lens _cbiUploadType
      (\ s a -> s{_cbiUploadType = a})

-- | Unused, channel_id is currently derived from the security context of the
-- requestor.
cbiChannelId :: Lens' ChannelBannersInsert (Maybe Text)
cbiChannelId
  = lens _cbiChannelId (\ s a -> s{_cbiChannelId = a})

-- | Multipart request metadata.
cbiPayload :: Lens' ChannelBannersInsert ChannelBannerResource
cbiPayload
  = lens _cbiPayload (\ s a -> s{_cbiPayload = a})

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
cbiOnBehalfOfContentOwner :: Lens' ChannelBannersInsert (Maybe Text)
cbiOnBehalfOfContentOwner
  = lens _cbiOnBehalfOfContentOwner
      (\ s a -> s{_cbiOnBehalfOfContentOwner = a})

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
cbiOnBehalfOfContentOwnerChannel :: Lens' ChannelBannersInsert (Maybe Text)
cbiOnBehalfOfContentOwnerChannel
  = lens _cbiOnBehalfOfContentOwnerChannel
      (\ s a -> s{_cbiOnBehalfOfContentOwnerChannel = a})

-- | JSONP
cbiCallback :: Lens' ChannelBannersInsert (Maybe Text)
cbiCallback
  = lens _cbiCallback (\ s a -> s{_cbiCallback = a})

instance GoogleRequest ChannelBannersInsert where
        type Rs ChannelBannersInsert = ChannelBannerResource
        type Scopes ChannelBannersInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.upload"]
        requestClient ChannelBannersInsert'{..}
          = go _cbiXgafv _cbiUploadProtocol _cbiAccessToken
              _cbiUploadType
              _cbiChannelId
              _cbiOnBehalfOfContentOwner
              _cbiOnBehalfOfContentOwnerChannel
              _cbiCallback
              (Just AltJSON)
              _cbiPayload
              youTubeService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy ChannelBannersInsertResource)
                      mempty

instance GoogleRequest
           (MediaUpload ChannelBannersInsert)
         where
        type Rs (MediaUpload ChannelBannersInsert) =
             ChannelBannerResource
        type Scopes (MediaUpload ChannelBannersInsert) =
             Scopes ChannelBannersInsert
        requestClient
          (MediaUpload ChannelBannersInsert'{..} body)
          = go _cbiXgafv _cbiUploadProtocol _cbiAccessToken
              _cbiUploadType
              _cbiChannelId
              _cbiOnBehalfOfContentOwner
              _cbiOnBehalfOfContentOwnerChannel
              _cbiCallback
              (Just AltJSON)
              (Just Multipart)
              _cbiPayload
              body
              youTubeService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy ChannelBannersInsertResource)
                      mempty
