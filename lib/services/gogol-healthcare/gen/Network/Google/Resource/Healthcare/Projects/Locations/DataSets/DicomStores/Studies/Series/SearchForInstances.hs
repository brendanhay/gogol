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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.SearchForInstances
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- SearchForInstances returns a list of matching instances. See [Search
-- Transaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.6).
-- For details on the implementation of SearchForInstances, see [Search
-- transaction](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#search_transaction)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call SearchForInstances, see [Searching for studies, series,
-- instances, and
-- frames](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#searching_for_studies_series_instances_and_frames).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.searchForInstances@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.SearchForInstances
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstancesResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances
    , ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances

    -- * Request Lenses
    , pldsdssssfiParent
    , pldsdssssfiXgafv
    , pldsdssssfiUploadProtocol
    , pldsdssssfiAccessToken
    , pldsdssssfiUploadType
    , pldsdssssfiCallback
    , pldsdssssfiDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.searchForInstances@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstancesResource
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

-- | SearchForInstances returns a list of matching instances. See [Search
-- Transaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.6).
-- For details on the implementation of SearchForInstances, see [Search
-- transaction](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#search_transaction)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call SearchForInstances, see [Searching for studies, series,
-- instances, and
-- frames](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#searching_for_studies_series_instances_and_frames).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances'
    { _pldsdssssfiParent :: !Text
    , _pldsdssssfiXgafv :: !(Maybe Xgafv)
    , _pldsdssssfiUploadProtocol :: !(Maybe Text)
    , _pldsdssssfiAccessToken :: !(Maybe Text)
    , _pldsdssssfiUploadType :: !(Maybe Text)
    , _pldsdssssfiCallback :: !(Maybe Text)
    , _pldsdssssfiDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdssssfiParent'
--
-- * 'pldsdssssfiXgafv'
--
-- * 'pldsdssssfiUploadProtocol'
--
-- * 'pldsdssssfiAccessToken'
--
-- * 'pldsdssssfiUploadType'
--
-- * 'pldsdssssfiCallback'
--
-- * 'pldsdssssfiDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances
    :: Text -- ^ 'pldsdssssfiParent'
    -> Text -- ^ 'pldsdssssfiDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances
projectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances pPldsdssssfiParent_ pPldsdssssfiDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances'
    { _pldsdssssfiParent = pPldsdssssfiParent_
    , _pldsdssssfiXgafv = Nothing
    , _pldsdssssfiUploadProtocol = Nothing
    , _pldsdssssfiAccessToken = Nothing
    , _pldsdssssfiUploadType = Nothing
    , _pldsdssssfiCallback = Nothing
    , _pldsdssssfiDicomWebPath = pPldsdssssfiDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdssssfiParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances Text
pldsdssssfiParent
  = lens _pldsdssssfiParent
      (\ s a -> s{_pldsdssssfiParent = a})

-- | V1 error format.
pldsdssssfiXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances (Maybe Xgafv)
pldsdssssfiXgafv
  = lens _pldsdssssfiXgafv
      (\ s a -> s{_pldsdssssfiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdssssfiUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances (Maybe Text)
pldsdssssfiUploadProtocol
  = lens _pldsdssssfiUploadProtocol
      (\ s a -> s{_pldsdssssfiUploadProtocol = a})

-- | OAuth access token.
pldsdssssfiAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances (Maybe Text)
pldsdssssfiAccessToken
  = lens _pldsdssssfiAccessToken
      (\ s a -> s{_pldsdssssfiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdssssfiUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances (Maybe Text)
pldsdssssfiUploadType
  = lens _pldsdssssfiUploadType
      (\ s a -> s{_pldsdssssfiUploadType = a})

-- | JSONP
pldsdssssfiCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances (Maybe Text)
pldsdssssfiCallback
  = lens _pldsdssssfiCallback
      (\ s a -> s{_pldsdssssfiCallback = a})

-- | The path of the SearchForInstancesRequest DICOMweb request. For example,
-- \`instances\`, \`series\/{series_uid}\/instances\`, or
-- \`studies\/{study_uid}\/instances\`.
pldsdssssfiDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances Text
pldsdssssfiDicomWebPath
  = lens _pldsdssssfiDicomWebPath
      (\ s a -> s{_pldsdssssfiDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstances'{..}
          = go _pldsdssssfiParent _pldsdssssfiDicomWebPath
              _pldsdssssfiXgafv
              _pldsdssssfiUploadProtocol
              _pldsdssssfiAccessToken
              _pldsdssssfiUploadType
              _pldsdssssfiCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesSeriesSearchForInstancesResource)
                      mempty
