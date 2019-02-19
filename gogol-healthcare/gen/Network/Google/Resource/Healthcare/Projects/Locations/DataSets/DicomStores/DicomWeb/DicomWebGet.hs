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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.DicomWeb.DicomWebGet
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Handles the GET requests specified in the STOW-RS, WADO-RS, or QIDO-RS
-- standard. Since this implements an industry standard API, the
-- dicom_web_path is interpreted directly by the serving binary. For
-- example, if the request is for
-- \`\/v1alpha\/projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\/dicomWeb\/studies\/{study_id}\/series?PatientName={patient_name}\`,
-- then \`studies\/{study_id}\/series\` is passed to the serving binary as
-- the dicom_web_path.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.dicomWebGet@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.DicomWeb.DicomWebGet
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresDicomWebDicomWebGet
    , ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet

    -- * Request Lenses
    , pldsdsdwdwgParent
    , pldsdsdwdwgXgafv
    , pldsdsdwdwgUploadProtocol
    , pldsdsdwdwgAccessToken
    , pldsdsdwdwgUploadType
    , pldsdsdwdwgCallback
    , pldsdsdwdwgDicomWebPath
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.dicomWebGet@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet' request conforms to.
type ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGetResource
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
                       QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | Handles the GET requests specified in the STOW-RS, WADO-RS, or QIDO-RS
-- standard. Since this implements an industry standard API, the
-- dicom_web_path is interpreted directly by the serving binary. For
-- example, if the request is for
-- \`\/v1alpha\/projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\/dicomWeb\/studies\/{study_id}\/series?PatientName={patient_name}\`,
-- then \`studies\/{study_id}\/series\` is passed to the serving binary as
-- the dicom_web_path.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresDicomWebDicomWebGet' smart constructor.
data ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet =
  ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet'
    { _pldsdsdwdwgParent         :: !Text
    , _pldsdsdwdwgXgafv          :: !(Maybe Xgafv)
    , _pldsdsdwdwgUploadProtocol :: !(Maybe Text)
    , _pldsdsdwdwgAccessToken    :: !(Maybe Text)
    , _pldsdsdwdwgUploadType     :: !(Maybe Text)
    , _pldsdsdwdwgCallback       :: !(Maybe Text)
    , _pldsdsdwdwgDicomWebPath   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsdwdwgParent'
--
-- * 'pldsdsdwdwgXgafv'
--
-- * 'pldsdsdwdwgUploadProtocol'
--
-- * 'pldsdsdwdwgAccessToken'
--
-- * 'pldsdsdwdwgUploadType'
--
-- * 'pldsdsdwdwgCallback'
--
-- * 'pldsdsdwdwgDicomWebPath'
projectsLocationsDataSetsDicomStoresDicomWebDicomWebGet
    :: Text -- ^ 'pldsdsdwdwgParent'
    -> Text -- ^ 'pldsdsdwdwgDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet
projectsLocationsDataSetsDicomStoresDicomWebDicomWebGet pPldsdsdwdwgParent_ pPldsdsdwdwgDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet'
    { _pldsdsdwdwgParent = pPldsdsdwdwgParent_
    , _pldsdsdwdwgXgafv = Nothing
    , _pldsdsdwdwgUploadProtocol = Nothing
    , _pldsdsdwdwgAccessToken = Nothing
    , _pldsdsdwdwgUploadType = Nothing
    , _pldsdsdwdwgCallback = Nothing
    , _pldsdsdwdwgDicomWebPath = pPldsdsdwdwgDicomWebPath_
    }

-- | The name of the DICOM store that is being accessed (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`).
pldsdsdwdwgParent :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet Text
pldsdsdwdwgParent
  = lens _pldsdsdwdwgParent
      (\ s a -> s{_pldsdsdwdwgParent = a})

-- | V1 error format.
pldsdsdwdwgXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet (Maybe Xgafv)
pldsdsdwdwgXgafv
  = lens _pldsdsdwdwgXgafv
      (\ s a -> s{_pldsdsdwdwgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsdwdwgUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet (Maybe Text)
pldsdsdwdwgUploadProtocol
  = lens _pldsdsdwdwgUploadProtocol
      (\ s a -> s{_pldsdsdwdwgUploadProtocol = a})

-- | OAuth access token.
pldsdsdwdwgAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet (Maybe Text)
pldsdsdwdwgAccessToken
  = lens _pldsdsdwdwgAccessToken
      (\ s a -> s{_pldsdsdwdwgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsdwdwgUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet (Maybe Text)
pldsdsdwdwgUploadType
  = lens _pldsdsdwdwgUploadType
      (\ s a -> s{_pldsdsdwdwgUploadType = a})

-- | JSONP
pldsdsdwdwgCallback :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet (Maybe Text)
pldsdsdwdwgCallback
  = lens _pldsdsdwdwgCallback
      (\ s a -> s{_pldsdsdwdwgCallback = a})

-- | The path of the DICOMweb request, as specified in the STOW-RS, WADO-RS,
-- or QIDO-RS standard (e.g., studies\/{study_id}\/series\`).
pldsdsdwdwgDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet Text
pldsdsdwdwgDicomWebPath
  = lens _pldsdsdwdwgDicomWebPath
      (\ s a -> s{_pldsdsdwdwgDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGet'{..}
          = go _pldsdsdwdwgParent _pldsdsdwdwgDicomWebPath
              _pldsdsdwdwgXgafv
              _pldsdsdwdwgUploadProtocol
              _pldsdsdwdwgAccessToken
              _pldsdsdwdwgUploadType
              _pldsdsdwdwgCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebGetResource)
                      mempty
