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
-- Module      : Network.Google.Resource.AndroidPublisher.InternalAppsharingartifacts.Uploadbundle
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an app bundle to internal app sharing. If you are using the
-- Google API client libraries, please increase the timeout of the http
-- request before calling this endpoint (a timeout of 2 minutes is
-- recommended). See [Timeouts and
-- Errors](https:\/\/developers.google.com\/api-client-library\/java\/google-api-java-client\/errors)
-- for an example in java.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.internalappsharingartifacts.uploadbundle@.
module Network.Google.Resource.AndroidPublisher.InternalAppsharingartifacts.Uploadbundle
    (
    -- * REST Resource
      InternalAppsharingartifactsUploadbundleResource

    -- * Creating a Request
    , internalAppsharingartifactsUploadbundle
    , InternalAppsharingartifactsUploadbundle

    -- * Request Lenses
    , iauXgafv
    , iauUploadProtocol
    , iauPackageName
    , iauAccessToken
    , iauUploadType
    , iauCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.internalappsharingartifacts.uploadbundle@ method which the
-- 'InternalAppsharingartifactsUploadbundle' request conforms to.
type InternalAppsharingartifactsUploadbundleResource
     =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           "internalappsharing" :>
             Capture "packageName" Text :>
               "artifacts" :>
                 "bundle" :>
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
                     "bundle" :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   QueryParam "uploadType" AltMedia :>
                                     AltMedia :>
                                       Post '[JSON] InternalAppSharingArtifact

-- | Uploads an app bundle to internal app sharing. If you are using the
-- Google API client libraries, please increase the timeout of the http
-- request before calling this endpoint (a timeout of 2 minutes is
-- recommended). See [Timeouts and
-- Errors](https:\/\/developers.google.com\/api-client-library\/java\/google-api-java-client\/errors)
-- for an example in java.
--
-- /See:/ 'internalAppsharingartifactsUploadbundle' smart constructor.
data InternalAppsharingartifactsUploadbundle =
  InternalAppsharingartifactsUploadbundle'
    { _iauXgafv :: !(Maybe Xgafv)
    , _iauUploadProtocol :: !(Maybe Text)
    , _iauPackageName :: !Text
    , _iauAccessToken :: !(Maybe Text)
    , _iauUploadType :: !(Maybe Text)
    , _iauCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InternalAppsharingartifactsUploadbundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iauXgafv'
--
-- * 'iauUploadProtocol'
--
-- * 'iauPackageName'
--
-- * 'iauAccessToken'
--
-- * 'iauUploadType'
--
-- * 'iauCallback'
internalAppsharingartifactsUploadbundle
    :: Text -- ^ 'iauPackageName'
    -> InternalAppsharingartifactsUploadbundle
internalAppsharingartifactsUploadbundle pIauPackageName_ =
  InternalAppsharingartifactsUploadbundle'
    { _iauXgafv = Nothing
    , _iauUploadProtocol = Nothing
    , _iauPackageName = pIauPackageName_
    , _iauAccessToken = Nothing
    , _iauUploadType = Nothing
    , _iauCallback = Nothing
    }


-- | V1 error format.
iauXgafv :: Lens' InternalAppsharingartifactsUploadbundle (Maybe Xgafv)
iauXgafv = lens _iauXgafv (\ s a -> s{_iauXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iauUploadProtocol :: Lens' InternalAppsharingartifactsUploadbundle (Maybe Text)
iauUploadProtocol
  = lens _iauUploadProtocol
      (\ s a -> s{_iauUploadProtocol = a})

-- | Package name of the app.
iauPackageName :: Lens' InternalAppsharingartifactsUploadbundle Text
iauPackageName
  = lens _iauPackageName
      (\ s a -> s{_iauPackageName = a})

-- | OAuth access token.
iauAccessToken :: Lens' InternalAppsharingartifactsUploadbundle (Maybe Text)
iauAccessToken
  = lens _iauAccessToken
      (\ s a -> s{_iauAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iauUploadType :: Lens' InternalAppsharingartifactsUploadbundle (Maybe Text)
iauUploadType
  = lens _iauUploadType
      (\ s a -> s{_iauUploadType = a})

-- | JSONP
iauCallback :: Lens' InternalAppsharingartifactsUploadbundle (Maybe Text)
iauCallback
  = lens _iauCallback (\ s a -> s{_iauCallback = a})

instance GoogleRequest
           InternalAppsharingartifactsUploadbundle
         where
        type Rs InternalAppsharingartifactsUploadbundle =
             InternalAppSharingArtifact
        type Scopes InternalAppsharingartifactsUploadbundle =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient
          InternalAppsharingartifactsUploadbundle'{..}
          = go _iauPackageName _iauXgafv _iauUploadProtocol
              _iauAccessToken
              _iauUploadType
              _iauCallback
              (Just AltJSON)
              androidPublisherService
          where go :<|> _
                  = buildClient
                      (Proxy ::
                         Proxy
                           InternalAppsharingartifactsUploadbundleResource)
                      mempty

instance GoogleRequest
           (MediaUpload InternalAppsharingartifactsUploadbundle)
         where
        type Rs
               (MediaUpload InternalAppsharingartifactsUploadbundle)
             = InternalAppSharingArtifact
        type Scopes
               (MediaUpload InternalAppsharingartifactsUploadbundle)
             = Scopes InternalAppsharingartifactsUploadbundle
        requestClient
          (MediaUpload
             InternalAppsharingartifactsUploadbundle'{..} body)
          = go _iauPackageName _iauXgafv _iauUploadProtocol
              _iauAccessToken
              _iauUploadType
              _iauCallback
              (Just AltJSON)
              (Just AltMedia)
              body
              androidPublisherService
          where _ :<|> go
                  = buildClient
                      (Proxy ::
                         Proxy
                           InternalAppsharingartifactsUploadbundleResource)
                      mempty
