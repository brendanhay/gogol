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
-- Module      : Network.Google.Resource.AndroidPublisher.InternalAppsharingartifacts.Uploadapk
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an APK to internal app sharing. If you are using the Google API
-- client libraries, please increase the timeout of the http request before
-- calling this endpoint (a timeout of 2 minutes is recommended). See
-- [Timeouts and
-- Errors](https:\/\/developers.google.com\/api-client-library\/java\/google-api-java-client\/errors)
-- for an example in java.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.internalappsharingartifacts.uploadapk@.
module Network.Google.Resource.AndroidPublisher.InternalAppsharingartifacts.Uploadapk
    (
    -- * REST Resource
      InternalAppsharingartifactsUploadapkResource

    -- * Creating a Request
    , internalAppsharingartifactsUploadapk
    , InternalAppsharingartifactsUploadapk

    -- * Request Lenses
    , iXgafv
    , iUploadProtocol
    , iPackageName
    , iAccessToken
    , iUploadType
    , iCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.internalappsharingartifacts.uploadapk@ method which the
-- 'InternalAppsharingartifactsUploadapk' request conforms to.
type InternalAppsharingartifactsUploadapkResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           "internalappsharing" :>
             Capture "packageName" Text :>
               "artifacts" :>
                 "apk" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON] InternalAppSharingArtifact
       :<|>
       "upload" :>
         "androidpublisher" :>
           "v3" :>
             "applications" :>
               "internalappsharing" :>
                 Capture "packageName" Text :>
                   "artifacts" :>
                     "apk" :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   QueryParam "uploadType" AltMedia :>
                                     AltMedia :>
                                       Post '[JSON] InternalAppSharingArtifact

-- | Uploads an APK to internal app sharing. If you are using the Google API
-- client libraries, please increase the timeout of the http request before
-- calling this endpoint (a timeout of 2 minutes is recommended). See
-- [Timeouts and
-- Errors](https:\/\/developers.google.com\/api-client-library\/java\/google-api-java-client\/errors)
-- for an example in java.
--
-- /See:/ 'internalAppsharingartifactsUploadapk' smart constructor.
data InternalAppsharingartifactsUploadapk =
  InternalAppsharingartifactsUploadapk'
    { _iXgafv :: !(Maybe Xgafv)
    , _iUploadProtocol :: !(Maybe Text)
    , _iPackageName :: !Text
    , _iAccessToken :: !(Maybe Text)
    , _iUploadType :: !(Maybe Text)
    , _iCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InternalAppsharingartifactsUploadapk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iXgafv'
--
-- * 'iUploadProtocol'
--
-- * 'iPackageName'
--
-- * 'iAccessToken'
--
-- * 'iUploadType'
--
-- * 'iCallback'
internalAppsharingartifactsUploadapk
    :: Text -- ^ 'iPackageName'
    -> InternalAppsharingartifactsUploadapk
internalAppsharingartifactsUploadapk pIPackageName_ =
  InternalAppsharingartifactsUploadapk'
    { _iXgafv = Nothing
    , _iUploadProtocol = Nothing
    , _iPackageName = pIPackageName_
    , _iAccessToken = Nothing
    , _iUploadType = Nothing
    , _iCallback = Nothing
    }


-- | V1 error format.
iXgafv :: Lens' InternalAppsharingartifactsUploadapk (Maybe Xgafv)
iXgafv = lens _iXgafv (\ s a -> s{_iXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iUploadProtocol :: Lens' InternalAppsharingartifactsUploadapk (Maybe Text)
iUploadProtocol
  = lens _iUploadProtocol
      (\ s a -> s{_iUploadProtocol = a})

-- | Package name of the app.
iPackageName :: Lens' InternalAppsharingartifactsUploadapk Text
iPackageName
  = lens _iPackageName (\ s a -> s{_iPackageName = a})

-- | OAuth access token.
iAccessToken :: Lens' InternalAppsharingartifactsUploadapk (Maybe Text)
iAccessToken
  = lens _iAccessToken (\ s a -> s{_iAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iUploadType :: Lens' InternalAppsharingartifactsUploadapk (Maybe Text)
iUploadType
  = lens _iUploadType (\ s a -> s{_iUploadType = a})

-- | JSONP
iCallback :: Lens' InternalAppsharingartifactsUploadapk (Maybe Text)
iCallback
  = lens _iCallback (\ s a -> s{_iCallback = a})

instance GoogleRequest
           InternalAppsharingartifactsUploadapk
         where
        type Rs InternalAppsharingartifactsUploadapk =
             InternalAppSharingArtifact
        type Scopes InternalAppsharingartifactsUploadapk =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient
          InternalAppsharingartifactsUploadapk'{..}
          = go _iPackageName _iXgafv _iUploadProtocol
              _iAccessToken
              _iUploadType
              _iCallback
              (Just AltJSON)
              androidPublisherService
          where go :<|> _
                  = buildClient
                      (Proxy ::
                         Proxy InternalAppsharingartifactsUploadapkResource)
                      mempty

instance GoogleRequest
           (MediaUpload InternalAppsharingartifactsUploadapk)
         where
        type Rs
               (MediaUpload InternalAppsharingartifactsUploadapk)
             = InternalAppSharingArtifact
        type Scopes
               (MediaUpload InternalAppsharingartifactsUploadapk)
             = Scopes InternalAppsharingartifactsUploadapk
        requestClient
          (MediaUpload
             InternalAppsharingartifactsUploadapk'{..} body)
          = go _iPackageName _iXgafv _iUploadProtocol
              _iAccessToken
              _iUploadType
              _iCallback
              (Just AltJSON)
              (Just AltMedia)
              body
              androidPublisherService
          where _ :<|> go
                  = buildClient
                      (Proxy ::
                         Proxy InternalAppsharingartifactsUploadapkResource)
                      mempty
