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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Frames.RetrieveFrames
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RetrieveFrames returns instances associated with the given study,
-- series, SOP Instance UID and frame numbers. See
-- http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_6.5.4.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveFrames@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Frames.RetrieveFrames
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFramesResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames
    , ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames

    -- * Request Lenses
    , pldsdsssifrfParent
    , pldsdsssifrfXgafv
    , pldsdsssifrfUploadProtocol
    , pldsdsssifrfAccessToken
    , pldsdsssifrfUploadType
    , pldsdsssifrfCallback
    , pldsdsssifrfDicomWebPath
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveFrames@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFramesResource
     =
     "v1beta1" :>
       Capture "parent" Text :>
         "dicomWeb" :>
           Capture "dicomWebPath" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | RetrieveFrames returns instances associated with the given study,
-- series, SOP Instance UID and frame numbers. See
-- http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_6.5.4.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames'
    { _pldsdsssifrfParent         :: !Text
    , _pldsdsssifrfXgafv          :: !(Maybe Xgafv)
    , _pldsdsssifrfUploadProtocol :: !(Maybe Text)
    , _pldsdsssifrfAccessToken    :: !(Maybe Text)
    , _pldsdsssifrfUploadType     :: !(Maybe Text)
    , _pldsdsssifrfCallback       :: !(Maybe Text)
    , _pldsdsssifrfDicomWebPath   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsssifrfParent'
--
-- * 'pldsdsssifrfXgafv'
--
-- * 'pldsdsssifrfUploadProtocol'
--
-- * 'pldsdsssifrfAccessToken'
--
-- * 'pldsdsssifrfUploadType'
--
-- * 'pldsdsssifrfCallback'
--
-- * 'pldsdsssifrfDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames
    :: Text -- ^ 'pldsdsssifrfParent'
    -> Text -- ^ 'pldsdsssifrfDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames
projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames pPldsdsssifrfParent_ pPldsdsssifrfDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames'
    { _pldsdsssifrfParent = pPldsdsssifrfParent_
    , _pldsdsssifrfXgafv = Nothing
    , _pldsdsssifrfUploadProtocol = Nothing
    , _pldsdsssifrfAccessToken = Nothing
    , _pldsdsssifrfUploadType = Nothing
    , _pldsdsssifrfCallback = Nothing
    , _pldsdsssifrfDicomWebPath = pPldsdsssifrfDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`).
pldsdsssifrfParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames Text
pldsdsssifrfParent
  = lens _pldsdsssifrfParent
      (\ s a -> s{_pldsdsssifrfParent = a})

-- | V1 error format.
pldsdsssifrfXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames (Maybe Xgafv)
pldsdsssifrfXgafv
  = lens _pldsdsssifrfXgafv
      (\ s a -> s{_pldsdsssifrfXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsssifrfUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames (Maybe Text)
pldsdsssifrfUploadProtocol
  = lens _pldsdsssifrfUploadProtocol
      (\ s a -> s{_pldsdsssifrfUploadProtocol = a})

-- | OAuth access token.
pldsdsssifrfAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames (Maybe Text)
pldsdsssifrfAccessToken
  = lens _pldsdsssifrfAccessToken
      (\ s a -> s{_pldsdsssifrfAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsssifrfUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames (Maybe Text)
pldsdsssifrfUploadType
  = lens _pldsdsssifrfUploadType
      (\ s a -> s{_pldsdsssifrfUploadType = a})

-- | JSONP
pldsdsssifrfCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames (Maybe Text)
pldsdsssifrfCallback
  = lens _pldsdsssifrfCallback
      (\ s a -> s{_pldsdsssifrfCallback = a})

-- | The path of the DICOMweb request, as specified in the STOW-RS, WADO-RS,
-- or QIDO-RS standard (e.g.,
-- \`studies\/{study_id}\/series\/{series_id}\/instance\/{instance_id}\/frames\/{frame_list}\`).
pldsdsssifrfDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames Text
pldsdsssifrfDicomWebPath
  = lens _pldsdsssifrfDicomWebPath
      (\ s a -> s{_pldsdsssifrfDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames'{..}
          = go _pldsdsssifrfParent _pldsdsssifrfDicomWebPath
              _pldsdsssifrfXgafv
              _pldsdsssifrfUploadProtocol
              _pldsdsssifrfAccessToken
              _pldsdsssifrfUploadType
              _pldsdsssifrfCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveFramesResource)
                      mempty
