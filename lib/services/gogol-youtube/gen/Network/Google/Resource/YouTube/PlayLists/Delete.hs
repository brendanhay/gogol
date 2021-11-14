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
-- Module      : Network.Google.Resource.YouTube.PlayLists.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.playlists.delete@.
module Network.Google.Resource.YouTube.PlayLists.Delete
    (
    -- * REST Resource
      PlayListsDeleteResource

    -- * Creating a Request
    , playListsDelete
    , PlayListsDelete

    -- * Request Lenses
    , pldXgafv
    , pldUploadProtocol
    , pldAccessToken
    , pldUploadType
    , pldOnBehalfOfContentOwner
    , pldId
    , pldCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.playlists.delete@ method which the
-- 'PlayListsDelete' request conforms to.
type PlayListsDeleteResource =
     "youtube" :>
       "v3" :>
         "playlists" :>
           QueryParam "id" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a resource.
--
-- /See:/ 'playListsDelete' smart constructor.
data PlayListsDelete =
  PlayListsDelete'
    { _pldXgafv :: !(Maybe Xgafv)
    , _pldUploadProtocol :: !(Maybe Text)
    , _pldAccessToken :: !(Maybe Text)
    , _pldUploadType :: !(Maybe Text)
    , _pldOnBehalfOfContentOwner :: !(Maybe Text)
    , _pldId :: !Text
    , _pldCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayListsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldXgafv'
--
-- * 'pldUploadProtocol'
--
-- * 'pldAccessToken'
--
-- * 'pldUploadType'
--
-- * 'pldOnBehalfOfContentOwner'
--
-- * 'pldId'
--
-- * 'pldCallback'
playListsDelete
    :: Text -- ^ 'pldId'
    -> PlayListsDelete
playListsDelete pPldId_ =
  PlayListsDelete'
    { _pldXgafv = Nothing
    , _pldUploadProtocol = Nothing
    , _pldAccessToken = Nothing
    , _pldUploadType = Nothing
    , _pldOnBehalfOfContentOwner = Nothing
    , _pldId = pPldId_
    , _pldCallback = Nothing
    }


-- | V1 error format.
pldXgafv :: Lens' PlayListsDelete (Maybe Xgafv)
pldXgafv = lens _pldXgafv (\ s a -> s{_pldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldUploadProtocol :: Lens' PlayListsDelete (Maybe Text)
pldUploadProtocol
  = lens _pldUploadProtocol
      (\ s a -> s{_pldUploadProtocol = a})

-- | OAuth access token.
pldAccessToken :: Lens' PlayListsDelete (Maybe Text)
pldAccessToken
  = lens _pldAccessToken
      (\ s a -> s{_pldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldUploadType :: Lens' PlayListsDelete (Maybe Text)
pldUploadType
  = lens _pldUploadType
      (\ s a -> s{_pldUploadType = a})

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
pldOnBehalfOfContentOwner :: Lens' PlayListsDelete (Maybe Text)
pldOnBehalfOfContentOwner
  = lens _pldOnBehalfOfContentOwner
      (\ s a -> s{_pldOnBehalfOfContentOwner = a})

pldId :: Lens' PlayListsDelete Text
pldId = lens _pldId (\ s a -> s{_pldId = a})

-- | JSONP
pldCallback :: Lens' PlayListsDelete (Maybe Text)
pldCallback
  = lens _pldCallback (\ s a -> s{_pldCallback = a})

instance GoogleRequest PlayListsDelete where
        type Rs PlayListsDelete = ()
        type Scopes PlayListsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient PlayListsDelete'{..}
          = go (Just _pldId) _pldXgafv _pldUploadProtocol
              _pldAccessToken
              _pldUploadType
              _pldOnBehalfOfContentOwner
              _pldCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy PlayListsDeleteResource)
                      mempty
