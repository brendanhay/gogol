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
-- Module      : Network.Google.Resource.YouTube.ChannelSections.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.channelSections.insert@.
module Network.Google.Resource.YouTube.ChannelSections.Insert
    (
    -- * REST Resource
      ChannelSectionsInsertResource

    -- * Creating a Request
    , channelSectionsInsert
    , ChannelSectionsInsert

    -- * Request Lenses
    , csiXgafv
    , csiPart
    , csiUploadProtocol
    , csiAccessToken
    , csiUploadType
    , csiPayload
    , csiOnBehalfOfContentOwner
    , csiOnBehalfOfContentOwnerChannel
    , csiCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.channelSections.insert@ method which the
-- 'ChannelSectionsInsert' request conforms to.
type ChannelSectionsInsertResource =
     "youtube" :>
       "v3" :>
         "channelSections" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "onBehalfOfContentOwnerChannel" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ChannelSection :>
                               Post '[JSON] ChannelSection

-- | Inserts a new resource into this collection.
--
-- /See:/ 'channelSectionsInsert' smart constructor.
data ChannelSectionsInsert =
  ChannelSectionsInsert'
    { _csiXgafv :: !(Maybe Xgafv)
    , _csiPart :: ![Text]
    , _csiUploadProtocol :: !(Maybe Text)
    , _csiAccessToken :: !(Maybe Text)
    , _csiUploadType :: !(Maybe Text)
    , _csiPayload :: !ChannelSection
    , _csiOnBehalfOfContentOwner :: !(Maybe Text)
    , _csiOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _csiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChannelSectionsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csiXgafv'
--
-- * 'csiPart'
--
-- * 'csiUploadProtocol'
--
-- * 'csiAccessToken'
--
-- * 'csiUploadType'
--
-- * 'csiPayload'
--
-- * 'csiOnBehalfOfContentOwner'
--
-- * 'csiOnBehalfOfContentOwnerChannel'
--
-- * 'csiCallback'
channelSectionsInsert
    :: [Text] -- ^ 'csiPart'
    -> ChannelSection -- ^ 'csiPayload'
    -> ChannelSectionsInsert
channelSectionsInsert pCsiPart_ pCsiPayload_ =
  ChannelSectionsInsert'
    { _csiXgafv = Nothing
    , _csiPart = _Coerce # pCsiPart_
    , _csiUploadProtocol = Nothing
    , _csiAccessToken = Nothing
    , _csiUploadType = Nothing
    , _csiPayload = pCsiPayload_
    , _csiOnBehalfOfContentOwner = Nothing
    , _csiOnBehalfOfContentOwnerChannel = Nothing
    , _csiCallback = Nothing
    }


-- | V1 error format.
csiXgafv :: Lens' ChannelSectionsInsert (Maybe Xgafv)
csiXgafv = lens _csiXgafv (\ s a -> s{_csiXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include. The part names that
-- you can include in the parameter value are snippet and contentDetails.
csiPart :: Lens' ChannelSectionsInsert [Text]
csiPart
  = lens _csiPart (\ s a -> s{_csiPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csiUploadProtocol :: Lens' ChannelSectionsInsert (Maybe Text)
csiUploadProtocol
  = lens _csiUploadProtocol
      (\ s a -> s{_csiUploadProtocol = a})

-- | OAuth access token.
csiAccessToken :: Lens' ChannelSectionsInsert (Maybe Text)
csiAccessToken
  = lens _csiAccessToken
      (\ s a -> s{_csiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csiUploadType :: Lens' ChannelSectionsInsert (Maybe Text)
csiUploadType
  = lens _csiUploadType
      (\ s a -> s{_csiUploadType = a})

-- | Multipart request metadata.
csiPayload :: Lens' ChannelSectionsInsert ChannelSection
csiPayload
  = lens _csiPayload (\ s a -> s{_csiPayload = a})

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
csiOnBehalfOfContentOwner :: Lens' ChannelSectionsInsert (Maybe Text)
csiOnBehalfOfContentOwner
  = lens _csiOnBehalfOfContentOwner
      (\ s a -> s{_csiOnBehalfOfContentOwner = a})

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
csiOnBehalfOfContentOwnerChannel :: Lens' ChannelSectionsInsert (Maybe Text)
csiOnBehalfOfContentOwnerChannel
  = lens _csiOnBehalfOfContentOwnerChannel
      (\ s a -> s{_csiOnBehalfOfContentOwnerChannel = a})

-- | JSONP
csiCallback :: Lens' ChannelSectionsInsert (Maybe Text)
csiCallback
  = lens _csiCallback (\ s a -> s{_csiCallback = a})

instance GoogleRequest ChannelSectionsInsert where
        type Rs ChannelSectionsInsert = ChannelSection
        type Scopes ChannelSectionsInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient ChannelSectionsInsert'{..}
          = go _csiPart _csiXgafv _csiUploadProtocol
              _csiAccessToken
              _csiUploadType
              _csiOnBehalfOfContentOwner
              _csiOnBehalfOfContentOwnerChannel
              _csiCallback
              (Just AltJSON)
              _csiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ChannelSectionsInsertResource)
                      mempty
