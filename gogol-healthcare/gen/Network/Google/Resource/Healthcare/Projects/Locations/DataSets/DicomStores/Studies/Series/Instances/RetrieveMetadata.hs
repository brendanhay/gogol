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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveMetadata
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RetrieveInstanceMetadata returns instance associated with the given
-- study, series, and SOP Instance UID presented as metadata with the bulk
-- data removed. See [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveInstanceMetadata, see
-- [Metadata
-- resources](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#metadata_resources)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveInstanceMetadata, see [Retrieving
-- metadata](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_metadata).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveMetadata@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveMetadata
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadataResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata
    , ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata

    -- * Request Lenses
    , pldsdsssirmParent
    , pldsdsssirmXgafv
    , pldsdsssirmUploadProtocol
    , pldsdsssirmAccessToken
    , pldsdsssirmUploadType
    , pldsdsssirmCallback
    , pldsdsssirmDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveMetadata@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadataResource
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

-- | RetrieveInstanceMetadata returns instance associated with the given
-- study, series, and SOP Instance UID presented as metadata with the bulk
-- data removed. See [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveInstanceMetadata, see
-- [Metadata
-- resources](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#metadata_resources)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveInstanceMetadata, see [Retrieving
-- metadata](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_metadata).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata'
    { _pldsdsssirmParent :: !Text
    , _pldsdsssirmXgafv :: !(Maybe Xgafv)
    , _pldsdsssirmUploadProtocol :: !(Maybe Text)
    , _pldsdsssirmAccessToken :: !(Maybe Text)
    , _pldsdsssirmUploadType :: !(Maybe Text)
    , _pldsdsssirmCallback :: !(Maybe Text)
    , _pldsdsssirmDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsssirmParent'
--
-- * 'pldsdsssirmXgafv'
--
-- * 'pldsdsssirmUploadProtocol'
--
-- * 'pldsdsssirmAccessToken'
--
-- * 'pldsdsssirmUploadType'
--
-- * 'pldsdsssirmCallback'
--
-- * 'pldsdsssirmDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata
    :: Text -- ^ 'pldsdsssirmParent'
    -> Text -- ^ 'pldsdsssirmDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata
projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata pPldsdsssirmParent_ pPldsdsssirmDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata'
    { _pldsdsssirmParent = pPldsdsssirmParent_
    , _pldsdsssirmXgafv = Nothing
    , _pldsdsssirmUploadProtocol = Nothing
    , _pldsdsssirmAccessToken = Nothing
    , _pldsdsssirmUploadType = Nothing
    , _pldsdsssirmCallback = Nothing
    , _pldsdsssirmDicomWebPath = pPldsdsssirmDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdsssirmParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata Text
pldsdsssirmParent
  = lens _pldsdsssirmParent
      (\ s a -> s{_pldsdsssirmParent = a})

-- | V1 error format.
pldsdsssirmXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata (Maybe Xgafv)
pldsdsssirmXgafv
  = lens _pldsdsssirmXgafv
      (\ s a -> s{_pldsdsssirmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsssirmUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata (Maybe Text)
pldsdsssirmUploadProtocol
  = lens _pldsdsssirmUploadProtocol
      (\ s a -> s{_pldsdsssirmUploadProtocol = a})

-- | OAuth access token.
pldsdsssirmAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata (Maybe Text)
pldsdsssirmAccessToken
  = lens _pldsdsssirmAccessToken
      (\ s a -> s{_pldsdsssirmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsssirmUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata (Maybe Text)
pldsdsssirmUploadType
  = lens _pldsdsssirmUploadType
      (\ s a -> s{_pldsdsssirmUploadType = a})

-- | JSONP
pldsdsssirmCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata (Maybe Text)
pldsdsssirmCallback
  = lens _pldsdsssirmCallback
      (\ s a -> s{_pldsdsssirmCallback = a})

-- | The path of the RetrieveInstanceMetadata DICOMweb request. For example,
-- \`studies\/{study_uid}\/series\/{series_uid}\/instances\/{instance_uid}\/metadata\`.
pldsdsssirmDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata Text
pldsdsssirmDicomWebPath
  = lens _pldsdsssirmDicomWebPath
      (\ s a -> s{_pldsdsssirmDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadata'{..}
          = go _pldsdsssirmParent _pldsdsssirmDicomWebPath
              _pldsdsssirmXgafv
              _pldsdsssirmUploadProtocol
              _pldsdsssirmAccessToken
              _pldsdsssirmUploadType
              _pldsdsssirmCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveMetadataResource)
                      mempty
