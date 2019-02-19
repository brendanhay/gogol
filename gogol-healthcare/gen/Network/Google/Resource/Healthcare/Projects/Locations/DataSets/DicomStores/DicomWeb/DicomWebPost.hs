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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.DicomWeb.DicomWebPost
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Handles the POST requests specified in the STOW-RS, WADO-RS, or QIDO-RS
-- standard. Since this implements an industry standard API, the
-- dicom_web_path is interpreted directly by the serving binary. For
-- example, if the request is for
-- \`\/v1alpha\/projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\/dicomWeb\/studies\/{study_id}\`,
-- then \`\/studies\/{study_id}\` is passed to the serving binary as the
-- dicom_web_path.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.dicomWebPost@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.DicomWeb.DicomWebPost
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPostResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresDicomWebDicomWebPost
    , ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost

    -- * Request Lenses
    , pldsdsdwdwpParent
    , pldsdsdwdwpXgafv
    , pldsdsdwdwpUploadProtocol
    , pldsdsdwdwpAccessToken
    , pldsdsdwdwpUploadType
    , pldsdsdwdwpPayload
    , pldsdsdwdwpCallback
    , pldsdsdwdwpDicomWebPath
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.dicomWebPost@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost' request conforms to.
type ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPostResource
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
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] HTTPBody :> Post '[JSON] HTTPBody

-- | Handles the POST requests specified in the STOW-RS, WADO-RS, or QIDO-RS
-- standard. Since this implements an industry standard API, the
-- dicom_web_path is interpreted directly by the serving binary. For
-- example, if the request is for
-- \`\/v1alpha\/projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\/dicomWeb\/studies\/{study_id}\`,
-- then \`\/studies\/{study_id}\` is passed to the serving binary as the
-- dicom_web_path.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresDicomWebDicomWebPost' smart constructor.
data ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost =
  ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost'
    { _pldsdsdwdwpParent         :: !Text
    , _pldsdsdwdwpXgafv          :: !(Maybe Xgafv)
    , _pldsdsdwdwpUploadProtocol :: !(Maybe Text)
    , _pldsdsdwdwpAccessToken    :: !(Maybe Text)
    , _pldsdsdwdwpUploadType     :: !(Maybe Text)
    , _pldsdsdwdwpPayload        :: !HTTPBody
    , _pldsdsdwdwpCallback       :: !(Maybe Text)
    , _pldsdsdwdwpDicomWebPath   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsdwdwpParent'
--
-- * 'pldsdsdwdwpXgafv'
--
-- * 'pldsdsdwdwpUploadProtocol'
--
-- * 'pldsdsdwdwpAccessToken'
--
-- * 'pldsdsdwdwpUploadType'
--
-- * 'pldsdsdwdwpPayload'
--
-- * 'pldsdsdwdwpCallback'
--
-- * 'pldsdsdwdwpDicomWebPath'
projectsLocationsDataSetsDicomStoresDicomWebDicomWebPost
    :: Text -- ^ 'pldsdsdwdwpParent'
    -> HTTPBody -- ^ 'pldsdsdwdwpPayload'
    -> Text -- ^ 'pldsdsdwdwpDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost
projectsLocationsDataSetsDicomStoresDicomWebDicomWebPost pPldsdsdwdwpParent_ pPldsdsdwdwpPayload_ pPldsdsdwdwpDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost'
    { _pldsdsdwdwpParent = pPldsdsdwdwpParent_
    , _pldsdsdwdwpXgafv = Nothing
    , _pldsdsdwdwpUploadProtocol = Nothing
    , _pldsdsdwdwpAccessToken = Nothing
    , _pldsdsdwdwpUploadType = Nothing
    , _pldsdsdwdwpPayload = pPldsdsdwdwpPayload_
    , _pldsdsdwdwpCallback = Nothing
    , _pldsdsdwdwpDicomWebPath = pPldsdsdwdwpDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`).
pldsdsdwdwpParent :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost Text
pldsdsdwdwpParent
  = lens _pldsdsdwdwpParent
      (\ s a -> s{_pldsdsdwdwpParent = a})

-- | V1 error format.
pldsdsdwdwpXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost (Maybe Xgafv)
pldsdsdwdwpXgafv
  = lens _pldsdsdwdwpXgafv
      (\ s a -> s{_pldsdsdwdwpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsdwdwpUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost (Maybe Text)
pldsdsdwdwpUploadProtocol
  = lens _pldsdsdwdwpUploadProtocol
      (\ s a -> s{_pldsdsdwdwpUploadProtocol = a})

-- | OAuth access token.
pldsdsdwdwpAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost (Maybe Text)
pldsdsdwdwpAccessToken
  = lens _pldsdsdwdwpAccessToken
      (\ s a -> s{_pldsdsdwdwpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsdwdwpUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost (Maybe Text)
pldsdsdwdwpUploadType
  = lens _pldsdsdwdwpUploadType
      (\ s a -> s{_pldsdsdwdwpUploadType = a})

-- | Multipart request metadata.
pldsdsdwdwpPayload :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost HTTPBody
pldsdsdwdwpPayload
  = lens _pldsdsdwdwpPayload
      (\ s a -> s{_pldsdsdwdwpPayload = a})

-- | JSONP
pldsdsdwdwpCallback :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost (Maybe Text)
pldsdsdwdwpCallback
  = lens _pldsdsdwdwpCallback
      (\ s a -> s{_pldsdsdwdwpCallback = a})

-- | The path of the DICOMweb request, as specified in the STOW-RS, WADO-RS,
-- or QIDO-RS standard (e.g., studies\/{study_id}\`).
pldsdsdwdwpDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost Text
pldsdsdwdwpDicomWebPath
  = lens _pldsdsdwdwpDicomWebPath
      (\ s a -> s{_pldsdsdwdwpDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPost'{..}
          = go _pldsdsdwdwpParent _pldsdsdwdwpDicomWebPath
              _pldsdsdwdwpXgafv
              _pldsdsdwdwpUploadProtocol
              _pldsdsdwdwpAccessToken
              _pldsdsdwdwpUploadType
              _pldsdsdwdwpCallback
              (Just AltJSON)
              _pldsdsdwdwpPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresDicomWebDicomWebPostResource)
                      mempty
