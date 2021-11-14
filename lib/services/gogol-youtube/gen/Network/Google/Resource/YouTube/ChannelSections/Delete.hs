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
-- Module      : Network.Google.Resource.YouTube.ChannelSections.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.channelSections.delete@.
module Network.Google.Resource.YouTube.ChannelSections.Delete
    (
    -- * REST Resource
      ChannelSectionsDeleteResource

    -- * Creating a Request
    , channelSectionsDelete
    , ChannelSectionsDelete

    -- * Request Lenses
    , csdXgafv
    , csdUploadProtocol
    , csdAccessToken
    , csdUploadType
    , csdOnBehalfOfContentOwner
    , csdId
    , csdCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.channelSections.delete@ method which the
-- 'ChannelSectionsDelete' request conforms to.
type ChannelSectionsDeleteResource =
     "youtube" :>
       "v3" :>
         "channelSections" :>
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
-- /See:/ 'channelSectionsDelete' smart constructor.
data ChannelSectionsDelete =
  ChannelSectionsDelete'
    { _csdXgafv :: !(Maybe Xgafv)
    , _csdUploadProtocol :: !(Maybe Text)
    , _csdAccessToken :: !(Maybe Text)
    , _csdUploadType :: !(Maybe Text)
    , _csdOnBehalfOfContentOwner :: !(Maybe Text)
    , _csdId :: !Text
    , _csdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChannelSectionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdXgafv'
--
-- * 'csdUploadProtocol'
--
-- * 'csdAccessToken'
--
-- * 'csdUploadType'
--
-- * 'csdOnBehalfOfContentOwner'
--
-- * 'csdId'
--
-- * 'csdCallback'
channelSectionsDelete
    :: Text -- ^ 'csdId'
    -> ChannelSectionsDelete
channelSectionsDelete pCsdId_ =
  ChannelSectionsDelete'
    { _csdXgafv = Nothing
    , _csdUploadProtocol = Nothing
    , _csdAccessToken = Nothing
    , _csdUploadType = Nothing
    , _csdOnBehalfOfContentOwner = Nothing
    , _csdId = pCsdId_
    , _csdCallback = Nothing
    }


-- | V1 error format.
csdXgafv :: Lens' ChannelSectionsDelete (Maybe Xgafv)
csdXgafv = lens _csdXgafv (\ s a -> s{_csdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csdUploadProtocol :: Lens' ChannelSectionsDelete (Maybe Text)
csdUploadProtocol
  = lens _csdUploadProtocol
      (\ s a -> s{_csdUploadProtocol = a})

-- | OAuth access token.
csdAccessToken :: Lens' ChannelSectionsDelete (Maybe Text)
csdAccessToken
  = lens _csdAccessToken
      (\ s a -> s{_csdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csdUploadType :: Lens' ChannelSectionsDelete (Maybe Text)
csdUploadType
  = lens _csdUploadType
      (\ s a -> s{_csdUploadType = a})

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
csdOnBehalfOfContentOwner :: Lens' ChannelSectionsDelete (Maybe Text)
csdOnBehalfOfContentOwner
  = lens _csdOnBehalfOfContentOwner
      (\ s a -> s{_csdOnBehalfOfContentOwner = a})

csdId :: Lens' ChannelSectionsDelete Text
csdId = lens _csdId (\ s a -> s{_csdId = a})

-- | JSONP
csdCallback :: Lens' ChannelSectionsDelete (Maybe Text)
csdCallback
  = lens _csdCallback (\ s a -> s{_csdCallback = a})

instance GoogleRequest ChannelSectionsDelete where
        type Rs ChannelSectionsDelete = ()
        type Scopes ChannelSectionsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient ChannelSectionsDelete'{..}
          = go (Just _csdId) _csdXgafv _csdUploadProtocol
              _csdAccessToken
              _csdUploadType
              _csdOnBehalfOfContentOwner
              _csdCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ChannelSectionsDeleteResource)
                      mempty
