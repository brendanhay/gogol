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
-- Module      : Network.Google.Resource.YouTube.PlayLists.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.playlists.update@.
module Network.Google.Resource.YouTube.PlayLists.Update
    (
    -- * REST Resource
      PlayListsUpdateResource

    -- * Creating a Request
    , playListsUpdate
    , PlayListsUpdate

    -- * Request Lenses
    , pluXgafv
    , pluPart
    , pluUploadProtocol
    , pluAccessToken
    , pluUploadType
    , pluPayload
    , pluOnBehalfOfContentOwner
    , pluCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.playlists.update@ method which the
-- 'PlayListsUpdate' request conforms to.
type PlayListsUpdateResource =
     "youtube" :>
       "v3" :>
         "playlists" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PlayList :> Put '[JSON] PlayList

-- | Updates an existing resource.
--
-- /See:/ 'playListsUpdate' smart constructor.
data PlayListsUpdate =
  PlayListsUpdate'
    { _pluXgafv :: !(Maybe Xgafv)
    , _pluPart :: ![Text]
    , _pluUploadProtocol :: !(Maybe Text)
    , _pluAccessToken :: !(Maybe Text)
    , _pluUploadType :: !(Maybe Text)
    , _pluPayload :: !PlayList
    , _pluOnBehalfOfContentOwner :: !(Maybe Text)
    , _pluCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayListsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pluXgafv'
--
-- * 'pluPart'
--
-- * 'pluUploadProtocol'
--
-- * 'pluAccessToken'
--
-- * 'pluUploadType'
--
-- * 'pluPayload'
--
-- * 'pluOnBehalfOfContentOwner'
--
-- * 'pluCallback'
playListsUpdate
    :: [Text] -- ^ 'pluPart'
    -> PlayList -- ^ 'pluPayload'
    -> PlayListsUpdate
playListsUpdate pPluPart_ pPluPayload_ =
  PlayListsUpdate'
    { _pluXgafv = Nothing
    , _pluPart = _Coerce # pPluPart_
    , _pluUploadProtocol = Nothing
    , _pluAccessToken = Nothing
    , _pluUploadType = Nothing
    , _pluPayload = pPluPayload_
    , _pluOnBehalfOfContentOwner = Nothing
    , _pluCallback = Nothing
    }


-- | V1 error format.
pluXgafv :: Lens' PlayListsUpdate (Maybe Xgafv)
pluXgafv = lens _pluXgafv (\ s a -> s{_pluXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include. Note that this method
-- will override the existing values for mutable properties that are
-- contained in any parts that the request body specifies. For example, a
-- playlist\'s description is contained in the snippet part, which must be
-- included in the request body. If the request does not specify a value
-- for the snippet.description property, the playlist\'s existing
-- description will be deleted.
pluPart :: Lens' PlayListsUpdate [Text]
pluPart
  = lens _pluPart (\ s a -> s{_pluPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pluUploadProtocol :: Lens' PlayListsUpdate (Maybe Text)
pluUploadProtocol
  = lens _pluUploadProtocol
      (\ s a -> s{_pluUploadProtocol = a})

-- | OAuth access token.
pluAccessToken :: Lens' PlayListsUpdate (Maybe Text)
pluAccessToken
  = lens _pluAccessToken
      (\ s a -> s{_pluAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pluUploadType :: Lens' PlayListsUpdate (Maybe Text)
pluUploadType
  = lens _pluUploadType
      (\ s a -> s{_pluUploadType = a})

-- | Multipart request metadata.
pluPayload :: Lens' PlayListsUpdate PlayList
pluPayload
  = lens _pluPayload (\ s a -> s{_pluPayload = a})

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
pluOnBehalfOfContentOwner :: Lens' PlayListsUpdate (Maybe Text)
pluOnBehalfOfContentOwner
  = lens _pluOnBehalfOfContentOwner
      (\ s a -> s{_pluOnBehalfOfContentOwner = a})

-- | JSONP
pluCallback :: Lens' PlayListsUpdate (Maybe Text)
pluCallback
  = lens _pluCallback (\ s a -> s{_pluCallback = a})

instance GoogleRequest PlayListsUpdate where
        type Rs PlayListsUpdate = PlayList
        type Scopes PlayListsUpdate =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient PlayListsUpdate'{..}
          = go _pluPart _pluXgafv _pluUploadProtocol
              _pluAccessToken
              _pluUploadType
              _pluOnBehalfOfContentOwner
              _pluCallback
              (Just AltJSON)
              _pluPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy PlayListsUpdateResource)
                      mempty
