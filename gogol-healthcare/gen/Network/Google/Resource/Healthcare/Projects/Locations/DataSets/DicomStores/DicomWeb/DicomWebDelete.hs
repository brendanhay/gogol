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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.DicomWeb.DicomWebDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Handles DELETE requests equivalent to the GET requests specified in the
-- WADO-RS standard. Since this implements an industry standard API, the
-- dicom_web_path is interpreted directly by the serving binary. For
-- example, if the request is for
-- \`\/v1alpha\/projects\/{project_id}\/locations\/{location_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\/dicomWeb\/studies\/1.2\`,
-- then \`\/studies\/1.2\` is passed to the serving binary as the
-- dicom_web_path.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.dicomWebDelete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.DicomWeb.DicomWebDelete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete
    , ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete

    -- * Request Lenses
    , pldsdsdwdwdParent
    , pldsdsdwdwdXgafv
    , pldsdsdwdwdUploadProtocol
    , pldsdsdwdwdAccessToken
    , pldsdsdwdwdUploadType
    , pldsdsdwdwdCallback
    , pldsdsdwdwdDicomWebPath
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.dicomWebDelete@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete' request conforms to.
type ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDeleteResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "dicomWeb" :>
           Capture "dicomWebPath" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Handles DELETE requests equivalent to the GET requests specified in the
-- WADO-RS standard. Since this implements an industry standard API, the
-- dicom_web_path is interpreted directly by the serving binary. For
-- example, if the request is for
-- \`\/v1alpha\/projects\/{project_id}\/locations\/{location_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\/dicomWeb\/studies\/1.2\`,
-- then \`\/studies\/1.2\` is passed to the serving binary as the
-- dicom_web_path.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete' smart constructor.
data ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete =
  ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete'
    { _pldsdsdwdwdParent         :: !Text
    , _pldsdsdwdwdXgafv          :: !(Maybe Xgafv)
    , _pldsdsdwdwdUploadProtocol :: !(Maybe Text)
    , _pldsdsdwdwdAccessToken    :: !(Maybe Text)
    , _pldsdsdwdwdUploadType     :: !(Maybe Text)
    , _pldsdsdwdwdCallback       :: !(Maybe Text)
    , _pldsdsdwdwdDicomWebPath   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsdwdwdParent'
--
-- * 'pldsdsdwdwdXgafv'
--
-- * 'pldsdsdwdwdUploadProtocol'
--
-- * 'pldsdsdwdwdAccessToken'
--
-- * 'pldsdsdwdwdUploadType'
--
-- * 'pldsdsdwdwdCallback'
--
-- * 'pldsdsdwdwdDicomWebPath'
projectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete
    :: Text -- ^ 'pldsdsdwdwdParent'
    -> Text -- ^ 'pldsdsdwdwdDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete
projectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete pPldsdsdwdwdParent_ pPldsdsdwdwdDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete'
    { _pldsdsdwdwdParent = pPldsdsdwdwdParent_
    , _pldsdsdwdwdXgafv = Nothing
    , _pldsdsdwdwdUploadProtocol = Nothing
    , _pldsdsdwdwdAccessToken = Nothing
    , _pldsdsdwdwdUploadType = Nothing
    , _pldsdsdwdwdCallback = Nothing
    , _pldsdsdwdwdDicomWebPath = pPldsdsdwdwdDicomWebPath_
    }

-- | The name of the DICOM store that is being accessed (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`).
pldsdsdwdwdParent :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete Text
pldsdsdwdwdParent
  = lens _pldsdsdwdwdParent
      (\ s a -> s{_pldsdsdwdwdParent = a})

-- | V1 error format.
pldsdsdwdwdXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete (Maybe Xgafv)
pldsdsdwdwdXgafv
  = lens _pldsdsdwdwdXgafv
      (\ s a -> s{_pldsdsdwdwdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsdwdwdUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete (Maybe Text)
pldsdsdwdwdUploadProtocol
  = lens _pldsdsdwdwdUploadProtocol
      (\ s a -> s{_pldsdsdwdwdUploadProtocol = a})

-- | OAuth access token.
pldsdsdwdwdAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete (Maybe Text)
pldsdsdwdwdAccessToken
  = lens _pldsdsdwdwdAccessToken
      (\ s a -> s{_pldsdsdwdwdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsdwdwdUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete (Maybe Text)
pldsdsdwdwdUploadType
  = lens _pldsdsdwdwdUploadType
      (\ s a -> s{_pldsdsdwdwdUploadType = a})

-- | JSONP
pldsdsdwdwdCallback :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete (Maybe Text)
pldsdsdwdwdCallback
  = lens _pldsdsdwdwdCallback
      (\ s a -> s{_pldsdsdwdwdCallback = a})

-- | The path of the DICOMweb request, as specified in the WADO-RS standard.
pldsdsdwdwdDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete Text
pldsdsdwdwdDicomWebPath
  = lens _pldsdsdwdwdDicomWebPath
      (\ s a -> s{_pldsdsdwdwdDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDelete'{..}
          = go _pldsdsdwdwdParent _pldsdsdwdwdDicomWebPath
              _pldsdsdwdwdXgafv
              _pldsdsdwdwdUploadProtocol
              _pldsdsdwdwdAccessToken
              _pldsdsdwdwdUploadType
              _pldsdsdwdwdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebDeleteResource)
                      mempty
