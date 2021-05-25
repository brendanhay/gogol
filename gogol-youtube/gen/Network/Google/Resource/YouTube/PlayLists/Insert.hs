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
-- Module      : Network.Google.Resource.YouTube.PlayLists.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.playlists.insert@.
module Network.Google.Resource.YouTube.PlayLists.Insert
    (
    -- * REST Resource
      PlayListsInsertResource

    -- * Creating a Request
    , playListsInsert
    , PlayListsInsert

    -- * Request Lenses
    , pliXgafv
    , pliPart
    , pliUploadProtocol
    , pliAccessToken
    , pliUploadType
    , pliPayload
    , pliOnBehalfOfContentOwner
    , pliOnBehalfOfContentOwnerChannel
    , pliCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.playlists.insert@ method which the
-- 'PlayListsInsert' request conforms to.
type PlayListsInsertResource =
     "youtube" :>
       "v3" :>
         "playlists" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "onBehalfOfContentOwnerChannel" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] PlayList :> Post '[JSON] PlayList

-- | Inserts a new resource into this collection.
--
-- /See:/ 'playListsInsert' smart constructor.
data PlayListsInsert =
  PlayListsInsert'
    { _pliXgafv :: !(Maybe Xgafv)
    , _pliPart :: ![Text]
    , _pliUploadProtocol :: !(Maybe Text)
    , _pliAccessToken :: !(Maybe Text)
    , _pliUploadType :: !(Maybe Text)
    , _pliPayload :: !PlayList
    , _pliOnBehalfOfContentOwner :: !(Maybe Text)
    , _pliOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _pliCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayListsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliXgafv'
--
-- * 'pliPart'
--
-- * 'pliUploadProtocol'
--
-- * 'pliAccessToken'
--
-- * 'pliUploadType'
--
-- * 'pliPayload'
--
-- * 'pliOnBehalfOfContentOwner'
--
-- * 'pliOnBehalfOfContentOwnerChannel'
--
-- * 'pliCallback'
playListsInsert
    :: [Text] -- ^ 'pliPart'
    -> PlayList -- ^ 'pliPayload'
    -> PlayListsInsert
playListsInsert pPliPart_ pPliPayload_ =
  PlayListsInsert'
    { _pliXgafv = Nothing
    , _pliPart = _Coerce # pPliPart_
    , _pliUploadProtocol = Nothing
    , _pliAccessToken = Nothing
    , _pliUploadType = Nothing
    , _pliPayload = pPliPayload_
    , _pliOnBehalfOfContentOwner = Nothing
    , _pliOnBehalfOfContentOwnerChannel = Nothing
    , _pliCallback = Nothing
    }


-- | V1 error format.
pliXgafv :: Lens' PlayListsInsert (Maybe Xgafv)
pliXgafv = lens _pliXgafv (\ s a -> s{_pliXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include.
pliPart :: Lens' PlayListsInsert [Text]
pliPart
  = lens _pliPart (\ s a -> s{_pliPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pliUploadProtocol :: Lens' PlayListsInsert (Maybe Text)
pliUploadProtocol
  = lens _pliUploadProtocol
      (\ s a -> s{_pliUploadProtocol = a})

-- | OAuth access token.
pliAccessToken :: Lens' PlayListsInsert (Maybe Text)
pliAccessToken
  = lens _pliAccessToken
      (\ s a -> s{_pliAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pliUploadType :: Lens' PlayListsInsert (Maybe Text)
pliUploadType
  = lens _pliUploadType
      (\ s a -> s{_pliUploadType = a})

-- | Multipart request metadata.
pliPayload :: Lens' PlayListsInsert PlayList
pliPayload
  = lens _pliPayload (\ s a -> s{_pliPayload = a})

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
pliOnBehalfOfContentOwner :: Lens' PlayListsInsert (Maybe Text)
pliOnBehalfOfContentOwner
  = lens _pliOnBehalfOfContentOwner
      (\ s a -> s{_pliOnBehalfOfContentOwner = a})

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
pliOnBehalfOfContentOwnerChannel :: Lens' PlayListsInsert (Maybe Text)
pliOnBehalfOfContentOwnerChannel
  = lens _pliOnBehalfOfContentOwnerChannel
      (\ s a -> s{_pliOnBehalfOfContentOwnerChannel = a})

-- | JSONP
pliCallback :: Lens' PlayListsInsert (Maybe Text)
pliCallback
  = lens _pliCallback (\ s a -> s{_pliCallback = a})

instance GoogleRequest PlayListsInsert where
        type Rs PlayListsInsert = PlayList
        type Scopes PlayListsInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient PlayListsInsert'{..}
          = go _pliPart _pliXgafv _pliUploadProtocol
              _pliAccessToken
              _pliUploadType
              _pliOnBehalfOfContentOwner
              _pliOnBehalfOfContentOwnerChannel
              _pliCallback
              (Just AltJSON)
              _pliPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy PlayListsInsertResource)
                      mempty
