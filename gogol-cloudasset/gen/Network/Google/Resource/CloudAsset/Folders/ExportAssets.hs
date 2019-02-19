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
-- Module      : Network.Google.Resource.CloudAsset.Folders.ExportAssets
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
-- /See:/ <https://console.cloud.google.com/apis/api/cloudasset.googleapis.com/overview Cloud Asset API Reference> for @cloudasset.folders.exportAssets@.
module Network.Google.Resource.CloudAsset.Folders.ExportAssets
    (
    -- * REST Resource
      FoldersExportAssetsResource

    -- * Creating a Request
    , foldersExportAssets
    , FoldersExportAssets

    -- * Request Lenses
    , feaParent
    , feaXgafv
    , feaUploadProtocol
    , feaAccessToken
    , feaUploadType
    , feaPayload
    , feaCallback
    ) where

import           Network.Google.CloudAsset.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudasset.folders.exportAssets@ method which the
-- 'FoldersExportAssets' request conforms to.
type FoldersExportAssetsResource =
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
-- /See:/ 'foldersExportAssets' smart constructor.
data FoldersExportAssets =
  FoldersExportAssets'
    { _feaParent         :: !Text
    , _feaXgafv          :: !(Maybe Xgafv)
    , _feaUploadProtocol :: !(Maybe Text)
    , _feaAccessToken    :: !(Maybe Text)
    , _feaUploadType     :: !(Maybe Text)
    , _feaPayload        :: !ExportAssetsRequest
    , _feaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FoldersExportAssets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'feaParent'
--
-- * 'feaXgafv'
--
-- * 'feaUploadProtocol'
--
-- * 'feaAccessToken'
--
-- * 'feaUploadType'
--
-- * 'feaPayload'
--
-- * 'feaCallback'
foldersExportAssets
    :: Text -- ^ 'feaParent'
    -> ExportAssetsRequest -- ^ 'feaPayload'
    -> FoldersExportAssets
foldersExportAssets pFeaParent_ pFeaPayload_ =
  FoldersExportAssets'
    { _feaParent = pFeaParent_
    , _feaXgafv = Nothing
    , _feaUploadProtocol = Nothing
    , _feaAccessToken = Nothing
    , _feaUploadType = Nothing
    , _feaPayload = pFeaPayload_
    , _feaCallback = Nothing
    }

-- | Required. The relative name of the root asset. This can only be an
-- organization number (such as \"organizations\/123\"), a project ID (such
-- as \"projects\/my-project-id\"), a project number (such as
-- \"projects\/12345\"), or a folder number (such as \"folders\/123\").
feaParent :: Lens' FoldersExportAssets Text
feaParent
  = lens _feaParent (\ s a -> s{_feaParent = a})

-- | V1 error format.
feaXgafv :: Lens' FoldersExportAssets (Maybe Xgafv)
feaXgafv = lens _feaXgafv (\ s a -> s{_feaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
feaUploadProtocol :: Lens' FoldersExportAssets (Maybe Text)
feaUploadProtocol
  = lens _feaUploadProtocol
      (\ s a -> s{_feaUploadProtocol = a})

-- | OAuth access token.
feaAccessToken :: Lens' FoldersExportAssets (Maybe Text)
feaAccessToken
  = lens _feaAccessToken
      (\ s a -> s{_feaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
feaUploadType :: Lens' FoldersExportAssets (Maybe Text)
feaUploadType
  = lens _feaUploadType
      (\ s a -> s{_feaUploadType = a})

-- | Multipart request metadata.
feaPayload :: Lens' FoldersExportAssets ExportAssetsRequest
feaPayload
  = lens _feaPayload (\ s a -> s{_feaPayload = a})

-- | JSONP
feaCallback :: Lens' FoldersExportAssets (Maybe Text)
feaCallback
  = lens _feaCallback (\ s a -> s{_feaCallback = a})

instance GoogleRequest FoldersExportAssets where
        type Rs FoldersExportAssets = Operation
        type Scopes FoldersExportAssets =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersExportAssets'{..}
          = go _feaParent _feaXgafv _feaUploadProtocol
              _feaAccessToken
              _feaUploadType
              _feaCallback
              (Just AltJSON)
              _feaPayload
              cloudAssetService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersExportAssetsResource)
                      mempty
