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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Export
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports data to the specified destination by copying it from the DICOM
-- store. The metadata field type is OperationMetadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.export@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Export
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresExportResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresExport
    , ProjectsLocationsDataSetsDicomStoresExport

    -- * Request Lenses
    , pldsdseXgafv
    , pldsdseUploadProtocol
    , pldsdseAccessToken
    , pldsdseUploadType
    , pldsdsePayload
    , pldsdseName
    , pldsdseCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.export@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresExport' request conforms to.
type ProjectsLocationsDataSetsDicomStoresExportResource
     =
     "v1alpha" :>
       CaptureMode "name" "export" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ExportDicomDataRequest :>
                       Post '[JSON] Operation

-- | Exports data to the specified destination by copying it from the DICOM
-- store. The metadata field type is OperationMetadata.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresExport' smart constructor.
data ProjectsLocationsDataSetsDicomStoresExport =
  ProjectsLocationsDataSetsDicomStoresExport'
    { _pldsdseXgafv          :: !(Maybe Xgafv)
    , _pldsdseUploadProtocol :: !(Maybe Text)
    , _pldsdseAccessToken    :: !(Maybe Text)
    , _pldsdseUploadType     :: !(Maybe Text)
    , _pldsdsePayload        :: !ExportDicomDataRequest
    , _pldsdseName           :: !Text
    , _pldsdseCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdseXgafv'
--
-- * 'pldsdseUploadProtocol'
--
-- * 'pldsdseAccessToken'
--
-- * 'pldsdseUploadType'
--
-- * 'pldsdsePayload'
--
-- * 'pldsdseName'
--
-- * 'pldsdseCallback'
projectsLocationsDataSetsDicomStoresExport
    :: ExportDicomDataRequest -- ^ 'pldsdsePayload'
    -> Text -- ^ 'pldsdseName'
    -> ProjectsLocationsDataSetsDicomStoresExport
projectsLocationsDataSetsDicomStoresExport pPldsdsePayload_ pPldsdseName_ =
  ProjectsLocationsDataSetsDicomStoresExport'
    { _pldsdseXgafv = Nothing
    , _pldsdseUploadProtocol = Nothing
    , _pldsdseAccessToken = Nothing
    , _pldsdseUploadType = Nothing
    , _pldsdsePayload = pPldsdsePayload_
    , _pldsdseName = pPldsdseName_
    , _pldsdseCallback = Nothing
    }

-- | V1 error format.
pldsdseXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresExport (Maybe Xgafv)
pldsdseXgafv
  = lens _pldsdseXgafv (\ s a -> s{_pldsdseXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdseUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresExport (Maybe Text)
pldsdseUploadProtocol
  = lens _pldsdseUploadProtocol
      (\ s a -> s{_pldsdseUploadProtocol = a})

-- | OAuth access token.
pldsdseAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresExport (Maybe Text)
pldsdseAccessToken
  = lens _pldsdseAccessToken
      (\ s a -> s{_pldsdseAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdseUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresExport (Maybe Text)
pldsdseUploadType
  = lens _pldsdseUploadType
      (\ s a -> s{_pldsdseUploadType = a})

-- | Multipart request metadata.
pldsdsePayload :: Lens' ProjectsLocationsDataSetsDicomStoresExport ExportDicomDataRequest
pldsdsePayload
  = lens _pldsdsePayload
      (\ s a -> s{_pldsdsePayload = a})

-- | The DICOM store resource name from which the data should be exported
-- (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`).
pldsdseName :: Lens' ProjectsLocationsDataSetsDicomStoresExport Text
pldsdseName
  = lens _pldsdseName (\ s a -> s{_pldsdseName = a})

-- | JSONP
pldsdseCallback :: Lens' ProjectsLocationsDataSetsDicomStoresExport (Maybe Text)
pldsdseCallback
  = lens _pldsdseCallback
      (\ s a -> s{_pldsdseCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresExport
         where
        type Rs ProjectsLocationsDataSetsDicomStoresExport =
             Operation
        type Scopes
               ProjectsLocationsDataSetsDicomStoresExport
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresExport'{..}
          = go _pldsdseName _pldsdseXgafv
              _pldsdseUploadProtocol
              _pldsdseAccessToken
              _pldsdseUploadType
              _pldsdseCallback
              (Just AltJSON)
              _pldsdsePayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresExportResource)
                      mempty
