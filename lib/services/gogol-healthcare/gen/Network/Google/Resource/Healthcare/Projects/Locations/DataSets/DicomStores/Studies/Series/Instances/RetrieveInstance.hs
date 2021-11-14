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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveInstance
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RetrieveInstance returns instance associated with the given study,
-- series, and SOP Instance UID. See [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveInstance, see [DICOM
-- study\/series\/instances](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#dicom_studyseriesinstances)
-- and [DICOM
-- instances](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#dicom_instances)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveInstance, see [Retrieving an
-- instance](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_an_instance).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveInstance@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveInstance
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstanceResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance
    , ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance

    -- * Request Lenses
    , pldsdsssiriParent
    , pldsdsssiriXgafv
    , pldsdsssiriUploadProtocol
    , pldsdsssiriAccessToken
    , pldsdsssiriUploadType
    , pldsdsssiriCallback
    , pldsdsssiriDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveInstance@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstanceResource
     =
     "v1" :>
       Capture "parent" Text :>
         "dicomWeb" :>
           Capture "dicomWebPath" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | RetrieveInstance returns instance associated with the given study,
-- series, and SOP Instance UID. See [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveInstance, see [DICOM
-- study\/series\/instances](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#dicom_studyseriesinstances)
-- and [DICOM
-- instances](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#dicom_instances)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveInstance, see [Retrieving an
-- instance](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_an_instance).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance'
    { _pldsdsssiriParent :: !Text
    , _pldsdsssiriXgafv :: !(Maybe Xgafv)
    , _pldsdsssiriUploadProtocol :: !(Maybe Text)
    , _pldsdsssiriAccessToken :: !(Maybe Text)
    , _pldsdsssiriUploadType :: !(Maybe Text)
    , _pldsdsssiriCallback :: !(Maybe Text)
    , _pldsdsssiriDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsssiriParent'
--
-- * 'pldsdsssiriXgafv'
--
-- * 'pldsdsssiriUploadProtocol'
--
-- * 'pldsdsssiriAccessToken'
--
-- * 'pldsdsssiriUploadType'
--
-- * 'pldsdsssiriCallback'
--
-- * 'pldsdsssiriDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance
    :: Text -- ^ 'pldsdsssiriParent'
    -> Text -- ^ 'pldsdsssiriDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance
projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance pPldsdsssiriParent_ pPldsdsssiriDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance'
    { _pldsdsssiriParent = pPldsdsssiriParent_
    , _pldsdsssiriXgafv = Nothing
    , _pldsdsssiriUploadProtocol = Nothing
    , _pldsdsssiriAccessToken = Nothing
    , _pldsdsssiriUploadType = Nothing
    , _pldsdsssiriCallback = Nothing
    , _pldsdsssiriDicomWebPath = pPldsdsssiriDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdsssiriParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance Text
pldsdsssiriParent
  = lens _pldsdsssiriParent
      (\ s a -> s{_pldsdsssiriParent = a})

-- | V1 error format.
pldsdsssiriXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance (Maybe Xgafv)
pldsdsssiriXgafv
  = lens _pldsdsssiriXgafv
      (\ s a -> s{_pldsdsssiriXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsssiriUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance (Maybe Text)
pldsdsssiriUploadProtocol
  = lens _pldsdsssiriUploadProtocol
      (\ s a -> s{_pldsdsssiriUploadProtocol = a})

-- | OAuth access token.
pldsdsssiriAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance (Maybe Text)
pldsdsssiriAccessToken
  = lens _pldsdsssiriAccessToken
      (\ s a -> s{_pldsdsssiriAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsssiriUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance (Maybe Text)
pldsdsssiriUploadType
  = lens _pldsdsssiriUploadType
      (\ s a -> s{_pldsdsssiriUploadType = a})

-- | JSONP
pldsdsssiriCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance (Maybe Text)
pldsdsssiriCallback
  = lens _pldsdsssiriCallback
      (\ s a -> s{_pldsdsssiriCallback = a})

-- | The path of the RetrieveInstance DICOMweb request. For example,
-- \`studies\/{study_uid}\/series\/{series_uid}\/instances\/{instance_uid}\`.
pldsdsssiriDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance Text
pldsdsssiriDicomWebPath
  = lens _pldsdsssiriDicomWebPath
      (\ s a -> s{_pldsdsssiriDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstance'{..}
          = go _pldsdsssiriParent _pldsdsssiriDicomWebPath
              _pldsdsssiriXgafv
              _pldsdsssiriUploadProtocol
              _pldsdsssiriAccessToken
              _pldsdsssiriUploadType
              _pldsdsssiriCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveInstanceResource)
                      mempty
