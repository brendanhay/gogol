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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Sdf.Download
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves entities in SDF format.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.sdf.download@.
module Network.Google.Resource.DoubleClickBidManager.Sdf.Download
    (
    -- * REST Resource
      SdfDownloadResource

    -- * Creating a Request
    , sdfDownload
    , SdfDownload

    -- * Request Lenses
    , sdXgafv
    , sdUploadProtocol
    , sdAccessToken
    , sdUploadType
    , sdPayload
    , sdCallback
    ) where

import Network.Google.DoubleClickBids.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.sdf.download@ method which the
-- 'SdfDownload' request conforms to.
type SdfDownloadResource =
     "doubleclickbidmanager" :>
       "v1.1" :>
         "sdf" :>
           "download" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DownloadRequest :>
                           Post '[JSON] DownloadResponse

-- | Retrieves entities in SDF format.
--
-- /See:/ 'sdfDownload' smart constructor.
data SdfDownload =
  SdfDownload'
    { _sdXgafv :: !(Maybe Xgafv)
    , _sdUploadProtocol :: !(Maybe Text)
    , _sdAccessToken :: !(Maybe Text)
    , _sdUploadType :: !(Maybe Text)
    , _sdPayload :: !DownloadRequest
    , _sdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SdfDownload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdXgafv'
--
-- * 'sdUploadProtocol'
--
-- * 'sdAccessToken'
--
-- * 'sdUploadType'
--
-- * 'sdPayload'
--
-- * 'sdCallback'
sdfDownload
    :: DownloadRequest -- ^ 'sdPayload'
    -> SdfDownload
sdfDownload pSdPayload_ =
  SdfDownload'
    { _sdXgafv = Nothing
    , _sdUploadProtocol = Nothing
    , _sdAccessToken = Nothing
    , _sdUploadType = Nothing
    , _sdPayload = pSdPayload_
    , _sdCallback = Nothing
    }


-- | V1 error format.
sdXgafv :: Lens' SdfDownload (Maybe Xgafv)
sdXgafv = lens _sdXgafv (\ s a -> s{_sdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdUploadProtocol :: Lens' SdfDownload (Maybe Text)
sdUploadProtocol
  = lens _sdUploadProtocol
      (\ s a -> s{_sdUploadProtocol = a})

-- | OAuth access token.
sdAccessToken :: Lens' SdfDownload (Maybe Text)
sdAccessToken
  = lens _sdAccessToken
      (\ s a -> s{_sdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdUploadType :: Lens' SdfDownload (Maybe Text)
sdUploadType
  = lens _sdUploadType (\ s a -> s{_sdUploadType = a})

-- | Multipart request metadata.
sdPayload :: Lens' SdfDownload DownloadRequest
sdPayload
  = lens _sdPayload (\ s a -> s{_sdPayload = a})

-- | JSONP
sdCallback :: Lens' SdfDownload (Maybe Text)
sdCallback
  = lens _sdCallback (\ s a -> s{_sdCallback = a})

instance GoogleRequest SdfDownload where
        type Rs SdfDownload = DownloadResponse
        type Scopes SdfDownload =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient SdfDownload'{..}
          = go _sdXgafv _sdUploadProtocol _sdAccessToken
              _sdUploadType
              _sdCallback
              (Just AltJSON)
              _sdPayload
              doubleClickBidsService
          where go
                  = buildClient (Proxy :: Proxy SdfDownloadResource)
                      mempty
