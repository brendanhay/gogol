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
-- Module      : Network.Google.Resource.CloudAsset.Organizations.ExportAssets
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
-- /See:/ <https://console.cloud.google.com/apis/api/cloudasset.googleapis.com/overview Cloud Asset API Reference> for @cloudasset.organizations.exportAssets@.
module Network.Google.Resource.CloudAsset.Organizations.ExportAssets
    (
    -- * REST Resource
      OrganizationsExportAssetsResource

    -- * Creating a Request
    , organizationsExportAssets
    , OrganizationsExportAssets

    -- * Request Lenses
    , oeaParent
    , oeaXgafv
    , oeaUploadProtocol
    , oeaAccessToken
    , oeaUploadType
    , oeaPayload
    , oeaCallback
    ) where

import           Network.Google.CloudAsset.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudasset.organizations.exportAssets@ method which the
-- 'OrganizationsExportAssets' request conforms to.
type OrganizationsExportAssetsResource =
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
-- /See:/ 'organizationsExportAssets' smart constructor.
data OrganizationsExportAssets =
  OrganizationsExportAssets'
    { _oeaParent         :: !Text
    , _oeaXgafv          :: !(Maybe Xgafv)
    , _oeaUploadProtocol :: !(Maybe Text)
    , _oeaAccessToken    :: !(Maybe Text)
    , _oeaUploadType     :: !(Maybe Text)
    , _oeaPayload        :: !ExportAssetsRequest
    , _oeaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsExportAssets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oeaParent'
--
-- * 'oeaXgafv'
--
-- * 'oeaUploadProtocol'
--
-- * 'oeaAccessToken'
--
-- * 'oeaUploadType'
--
-- * 'oeaPayload'
--
-- * 'oeaCallback'
organizationsExportAssets
    :: Text -- ^ 'oeaParent'
    -> ExportAssetsRequest -- ^ 'oeaPayload'
    -> OrganizationsExportAssets
organizationsExportAssets pOeaParent_ pOeaPayload_ =
  OrganizationsExportAssets'
    { _oeaParent = pOeaParent_
    , _oeaXgafv = Nothing
    , _oeaUploadProtocol = Nothing
    , _oeaAccessToken = Nothing
    , _oeaUploadType = Nothing
    , _oeaPayload = pOeaPayload_
    , _oeaCallback = Nothing
    }


-- | Required. The relative name of the root asset. This can only be an
-- organization number (such as \"organizations\/123\"), a project ID (such
-- as \"projects\/my-project-id\"), a project number (such as
-- \"projects\/12345\"), or a folder number (such as \"folders\/123\").
oeaParent :: Lens' OrganizationsExportAssets Text
oeaParent
  = lens _oeaParent (\ s a -> s{_oeaParent = a})

-- | V1 error format.
oeaXgafv :: Lens' OrganizationsExportAssets (Maybe Xgafv)
oeaXgafv = lens _oeaXgafv (\ s a -> s{_oeaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oeaUploadProtocol :: Lens' OrganizationsExportAssets (Maybe Text)
oeaUploadProtocol
  = lens _oeaUploadProtocol
      (\ s a -> s{_oeaUploadProtocol = a})

-- | OAuth access token.
oeaAccessToken :: Lens' OrganizationsExportAssets (Maybe Text)
oeaAccessToken
  = lens _oeaAccessToken
      (\ s a -> s{_oeaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oeaUploadType :: Lens' OrganizationsExportAssets (Maybe Text)
oeaUploadType
  = lens _oeaUploadType
      (\ s a -> s{_oeaUploadType = a})

-- | Multipart request metadata.
oeaPayload :: Lens' OrganizationsExportAssets ExportAssetsRequest
oeaPayload
  = lens _oeaPayload (\ s a -> s{_oeaPayload = a})

-- | JSONP
oeaCallback :: Lens' OrganizationsExportAssets (Maybe Text)
oeaCallback
  = lens _oeaCallback (\ s a -> s{_oeaCallback = a})

instance GoogleRequest OrganizationsExportAssets
         where
        type Rs OrganizationsExportAssets = Operation
        type Scopes OrganizationsExportAssets =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsExportAssets'{..}
          = go _oeaParent _oeaXgafv _oeaUploadProtocol
              _oeaAccessToken
              _oeaUploadType
              _oeaCallback
              (Just AltJSON)
              _oeaPayload
              cloudAssetService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsExportAssetsResource)
                      mempty
