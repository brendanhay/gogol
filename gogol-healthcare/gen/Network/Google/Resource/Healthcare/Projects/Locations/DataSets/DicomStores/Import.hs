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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Import
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports data into the DICOM store by copying it from the specified
-- source. For errors, the Operation will be populated with error details
-- (in the form of ImportDicomDataErrorDetails in error.details), which
-- will hold finer-grained error information. The metadata field type is
-- OperationMetadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.import@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Import
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresImportResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresImport
    , ProjectsLocationsDataSetsDicomStoresImport

    -- * Request Lenses
    , pldsdsiXgafv
    , pldsdsiUploadProtocol
    , pldsdsiAccessToken
    , pldsdsiUploadType
    , pldsdsiPayload
    , pldsdsiName
    , pldsdsiCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.import@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresImport' request conforms to.
type ProjectsLocationsDataSetsDicomStoresImportResource
     =
     "v1beta1" :>
       CaptureMode "name" "import" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ImportDicomDataRequest :>
                       Post '[JSON] Operation

-- | Imports data into the DICOM store by copying it from the specified
-- source. For errors, the Operation will be populated with error details
-- (in the form of ImportDicomDataErrorDetails in error.details), which
-- will hold finer-grained error information. The metadata field type is
-- OperationMetadata.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresImport' smart constructor.
data ProjectsLocationsDataSetsDicomStoresImport =
  ProjectsLocationsDataSetsDicomStoresImport'
    { _pldsdsiXgafv          :: !(Maybe Xgafv)
    , _pldsdsiUploadProtocol :: !(Maybe Text)
    , _pldsdsiAccessToken    :: !(Maybe Text)
    , _pldsdsiUploadType     :: !(Maybe Text)
    , _pldsdsiPayload        :: !ImportDicomDataRequest
    , _pldsdsiName           :: !Text
    , _pldsdsiCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsiXgafv'
--
-- * 'pldsdsiUploadProtocol'
--
-- * 'pldsdsiAccessToken'
--
-- * 'pldsdsiUploadType'
--
-- * 'pldsdsiPayload'
--
-- * 'pldsdsiName'
--
-- * 'pldsdsiCallback'
projectsLocationsDataSetsDicomStoresImport
    :: ImportDicomDataRequest -- ^ 'pldsdsiPayload'
    -> Text -- ^ 'pldsdsiName'
    -> ProjectsLocationsDataSetsDicomStoresImport
projectsLocationsDataSetsDicomStoresImport pPldsdsiPayload_ pPldsdsiName_ =
  ProjectsLocationsDataSetsDicomStoresImport'
    { _pldsdsiXgafv = Nothing
    , _pldsdsiUploadProtocol = Nothing
    , _pldsdsiAccessToken = Nothing
    , _pldsdsiUploadType = Nothing
    , _pldsdsiPayload = pPldsdsiPayload_
    , _pldsdsiName = pPldsdsiName_
    , _pldsdsiCallback = Nothing
    }


-- | V1 error format.
pldsdsiXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresImport (Maybe Xgafv)
pldsdsiXgafv
  = lens _pldsdsiXgafv (\ s a -> s{_pldsdsiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsiUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresImport (Maybe Text)
pldsdsiUploadProtocol
  = lens _pldsdsiUploadProtocol
      (\ s a -> s{_pldsdsiUploadProtocol = a})

-- | OAuth access token.
pldsdsiAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresImport (Maybe Text)
pldsdsiAccessToken
  = lens _pldsdsiAccessToken
      (\ s a -> s{_pldsdsiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsiUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresImport (Maybe Text)
pldsdsiUploadType
  = lens _pldsdsiUploadType
      (\ s a -> s{_pldsdsiUploadType = a})

-- | Multipart request metadata.
pldsdsiPayload :: Lens' ProjectsLocationsDataSetsDicomStoresImport ImportDicomDataRequest
pldsdsiPayload
  = lens _pldsdsiPayload
      (\ s a -> s{_pldsdsiPayload = a})

-- | The name of the DICOM store resource into which the data is imported
-- (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`).
pldsdsiName :: Lens' ProjectsLocationsDataSetsDicomStoresImport Text
pldsdsiName
  = lens _pldsdsiName (\ s a -> s{_pldsdsiName = a})

-- | JSONP
pldsdsiCallback :: Lens' ProjectsLocationsDataSetsDicomStoresImport (Maybe Text)
pldsdsiCallback
  = lens _pldsdsiCallback
      (\ s a -> s{_pldsdsiCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresImport
         where
        type Rs ProjectsLocationsDataSetsDicomStoresImport =
             Operation
        type Scopes
               ProjectsLocationsDataSetsDicomStoresImport
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresImport'{..}
          = go _pldsdsiName _pldsdsiXgafv
              _pldsdsiUploadProtocol
              _pldsdsiAccessToken
              _pldsdsiUploadType
              _pldsdsiCallback
              (Just AltJSON)
              _pldsdsiPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresImportResource)
                      mempty
