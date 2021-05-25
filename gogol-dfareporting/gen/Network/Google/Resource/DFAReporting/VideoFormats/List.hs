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
-- Module      : Network.Google.Resource.DFAReporting.VideoFormats.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists available video formats.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.videoFormats.list@.
module Network.Google.Resource.DFAReporting.VideoFormats.List
    (
    -- * REST Resource
      VideoFormatsListResource

    -- * Creating a Request
    , videoFormatsList
    , VideoFormatsList

    -- * Request Lenses
    , vflXgafv
    , vflUploadProtocol
    , vflAccessToken
    , vflUploadType
    , vflProFileId
    , vflCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.videoFormats.list@ method which the
-- 'VideoFormatsList' request conforms to.
type VideoFormatsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "videoFormats" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] VideoFormatsListResponse

-- | Lists available video formats.
--
-- /See:/ 'videoFormatsList' smart constructor.
data VideoFormatsList =
  VideoFormatsList'
    { _vflXgafv :: !(Maybe Xgafv)
    , _vflUploadProtocol :: !(Maybe Text)
    , _vflAccessToken :: !(Maybe Text)
    , _vflUploadType :: !(Maybe Text)
    , _vflProFileId :: !(Textual Int64)
    , _vflCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideoFormatsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vflXgafv'
--
-- * 'vflUploadProtocol'
--
-- * 'vflAccessToken'
--
-- * 'vflUploadType'
--
-- * 'vflProFileId'
--
-- * 'vflCallback'
videoFormatsList
    :: Int64 -- ^ 'vflProFileId'
    -> VideoFormatsList
videoFormatsList pVflProFileId_ =
  VideoFormatsList'
    { _vflXgafv = Nothing
    , _vflUploadProtocol = Nothing
    , _vflAccessToken = Nothing
    , _vflUploadType = Nothing
    , _vflProFileId = _Coerce # pVflProFileId_
    , _vflCallback = Nothing
    }


-- | V1 error format.
vflXgafv :: Lens' VideoFormatsList (Maybe Xgafv)
vflXgafv = lens _vflXgafv (\ s a -> s{_vflXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vflUploadProtocol :: Lens' VideoFormatsList (Maybe Text)
vflUploadProtocol
  = lens _vflUploadProtocol
      (\ s a -> s{_vflUploadProtocol = a})

-- | OAuth access token.
vflAccessToken :: Lens' VideoFormatsList (Maybe Text)
vflAccessToken
  = lens _vflAccessToken
      (\ s a -> s{_vflAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vflUploadType :: Lens' VideoFormatsList (Maybe Text)
vflUploadType
  = lens _vflUploadType
      (\ s a -> s{_vflUploadType = a})

-- | User profile ID associated with this request.
vflProFileId :: Lens' VideoFormatsList Int64
vflProFileId
  = lens _vflProFileId (\ s a -> s{_vflProFileId = a})
      . _Coerce

-- | JSONP
vflCallback :: Lens' VideoFormatsList (Maybe Text)
vflCallback
  = lens _vflCallback (\ s a -> s{_vflCallback = a})

instance GoogleRequest VideoFormatsList where
        type Rs VideoFormatsList = VideoFormatsListResponse
        type Scopes VideoFormatsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient VideoFormatsList'{..}
          = go _vflProFileId _vflXgafv _vflUploadProtocol
              _vflAccessToken
              _vflUploadType
              _vflCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy VideoFormatsListResource)
                      mempty
