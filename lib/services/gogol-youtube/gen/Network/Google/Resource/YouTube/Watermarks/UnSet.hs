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
-- Module      : Network.Google.Resource.YouTube.Watermarks.UnSet
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows removal of channel watermark.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.watermarks.unset@.
module Network.Google.Resource.YouTube.Watermarks.UnSet
    (
    -- * REST Resource
      WatermarksUnSetResource

    -- * Creating a Request
    , watermarksUnSet
    , WatermarksUnSet

    -- * Request Lenses
    , wusXgafv
    , wusUploadProtocol
    , wusAccessToken
    , wusUploadType
    , wusChannelId
    , wusOnBehalfOfContentOwner
    , wusCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.watermarks.unset@ method which the
-- 'WatermarksUnSet' request conforms to.
type WatermarksUnSetResource =
     "youtube" :>
       "v3" :>
         "watermarks" :>
           "unset" :>
             QueryParam "channelId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "onBehalfOfContentOwner" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Allows removal of channel watermark.
--
-- /See:/ 'watermarksUnSet' smart constructor.
data WatermarksUnSet =
  WatermarksUnSet'
    { _wusXgafv :: !(Maybe Xgafv)
    , _wusUploadProtocol :: !(Maybe Text)
    , _wusAccessToken :: !(Maybe Text)
    , _wusUploadType :: !(Maybe Text)
    , _wusChannelId :: !Text
    , _wusOnBehalfOfContentOwner :: !(Maybe Text)
    , _wusCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WatermarksUnSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wusXgafv'
--
-- * 'wusUploadProtocol'
--
-- * 'wusAccessToken'
--
-- * 'wusUploadType'
--
-- * 'wusChannelId'
--
-- * 'wusOnBehalfOfContentOwner'
--
-- * 'wusCallback'
watermarksUnSet
    :: Text -- ^ 'wusChannelId'
    -> WatermarksUnSet
watermarksUnSet pWusChannelId_ =
  WatermarksUnSet'
    { _wusXgafv = Nothing
    , _wusUploadProtocol = Nothing
    , _wusAccessToken = Nothing
    , _wusUploadType = Nothing
    , _wusChannelId = pWusChannelId_
    , _wusOnBehalfOfContentOwner = Nothing
    , _wusCallback = Nothing
    }


-- | V1 error format.
wusXgafv :: Lens' WatermarksUnSet (Maybe Xgafv)
wusXgafv = lens _wusXgafv (\ s a -> s{_wusXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
wusUploadProtocol :: Lens' WatermarksUnSet (Maybe Text)
wusUploadProtocol
  = lens _wusUploadProtocol
      (\ s a -> s{_wusUploadProtocol = a})

-- | OAuth access token.
wusAccessToken :: Lens' WatermarksUnSet (Maybe Text)
wusAccessToken
  = lens _wusAccessToken
      (\ s a -> s{_wusAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
wusUploadType :: Lens' WatermarksUnSet (Maybe Text)
wusUploadType
  = lens _wusUploadType
      (\ s a -> s{_wusUploadType = a})

wusChannelId :: Lens' WatermarksUnSet Text
wusChannelId
  = lens _wusChannelId (\ s a -> s{_wusChannelId = a})

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
wusOnBehalfOfContentOwner :: Lens' WatermarksUnSet (Maybe Text)
wusOnBehalfOfContentOwner
  = lens _wusOnBehalfOfContentOwner
      (\ s a -> s{_wusOnBehalfOfContentOwner = a})

-- | JSONP
wusCallback :: Lens' WatermarksUnSet (Maybe Text)
wusCallback
  = lens _wusCallback (\ s a -> s{_wusCallback = a})

instance GoogleRequest WatermarksUnSet where
        type Rs WatermarksUnSet = ()
        type Scopes WatermarksUnSet =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient WatermarksUnSet'{..}
          = go (Just _wusChannelId) _wusXgafv
              _wusUploadProtocol
              _wusAccessToken
              _wusUploadType
              _wusOnBehalfOfContentOwner
              _wusCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy WatermarksUnSetResource)
                      mempty
