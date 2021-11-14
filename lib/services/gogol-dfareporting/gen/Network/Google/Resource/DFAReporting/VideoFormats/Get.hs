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
-- Module      : Network.Google.Resource.DFAReporting.VideoFormats.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one video format by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.videoFormats.get@.
module Network.Google.Resource.DFAReporting.VideoFormats.Get
    (
    -- * REST Resource
      VideoFormatsGetResource

    -- * Creating a Request
    , videoFormatsGet
    , VideoFormatsGet

    -- * Request Lenses
    , vfgXgafv
    , vfgUploadProtocol
    , vfgAccessToken
    , vfgUploadType
    , vfgProFileId
    , vfgId
    , vfgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.videoFormats.get@ method which the
-- 'VideoFormatsGet' request conforms to.
type VideoFormatsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "videoFormats" :>
               Capture "id" (Textual Int32) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] VideoFormat

-- | Gets one video format by ID.
--
-- /See:/ 'videoFormatsGet' smart constructor.
data VideoFormatsGet =
  VideoFormatsGet'
    { _vfgXgafv :: !(Maybe Xgafv)
    , _vfgUploadProtocol :: !(Maybe Text)
    , _vfgAccessToken :: !(Maybe Text)
    , _vfgUploadType :: !(Maybe Text)
    , _vfgProFileId :: !(Textual Int64)
    , _vfgId :: !(Textual Int32)
    , _vfgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VideoFormatsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vfgXgafv'
--
-- * 'vfgUploadProtocol'
--
-- * 'vfgAccessToken'
--
-- * 'vfgUploadType'
--
-- * 'vfgProFileId'
--
-- * 'vfgId'
--
-- * 'vfgCallback'
videoFormatsGet
    :: Int64 -- ^ 'vfgProFileId'
    -> Int32 -- ^ 'vfgId'
    -> VideoFormatsGet
videoFormatsGet pVfgProFileId_ pVfgId_ =
  VideoFormatsGet'
    { _vfgXgafv = Nothing
    , _vfgUploadProtocol = Nothing
    , _vfgAccessToken = Nothing
    , _vfgUploadType = Nothing
    , _vfgProFileId = _Coerce # pVfgProFileId_
    , _vfgId = _Coerce # pVfgId_
    , _vfgCallback = Nothing
    }


-- | V1 error format.
vfgXgafv :: Lens' VideoFormatsGet (Maybe Xgafv)
vfgXgafv = lens _vfgXgafv (\ s a -> s{_vfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vfgUploadProtocol :: Lens' VideoFormatsGet (Maybe Text)
vfgUploadProtocol
  = lens _vfgUploadProtocol
      (\ s a -> s{_vfgUploadProtocol = a})

-- | OAuth access token.
vfgAccessToken :: Lens' VideoFormatsGet (Maybe Text)
vfgAccessToken
  = lens _vfgAccessToken
      (\ s a -> s{_vfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vfgUploadType :: Lens' VideoFormatsGet (Maybe Text)
vfgUploadType
  = lens _vfgUploadType
      (\ s a -> s{_vfgUploadType = a})

-- | User profile ID associated with this request.
vfgProFileId :: Lens' VideoFormatsGet Int64
vfgProFileId
  = lens _vfgProFileId (\ s a -> s{_vfgProFileId = a})
      . _Coerce

-- | Video format ID.
vfgId :: Lens' VideoFormatsGet Int32
vfgId
  = lens _vfgId (\ s a -> s{_vfgId = a}) . _Coerce

-- | JSONP
vfgCallback :: Lens' VideoFormatsGet (Maybe Text)
vfgCallback
  = lens _vfgCallback (\ s a -> s{_vfgCallback = a})

instance GoogleRequest VideoFormatsGet where
        type Rs VideoFormatsGet = VideoFormat
        type Scopes VideoFormatsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient VideoFormatsGet'{..}
          = go _vfgProFileId _vfgId _vfgXgafv
              _vfgUploadProtocol
              _vfgAccessToken
              _vfgUploadType
              _vfgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy VideoFormatsGetResource)
                      mempty
