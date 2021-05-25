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
-- Module      : Network.Google.Resource.YouTube.PlayListItems.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.playlistItems.delete@.
module Network.Google.Resource.YouTube.PlayListItems.Delete
    (
    -- * REST Resource
      PlayListItemsDeleteResource

    -- * Creating a Request
    , playListItemsDelete
    , PlayListItemsDelete

    -- * Request Lenses
    , plidXgafv
    , plidUploadProtocol
    , plidAccessToken
    , plidUploadType
    , plidOnBehalfOfContentOwner
    , plidId
    , plidCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.playlistItems.delete@ method which the
-- 'PlayListItemsDelete' request conforms to.
type PlayListItemsDeleteResource =
     "youtube" :>
       "v3" :>
         "playlistItems" :>
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
-- /See:/ 'playListItemsDelete' smart constructor.
data PlayListItemsDelete =
  PlayListItemsDelete'
    { _plidXgafv :: !(Maybe Xgafv)
    , _plidUploadProtocol :: !(Maybe Text)
    , _plidAccessToken :: !(Maybe Text)
    , _plidUploadType :: !(Maybe Text)
    , _plidOnBehalfOfContentOwner :: !(Maybe Text)
    , _plidId :: !Text
    , _plidCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlayListItemsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plidXgafv'
--
-- * 'plidUploadProtocol'
--
-- * 'plidAccessToken'
--
-- * 'plidUploadType'
--
-- * 'plidOnBehalfOfContentOwner'
--
-- * 'plidId'
--
-- * 'plidCallback'
playListItemsDelete
    :: Text -- ^ 'plidId'
    -> PlayListItemsDelete
playListItemsDelete pPlidId_ =
  PlayListItemsDelete'
    { _plidXgafv = Nothing
    , _plidUploadProtocol = Nothing
    , _plidAccessToken = Nothing
    , _plidUploadType = Nothing
    , _plidOnBehalfOfContentOwner = Nothing
    , _plidId = pPlidId_
    , _plidCallback = Nothing
    }


-- | V1 error format.
plidXgafv :: Lens' PlayListItemsDelete (Maybe Xgafv)
plidXgafv
  = lens _plidXgafv (\ s a -> s{_plidXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plidUploadProtocol :: Lens' PlayListItemsDelete (Maybe Text)
plidUploadProtocol
  = lens _plidUploadProtocol
      (\ s a -> s{_plidUploadProtocol = a})

-- | OAuth access token.
plidAccessToken :: Lens' PlayListItemsDelete (Maybe Text)
plidAccessToken
  = lens _plidAccessToken
      (\ s a -> s{_plidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plidUploadType :: Lens' PlayListItemsDelete (Maybe Text)
plidUploadType
  = lens _plidUploadType
      (\ s a -> s{_plidUploadType = a})

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
plidOnBehalfOfContentOwner :: Lens' PlayListItemsDelete (Maybe Text)
plidOnBehalfOfContentOwner
  = lens _plidOnBehalfOfContentOwner
      (\ s a -> s{_plidOnBehalfOfContentOwner = a})

plidId :: Lens' PlayListItemsDelete Text
plidId = lens _plidId (\ s a -> s{_plidId = a})

-- | JSONP
plidCallback :: Lens' PlayListItemsDelete (Maybe Text)
plidCallback
  = lens _plidCallback (\ s a -> s{_plidCallback = a})

instance GoogleRequest PlayListItemsDelete where
        type Rs PlayListItemsDelete = ()
        type Scopes PlayListItemsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient PlayListItemsDelete'{..}
          = go (Just _plidId) _plidXgafv _plidUploadProtocol
              _plidAccessToken
              _plidUploadType
              _plidOnBehalfOfContentOwner
              _plidCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy PlayListItemsDeleteResource)
                      mempty
