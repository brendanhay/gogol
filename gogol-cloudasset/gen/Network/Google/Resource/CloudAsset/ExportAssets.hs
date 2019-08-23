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
-- Module      : Network.Google.Resource.CloudAsset.ExportAssets
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
-- /See:/ <https://cloud.google.com/resource-manager/docs/cloud-asset-inventory/quickstart-cloud-asset-inventory Cloud Asset API Reference> for @cloudasset.exportAssets@.
module Network.Google.Resource.CloudAsset.ExportAssets
    (
    -- * REST Resource
      ExportAssetsResource

    -- * Creating a Request
    , exportAssets
    , ExportAssets

    -- * Request Lenses
    , eaParent
    , eaXgafv
    , eaUploadProtocol
    , eaAccessToken
    , eaUploadType
    , eaPayload
    , eaCallback
    ) where

import           Network.Google.CloudAsset.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudasset.exportAssets@ method which the
-- 'ExportAssets' request conforms to.
type ExportAssetsResource =
     "v1" :>
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
-- /See:/ 'exportAssets' smart constructor.
data ExportAssets =
  ExportAssets'
    { _eaParent         :: !Text
    , _eaXgafv          :: !(Maybe Xgafv)
    , _eaUploadProtocol :: !(Maybe Text)
    , _eaAccessToken    :: !(Maybe Text)
    , _eaUploadType     :: !(Maybe Text)
    , _eaPayload        :: !ExportAssetsRequest
    , _eaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExportAssets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaParent'
--
-- * 'eaXgafv'
--
-- * 'eaUploadProtocol'
--
-- * 'eaAccessToken'
--
-- * 'eaUploadType'
--
-- * 'eaPayload'
--
-- * 'eaCallback'
exportAssets
    :: Text -- ^ 'eaParent'
    -> ExportAssetsRequest -- ^ 'eaPayload'
    -> ExportAssets
exportAssets pEaParent_ pEaPayload_ =
  ExportAssets'
    { _eaParent = pEaParent_
    , _eaXgafv = Nothing
    , _eaUploadProtocol = Nothing
    , _eaAccessToken = Nothing
    , _eaUploadType = Nothing
    , _eaPayload = pEaPayload_
    , _eaCallback = Nothing
    }


-- | Required. The relative name of the root asset. This can only be an
-- organization number (such as \"organizations\/123\"), a project ID (such
-- as \"projects\/my-project-id\"), or a project number (such as
-- \"projects\/12345\"), or a folder number (such as \"folders\/123\").
eaParent :: Lens' ExportAssets Text
eaParent = lens _eaParent (\ s a -> s{_eaParent = a})

-- | V1 error format.
eaXgafv :: Lens' ExportAssets (Maybe Xgafv)
eaXgafv = lens _eaXgafv (\ s a -> s{_eaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eaUploadProtocol :: Lens' ExportAssets (Maybe Text)
eaUploadProtocol
  = lens _eaUploadProtocol
      (\ s a -> s{_eaUploadProtocol = a})

-- | OAuth access token.
eaAccessToken :: Lens' ExportAssets (Maybe Text)
eaAccessToken
  = lens _eaAccessToken
      (\ s a -> s{_eaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eaUploadType :: Lens' ExportAssets (Maybe Text)
eaUploadType
  = lens _eaUploadType (\ s a -> s{_eaUploadType = a})

-- | Multipart request metadata.
eaPayload :: Lens' ExportAssets ExportAssetsRequest
eaPayload
  = lens _eaPayload (\ s a -> s{_eaPayload = a})

-- | JSONP
eaCallback :: Lens' ExportAssets (Maybe Text)
eaCallback
  = lens _eaCallback (\ s a -> s{_eaCallback = a})

instance GoogleRequest ExportAssets where
        type Rs ExportAssets = Operation
        type Scopes ExportAssets =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ExportAssets'{..}
          = go _eaParent _eaXgafv _eaUploadProtocol
              _eaAccessToken
              _eaUploadType
              _eaCallback
              (Just AltJSON)
              _eaPayload
              cloudAssetService
          where go
                  = buildClient (Proxy :: Proxy ExportAssetsResource)
                      mempty
