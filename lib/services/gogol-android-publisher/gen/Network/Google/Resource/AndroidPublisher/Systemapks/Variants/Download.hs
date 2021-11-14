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
-- Module      : Network.Google.Resource.AndroidPublisher.Systemapks.Variants.Download
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads a previously created system APK which is suitable for
-- inclusion in a system image.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.systemapks.variants.download@.
module Network.Google.Resource.AndroidPublisher.Systemapks.Variants.Download
    (
    -- * REST Resource
      SystemapksVariantsDownloadResource

    -- * Creating a Request
    , systemapksVariantsDownload
    , SystemapksVariantsDownload

    -- * Request Lenses
    , svdXgafv
    , svdVersionCode
    , svdUploadProtocol
    , svdPackageName
    , svdAccessToken
    , svdUploadType
    , svdVariantId
    , svdCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.systemapks.variants.download@ method which the
-- 'SystemapksVariantsDownload' request conforms to.
type SystemapksVariantsDownloadResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "systemApks" :>
               Capture "versionCode" (Textual Int64) :>
                 "variants" :>
                   CaptureMode "variantId" "download" (Textual Word32)
                     :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] ()
       :<|>
       "androidpublisher" :>
         "v3" :>
           "applications" :>
             Capture "packageName" Text :>
               "systemApks" :>
                 Capture "versionCode" (Textual Int64) :>
                   "variants" :>
                     CaptureMode "variantId" "download" (Textual Word32)
                       :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltMedia :>
                                   Get '[OctetStream] Stream

-- | Downloads a previously created system APK which is suitable for
-- inclusion in a system image.
--
-- /See:/ 'systemapksVariantsDownload' smart constructor.
data SystemapksVariantsDownload =
  SystemapksVariantsDownload'
    { _svdXgafv :: !(Maybe Xgafv)
    , _svdVersionCode :: !(Textual Int64)
    , _svdUploadProtocol :: !(Maybe Text)
    , _svdPackageName :: !Text
    , _svdAccessToken :: !(Maybe Text)
    , _svdUploadType :: !(Maybe Text)
    , _svdVariantId :: !(Textual Word32)
    , _svdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SystemapksVariantsDownload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svdXgafv'
--
-- * 'svdVersionCode'
--
-- * 'svdUploadProtocol'
--
-- * 'svdPackageName'
--
-- * 'svdAccessToken'
--
-- * 'svdUploadType'
--
-- * 'svdVariantId'
--
-- * 'svdCallback'
systemapksVariantsDownload
    :: Int64 -- ^ 'svdVersionCode'
    -> Text -- ^ 'svdPackageName'
    -> Word32 -- ^ 'svdVariantId'
    -> SystemapksVariantsDownload
systemapksVariantsDownload pSvdVersionCode_ pSvdPackageName_ pSvdVariantId_ =
  SystemapksVariantsDownload'
    { _svdXgafv = Nothing
    , _svdVersionCode = _Coerce # pSvdVersionCode_
    , _svdUploadProtocol = Nothing
    , _svdPackageName = pSvdPackageName_
    , _svdAccessToken = Nothing
    , _svdUploadType = Nothing
    , _svdVariantId = _Coerce # pSvdVariantId_
    , _svdCallback = Nothing
    }


-- | V1 error format.
svdXgafv :: Lens' SystemapksVariantsDownload (Maybe Xgafv)
svdXgafv = lens _svdXgafv (\ s a -> s{_svdXgafv = a})

-- | The version code of the App Bundle.
svdVersionCode :: Lens' SystemapksVariantsDownload Int64
svdVersionCode
  = lens _svdVersionCode
      (\ s a -> s{_svdVersionCode = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svdUploadProtocol :: Lens' SystemapksVariantsDownload (Maybe Text)
svdUploadProtocol
  = lens _svdUploadProtocol
      (\ s a -> s{_svdUploadProtocol = a})

-- | Package name of the app.
svdPackageName :: Lens' SystemapksVariantsDownload Text
svdPackageName
  = lens _svdPackageName
      (\ s a -> s{_svdPackageName = a})

-- | OAuth access token.
svdAccessToken :: Lens' SystemapksVariantsDownload (Maybe Text)
svdAccessToken
  = lens _svdAccessToken
      (\ s a -> s{_svdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svdUploadType :: Lens' SystemapksVariantsDownload (Maybe Text)
svdUploadType
  = lens _svdUploadType
      (\ s a -> s{_svdUploadType = a})

-- | The ID of a previously created system APK variant.
svdVariantId :: Lens' SystemapksVariantsDownload Word32
svdVariantId
  = lens _svdVariantId (\ s a -> s{_svdVariantId = a})
      . _Coerce

-- | JSONP
svdCallback :: Lens' SystemapksVariantsDownload (Maybe Text)
svdCallback
  = lens _svdCallback (\ s a -> s{_svdCallback = a})

instance GoogleRequest SystemapksVariantsDownload
         where
        type Rs SystemapksVariantsDownload = ()
        type Scopes SystemapksVariantsDownload =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient SystemapksVariantsDownload'{..}
          = go _svdPackageName _svdVersionCode _svdVariantId
              _svdXgafv
              _svdUploadProtocol
              _svdAccessToken
              _svdUploadType
              _svdCallback
              (Just AltJSON)
              androidPublisherService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy SystemapksVariantsDownloadResource)
                      mempty

instance GoogleRequest
           (MediaDownload SystemapksVariantsDownload)
         where
        type Rs (MediaDownload SystemapksVariantsDownload) =
             Stream
        type Scopes
               (MediaDownload SystemapksVariantsDownload)
             = Scopes SystemapksVariantsDownload
        requestClient
          (MediaDownload SystemapksVariantsDownload'{..})
          = go _svdPackageName _svdVersionCode _svdVariantId
              _svdXgafv
              _svdUploadProtocol
              _svdAccessToken
              _svdUploadType
              _svdCallback
              (Just AltMedia)
              androidPublisherService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy SystemapksVariantsDownloadResource)
                      mempty
