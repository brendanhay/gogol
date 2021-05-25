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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.RetrieveSeries
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RetrieveSeries returns all instances within the given study and series.
-- See [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveSeries, see [DICOM
-- study\/series\/instances](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#dicom_studyseriesinstances)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveSeries, see [Retrieving DICOM
-- data](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_dicom_data).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveSeries@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.RetrieveSeries
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeriesResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries
    , ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries

    -- * Request Lenses
    , pldsdsssrsParent
    , pldsdsssrsXgafv
    , pldsdsssrsUploadProtocol
    , pldsdsssrsAccessToken
    , pldsdsssrsUploadType
    , pldsdsssrsCallback
    , pldsdsssrsDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveSeries@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeriesResource
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

-- | RetrieveSeries returns all instances within the given study and series.
-- See [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveSeries, see [DICOM
-- study\/series\/instances](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#dicom_studyseriesinstances)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveSeries, see [Retrieving DICOM
-- data](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_dicom_data).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries'
    { _pldsdsssrsParent :: !Text
    , _pldsdsssrsXgafv :: !(Maybe Xgafv)
    , _pldsdsssrsUploadProtocol :: !(Maybe Text)
    , _pldsdsssrsAccessToken :: !(Maybe Text)
    , _pldsdsssrsUploadType :: !(Maybe Text)
    , _pldsdsssrsCallback :: !(Maybe Text)
    , _pldsdsssrsDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsssrsParent'
--
-- * 'pldsdsssrsXgafv'
--
-- * 'pldsdsssrsUploadProtocol'
--
-- * 'pldsdsssrsAccessToken'
--
-- * 'pldsdsssrsUploadType'
--
-- * 'pldsdsssrsCallback'
--
-- * 'pldsdsssrsDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries
    :: Text -- ^ 'pldsdsssrsParent'
    -> Text -- ^ 'pldsdsssrsDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries
projectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries pPldsdsssrsParent_ pPldsdsssrsDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries'
    { _pldsdsssrsParent = pPldsdsssrsParent_
    , _pldsdsssrsXgafv = Nothing
    , _pldsdsssrsUploadProtocol = Nothing
    , _pldsdsssrsAccessToken = Nothing
    , _pldsdsssrsUploadType = Nothing
    , _pldsdsssrsCallback = Nothing
    , _pldsdsssrsDicomWebPath = pPldsdsssrsDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdsssrsParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries Text
pldsdsssrsParent
  = lens _pldsdsssrsParent
      (\ s a -> s{_pldsdsssrsParent = a})

-- | V1 error format.
pldsdsssrsXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries (Maybe Xgafv)
pldsdsssrsXgafv
  = lens _pldsdsssrsXgafv
      (\ s a -> s{_pldsdsssrsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsssrsUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries (Maybe Text)
pldsdsssrsUploadProtocol
  = lens _pldsdsssrsUploadProtocol
      (\ s a -> s{_pldsdsssrsUploadProtocol = a})

-- | OAuth access token.
pldsdsssrsAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries (Maybe Text)
pldsdsssrsAccessToken
  = lens _pldsdsssrsAccessToken
      (\ s a -> s{_pldsdsssrsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsssrsUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries (Maybe Text)
pldsdsssrsUploadType
  = lens _pldsdsssrsUploadType
      (\ s a -> s{_pldsdsssrsUploadType = a})

-- | JSONP
pldsdsssrsCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries (Maybe Text)
pldsdsssrsCallback
  = lens _pldsdsssrsCallback
      (\ s a -> s{_pldsdsssrsCallback = a})

-- | The path of the RetrieveSeries DICOMweb request. For example,
-- \`studies\/{study_uid}\/series\/{series_uid}\`.
pldsdsssrsDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries Text
pldsdsssrsDicomWebPath
  = lens _pldsdsssrsDicomWebPath
      (\ s a -> s{_pldsdsssrsDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeries'{..}
          = go _pldsdsssrsParent _pldsdsssrsDicomWebPath
              _pldsdsssrsXgafv
              _pldsdsssrsUploadProtocol
              _pldsdsssrsAccessToken
              _pldsdsssrsUploadType
              _pldsdsssrsCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveSeriesResource)
                      mempty
