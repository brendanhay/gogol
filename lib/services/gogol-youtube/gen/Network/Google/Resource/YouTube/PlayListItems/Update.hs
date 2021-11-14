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
-- Module      : Network.Google.Resource.YouTube.PlayListItems.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.playlistItems.update@.
module Network.Google.Resource.YouTube.PlayListItems.Update
    (
    -- * REST Resource
      PlayListItemsUpdateResource

    -- * Creating a Request
    , playListItemsUpdate
    , PlayListItemsUpdate

    -- * Request Lenses
    , pliuXgafv
    , pliuPart
    , pliuUploadProtocol
    , pliuAccessToken
    , pliuUploadType
    , pliuPayload
    , pliuOnBehalfOfContentOwner
    , pliuCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.playlistItems.update@ method which the
-- 'PlayListItemsUpdate' request conforms to.
type PlayListItemsUpdateResource =
     "youtube" :>
       "v3" :>
         "playlistItems" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PlayListItem :>
                             Put '[JSON] PlayListItem

-- | Updates an existing resource.
--
-- /See:/ 'playListItemsUpdate' smart constructor.
data PlayListItemsUpdate =
  PlayListItemsUpdate'
    { _pliuXgafv :: !(Maybe Xgafv)
    , _pliuPart :: ![Text]
    , _pliuUploadProtocol :: !(Maybe Text)
    , _pliuAccessToken :: !(Maybe Text)
    , _pliuUploadType :: !(Maybe Text)
    , _pliuPayload :: !PlayListItem
    , _pliuOnBehalfOfContentOwner :: !(Maybe Text)
    , _pliuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayListItemsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliuXgafv'
--
-- * 'pliuPart'
--
-- * 'pliuUploadProtocol'
--
-- * 'pliuAccessToken'
--
-- * 'pliuUploadType'
--
-- * 'pliuPayload'
--
-- * 'pliuOnBehalfOfContentOwner'
--
-- * 'pliuCallback'
playListItemsUpdate
    :: [Text] -- ^ 'pliuPart'
    -> PlayListItem -- ^ 'pliuPayload'
    -> PlayListItemsUpdate
playListItemsUpdate pPliuPart_ pPliuPayload_ =
  PlayListItemsUpdate'
    { _pliuXgafv = Nothing
    , _pliuPart = _Coerce # pPliuPart_
    , _pliuUploadProtocol = Nothing
    , _pliuAccessToken = Nothing
    , _pliuUploadType = Nothing
    , _pliuPayload = pPliuPayload_
    , _pliuOnBehalfOfContentOwner = Nothing
    , _pliuCallback = Nothing
    }


-- | V1 error format.
pliuXgafv :: Lens' PlayListItemsUpdate (Maybe Xgafv)
pliuXgafv
  = lens _pliuXgafv (\ s a -> s{_pliuXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include. Note that this method
-- will override the existing values for all of the mutable properties that
-- are contained in any parts that the parameter value specifies. For
-- example, a playlist item can specify a start time and end time, which
-- identify the times portion of the video that should play when users
-- watch the video in the playlist. If your request is updating a playlist
-- item that sets these values, and the request\'s part parameter value
-- includes the contentDetails part, the playlist item\'s start and end
-- times will be updated to whatever value the request body specifies. If
-- the request body does not specify values, the existing start and end
-- times will be removed and replaced with the default settings.
pliuPart :: Lens' PlayListItemsUpdate [Text]
pliuPart
  = lens _pliuPart (\ s a -> s{_pliuPart = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pliuUploadProtocol :: Lens' PlayListItemsUpdate (Maybe Text)
pliuUploadProtocol
  = lens _pliuUploadProtocol
      (\ s a -> s{_pliuUploadProtocol = a})

-- | OAuth access token.
pliuAccessToken :: Lens' PlayListItemsUpdate (Maybe Text)
pliuAccessToken
  = lens _pliuAccessToken
      (\ s a -> s{_pliuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pliuUploadType :: Lens' PlayListItemsUpdate (Maybe Text)
pliuUploadType
  = lens _pliuUploadType
      (\ s a -> s{_pliuUploadType = a})

-- | Multipart request metadata.
pliuPayload :: Lens' PlayListItemsUpdate PlayListItem
pliuPayload
  = lens _pliuPayload (\ s a -> s{_pliuPayload = a})

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
pliuOnBehalfOfContentOwner :: Lens' PlayListItemsUpdate (Maybe Text)
pliuOnBehalfOfContentOwner
  = lens _pliuOnBehalfOfContentOwner
      (\ s a -> s{_pliuOnBehalfOfContentOwner = a})

-- | JSONP
pliuCallback :: Lens' PlayListItemsUpdate (Maybe Text)
pliuCallback
  = lens _pliuCallback (\ s a -> s{_pliuCallback = a})

instance GoogleRequest PlayListItemsUpdate where
        type Rs PlayListItemsUpdate = PlayListItem
        type Scopes PlayListItemsUpdate =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient PlayListItemsUpdate'{..}
          = go _pliuPart _pliuXgafv _pliuUploadProtocol
              _pliuAccessToken
              _pliuUploadType
              _pliuOnBehalfOfContentOwner
              _pliuCallback
              (Just AltJSON)
              _pliuPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy PlayListItemsUpdateResource)
                      mempty
