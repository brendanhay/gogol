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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.RetrieveMetadata
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RetrieveSeriesMetadata returns instance associated with the given study
-- and series, presented as metadata with the bulk data removed. See
-- [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveSeriesMetadata, see
-- [Metadata
-- resources](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#metadata_resources)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveSeriesMetadata, see [Retrieving
-- metadata](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_metadata).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveMetadata@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.RetrieveMetadata
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadataResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata
    , ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata

    -- * Request Lenses
    , pldsdsssrmParent
    , pldsdsssrmXgafv
    , pldsdsssrmUploadProtocol
    , pldsdsssrmAccessToken
    , pldsdsssrmUploadType
    , pldsdsssrmCallback
    , pldsdsssrmDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveMetadata@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadataResource
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

-- | RetrieveSeriesMetadata returns instance associated with the given study
-- and series, presented as metadata with the bulk data removed. See
-- [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveSeriesMetadata, see
-- [Metadata
-- resources](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#metadata_resources)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveSeriesMetadata, see [Retrieving
-- metadata](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_metadata).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata'
    { _pldsdsssrmParent :: !Text
    , _pldsdsssrmXgafv :: !(Maybe Xgafv)
    , _pldsdsssrmUploadProtocol :: !(Maybe Text)
    , _pldsdsssrmAccessToken :: !(Maybe Text)
    , _pldsdsssrmUploadType :: !(Maybe Text)
    , _pldsdsssrmCallback :: !(Maybe Text)
    , _pldsdsssrmDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsssrmParent'
--
-- * 'pldsdsssrmXgafv'
--
-- * 'pldsdsssrmUploadProtocol'
--
-- * 'pldsdsssrmAccessToken'
--
-- * 'pldsdsssrmUploadType'
--
-- * 'pldsdsssrmCallback'
--
-- * 'pldsdsssrmDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata
    :: Text -- ^ 'pldsdsssrmParent'
    -> Text -- ^ 'pldsdsssrmDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata
projectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata pPldsdsssrmParent_ pPldsdsssrmDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata'
    { _pldsdsssrmParent = pPldsdsssrmParent_
    , _pldsdsssrmXgafv = Nothing
    , _pldsdsssrmUploadProtocol = Nothing
    , _pldsdsssrmAccessToken = Nothing
    , _pldsdsssrmUploadType = Nothing
    , _pldsdsssrmCallback = Nothing
    , _pldsdsssrmDicomWebPath = pPldsdsssrmDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdsssrmParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata Text
pldsdsssrmParent
  = lens _pldsdsssrmParent
      (\ s a -> s{_pldsdsssrmParent = a})

-- | V1 error format.
pldsdsssrmXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata (Maybe Xgafv)
pldsdsssrmXgafv
  = lens _pldsdsssrmXgafv
      (\ s a -> s{_pldsdsssrmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsssrmUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata (Maybe Text)
pldsdsssrmUploadProtocol
  = lens _pldsdsssrmUploadProtocol
      (\ s a -> s{_pldsdsssrmUploadProtocol = a})

-- | OAuth access token.
pldsdsssrmAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata (Maybe Text)
pldsdsssrmAccessToken
  = lens _pldsdsssrmAccessToken
      (\ s a -> s{_pldsdsssrmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsssrmUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata (Maybe Text)
pldsdsssrmUploadType
  = lens _pldsdsssrmUploadType
      (\ s a -> s{_pldsdsssrmUploadType = a})

-- | JSONP
pldsdsssrmCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata (Maybe Text)
pldsdsssrmCallback
  = lens _pldsdsssrmCallback
      (\ s a -> s{_pldsdsssrmCallback = a})

-- | The path of the RetrieveSeriesMetadata DICOMweb request. For example,
-- \`studies\/{study_uid}\/series\/{series_uid}\/metadata\`.
pldsdsssrmDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata Text
pldsdsssrmDicomWebPath
  = lens _pldsdsssrmDicomWebPath
      (\ s a -> s{_pldsdsssrmDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadata'{..}
          = go _pldsdsssrmParent _pldsdsssrmDicomWebPath
              _pldsdsssrmXgafv
              _pldsdsssrmUploadProtocol
              _pldsdsssrmAccessToken
              _pldsdsssrmUploadType
              _pldsdsssrmCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesSeriesRetrieveMetadataResource)
                      mempty
