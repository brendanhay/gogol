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
-- Module      : Network.Google.Resource.YouTube.ChannelSections.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing resource.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.channelSections.update@.
module Network.Google.Resource.YouTube.ChannelSections.Update
    (
    -- * REST Resource
      ChannelSectionsUpdateResource

    -- * Creating a Request
    , channelSectionsUpdate
    , ChannelSectionsUpdate

    -- * Request Lenses
    , csuXgafv
    , csuPart
    , csuUploadProtocol
    , csuAccessToken
    , csuUploadType
    , csuPayload
    , csuOnBehalfOfContentOwner
    , csuCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.channelSections.update@ method which the
-- 'ChannelSectionsUpdate' request conforms to.
type ChannelSectionsUpdateResource =
     "youtube" :>
       "v3" :>
         "channelSections" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "onBehalfOfContentOwner" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ChannelSection :>
                             Put '[JSON] ChannelSection

-- | Updates an existing resource.
--
-- /See:/ 'channelSectionsUpdate' smart constructor.
data ChannelSectionsUpdate =
  ChannelSectionsUpdate'
    { _csuXgafv :: !(Maybe Xgafv)
    , _csuPart :: ![Text]
    , _csuUploadProtocol :: !(Maybe Text)
    , _csuAccessToken :: !(Maybe Text)
    , _csuUploadType :: !(Maybe Text)
    , _csuPayload :: !ChannelSection
    , _csuOnBehalfOfContentOwner :: !(Maybe Text)
    , _csuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChannelSectionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csuXgafv'
--
-- * 'csuPart'
--
-- * 'csuUploadProtocol'
--
-- * 'csuAccessToken'
--
-- * 'csuUploadType'
--
-- * 'csuPayload'
--
-- * 'csuOnBehalfOfContentOwner'
--
-- * 'csuCallback'
channelSectionsUpdate
    :: [Text] -- ^ 'csuPart'
    -> ChannelSection -- ^ 'csuPayload'
    -> ChannelSectionsUpdate
channelSectionsUpdate pCsuPart_ pCsuPayload_ =
  ChannelSectionsUpdate'
    { _csuXgafv = Nothing
    , _csuPart = _Coerce # pCsuPart_
    , _csuUploadProtocol = Nothing
    , _csuAccessToken = Nothing
    , _csuUploadType = Nothing
    , _csuPayload = pCsuPayload_
    , _csuOnBehalfOfContentOwner = Nothing
    , _csuCallback = Nothing
    }


-- | V1 error format.
csuXgafv :: Lens' ChannelSectionsUpdate (Maybe Xgafv)
csuXgafv = lens _csuXgafv (\ s a -> s{_csuXgafv = a})

-- | The *part* parameter serves two purposes in this operation. It
-- identifies the properties that the write operation will set as well as
-- the properties that the API response will include. The part names that
-- you can include in the parameter value are snippet and contentDetails.
csuPart :: Lens' ChannelSectionsUpdate [Text]
csuPart
  = lens _csuPart (\ s a -> s{_csuPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csuUploadProtocol :: Lens' ChannelSectionsUpdate (Maybe Text)
csuUploadProtocol
  = lens _csuUploadProtocol
      (\ s a -> s{_csuUploadProtocol = a})

-- | OAuth access token.
csuAccessToken :: Lens' ChannelSectionsUpdate (Maybe Text)
csuAccessToken
  = lens _csuAccessToken
      (\ s a -> s{_csuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csuUploadType :: Lens' ChannelSectionsUpdate (Maybe Text)
csuUploadType
  = lens _csuUploadType
      (\ s a -> s{_csuUploadType = a})

-- | Multipart request metadata.
csuPayload :: Lens' ChannelSectionsUpdate ChannelSection
csuPayload
  = lens _csuPayload (\ s a -> s{_csuPayload = a})

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
csuOnBehalfOfContentOwner :: Lens' ChannelSectionsUpdate (Maybe Text)
csuOnBehalfOfContentOwner
  = lens _csuOnBehalfOfContentOwner
      (\ s a -> s{_csuOnBehalfOfContentOwner = a})

-- | JSONP
csuCallback :: Lens' ChannelSectionsUpdate (Maybe Text)
csuCallback
  = lens _csuCallback (\ s a -> s{_csuCallback = a})

instance GoogleRequest ChannelSectionsUpdate where
        type Rs ChannelSectionsUpdate = ChannelSection
        type Scopes ChannelSectionsUpdate =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient ChannelSectionsUpdate'{..}
          = go _csuPart _csuXgafv _csuUploadProtocol
              _csuAccessToken
              _csuUploadType
              _csuOnBehalfOfContentOwner
              _csuCallback
              (Just AltJSON)
              _csuPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ChannelSectionsUpdateResource)
                      mempty
