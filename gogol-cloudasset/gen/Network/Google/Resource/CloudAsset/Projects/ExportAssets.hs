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
-- Module      : Network.Google.Resource.CloudAsset.Projects.ExportAssets
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports assets with time and resource types to a given Cloud Storage
-- location. The output format is newline-delimited JSON. This API
-- implements the google.longrunning.Operation API allowing you to keep
-- track of the export.
--
-- /See:/ <https://console.cloud.google.com/apis/api/cloudasset.googleapis.com/overview Cloud Asset API Reference> for @cloudasset.projects.exportAssets@.
module Network.Google.Resource.CloudAsset.Projects.ExportAssets
    (
    -- * REST Resource
      ProjectsExportAssetsResource

    -- * Creating a Request
    , projectsExportAssets
    , ProjectsExportAssets

    -- * Request Lenses
    , peaParent
    , peaXgafv
    , peaUploadProtocol
    , peaAccessToken
    , peaUploadType
    , peaPayload
    , peaCallback
    ) where

import           Network.Google.CloudAsset.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudasset.projects.exportAssets@ method which the
-- 'ProjectsExportAssets' request conforms to.
type ProjectsExportAssetsResource =
     "v1beta1" :>
       CaptureMode "parent" "exportAssets" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ExportAssetsRequest :>
                       Post '[JSON] Operation

-- | Exports assets with time and resource types to a given Cloud Storage
-- location. The output format is newline-delimited JSON. This API
-- implements the google.longrunning.Operation API allowing you to keep
-- track of the export.
--
-- /See:/ 'projectsExportAssets' smart constructor.
data ProjectsExportAssets =
  ProjectsExportAssets'
    { _peaParent         :: !Text
    , _peaXgafv          :: !(Maybe Xgafv)
    , _peaUploadProtocol :: !(Maybe Text)
    , _peaAccessToken    :: !(Maybe Text)
    , _peaUploadType     :: !(Maybe Text)
    , _peaPayload        :: !ExportAssetsRequest
    , _peaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsExportAssets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peaParent'
--
-- * 'peaXgafv'
--
-- * 'peaUploadProtocol'
--
-- * 'peaAccessToken'
--
-- * 'peaUploadType'
--
-- * 'peaPayload'
--
-- * 'peaCallback'
projectsExportAssets
    :: Text -- ^ 'peaParent'
    -> ExportAssetsRequest -- ^ 'peaPayload'
    -> ProjectsExportAssets
projectsExportAssets pPeaParent_ pPeaPayload_ =
  ProjectsExportAssets'
    { _peaParent = pPeaParent_
    , _peaXgafv = Nothing
    , _peaUploadProtocol = Nothing
    , _peaAccessToken = Nothing
    , _peaUploadType = Nothing
    , _peaPayload = pPeaPayload_
    , _peaCallback = Nothing
    }

-- | Required. The relative name of the root asset. This can only be an
-- organization number (such as \"organizations\/123\"), a project ID (such
-- as \"projects\/my-project-id\"), or a project number (such as
-- \"projects\/12345\").
peaParent :: Lens' ProjectsExportAssets Text
peaParent
  = lens _peaParent (\ s a -> s{_peaParent = a})

-- | V1 error format.
peaXgafv :: Lens' ProjectsExportAssets (Maybe Xgafv)
peaXgafv = lens _peaXgafv (\ s a -> s{_peaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
peaUploadProtocol :: Lens' ProjectsExportAssets (Maybe Text)
peaUploadProtocol
  = lens _peaUploadProtocol
      (\ s a -> s{_peaUploadProtocol = a})

-- | OAuth access token.
peaAccessToken :: Lens' ProjectsExportAssets (Maybe Text)
peaAccessToken
  = lens _peaAccessToken
      (\ s a -> s{_peaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
peaUploadType :: Lens' ProjectsExportAssets (Maybe Text)
peaUploadType
  = lens _peaUploadType
      (\ s a -> s{_peaUploadType = a})

-- | Multipart request metadata.
peaPayload :: Lens' ProjectsExportAssets ExportAssetsRequest
peaPayload
  = lens _peaPayload (\ s a -> s{_peaPayload = a})

-- | JSONP
peaCallback :: Lens' ProjectsExportAssets (Maybe Text)
peaCallback
  = lens _peaCallback (\ s a -> s{_peaCallback = a})

instance GoogleRequest ProjectsExportAssets where
        type Rs ProjectsExportAssets = Operation
        type Scopes ProjectsExportAssets =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsExportAssets'{..}
          = go _peaParent _peaXgafv _peaUploadProtocol
              _peaAccessToken
              _peaUploadType
              _peaCallback
              (Just AltJSON)
              _peaPayload
              cloudAssetService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsExportAssetsResource)
                      mempty
