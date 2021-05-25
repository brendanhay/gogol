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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.RetrieveMetadata
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RetrieveStudyMetadata returns instance associated with the given study
-- presented as metadata with the bulk data removed. See
-- [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveStudyMetadata, see
-- [Metadata
-- resources](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#metadata_resources)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveStudyMetadata, see [Retrieving
-- metadata](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_metadata).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.retrieveMetadata@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.RetrieveMetadata
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadataResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata
    , ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata

    -- * Request Lenses
    , pldsdssrmParent
    , pldsdssrmXgafv
    , pldsdssrmUploadProtocol
    , pldsdssrmAccessToken
    , pldsdssrmUploadType
    , pldsdssrmCallback
    , pldsdssrmDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.retrieveMetadata@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadataResource
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

-- | RetrieveStudyMetadata returns instance associated with the given study
-- presented as metadata with the bulk data removed. See
-- [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveStudyMetadata, see
-- [Metadata
-- resources](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#metadata_resources)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveStudyMetadata, see [Retrieving
-- metadata](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_metadata).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata =
  ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata'
    { _pldsdssrmParent :: !Text
    , _pldsdssrmXgafv :: !(Maybe Xgafv)
    , _pldsdssrmUploadProtocol :: !(Maybe Text)
    , _pldsdssrmAccessToken :: !(Maybe Text)
    , _pldsdssrmUploadType :: !(Maybe Text)
    , _pldsdssrmCallback :: !(Maybe Text)
    , _pldsdssrmDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdssrmParent'
--
-- * 'pldsdssrmXgafv'
--
-- * 'pldsdssrmUploadProtocol'
--
-- * 'pldsdssrmAccessToken'
--
-- * 'pldsdssrmUploadType'
--
-- * 'pldsdssrmCallback'
--
-- * 'pldsdssrmDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata
    :: Text -- ^ 'pldsdssrmParent'
    -> Text -- ^ 'pldsdssrmDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata
projectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata pPldsdssrmParent_ pPldsdssrmDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata'
    { _pldsdssrmParent = pPldsdssrmParent_
    , _pldsdssrmXgafv = Nothing
    , _pldsdssrmUploadProtocol = Nothing
    , _pldsdssrmAccessToken = Nothing
    , _pldsdssrmUploadType = Nothing
    , _pldsdssrmCallback = Nothing
    , _pldsdssrmDicomWebPath = pPldsdssrmDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdssrmParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata Text
pldsdssrmParent
  = lens _pldsdssrmParent
      (\ s a -> s{_pldsdssrmParent = a})

-- | V1 error format.
pldsdssrmXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata (Maybe Xgafv)
pldsdssrmXgafv
  = lens _pldsdssrmXgafv
      (\ s a -> s{_pldsdssrmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdssrmUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata (Maybe Text)
pldsdssrmUploadProtocol
  = lens _pldsdssrmUploadProtocol
      (\ s a -> s{_pldsdssrmUploadProtocol = a})

-- | OAuth access token.
pldsdssrmAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata (Maybe Text)
pldsdssrmAccessToken
  = lens _pldsdssrmAccessToken
      (\ s a -> s{_pldsdssrmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdssrmUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata (Maybe Text)
pldsdssrmUploadType
  = lens _pldsdssrmUploadType
      (\ s a -> s{_pldsdssrmUploadType = a})

-- | JSONP
pldsdssrmCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata (Maybe Text)
pldsdssrmCallback
  = lens _pldsdssrmCallback
      (\ s a -> s{_pldsdssrmCallback = a})

-- | The path of the RetrieveStudyMetadata DICOMweb request. For example,
-- \`studies\/{study_uid}\/metadata\`.
pldsdssrmDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata Text
pldsdssrmDicomWebPath
  = lens _pldsdssrmDicomWebPath
      (\ s a -> s{_pldsdssrmDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadata'{..}
          = go _pldsdssrmParent _pldsdssrmDicomWebPath
              _pldsdssrmXgafv
              _pldsdssrmUploadProtocol
              _pldsdssrmAccessToken
              _pldsdssrmUploadType
              _pldsdssrmCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesRetrieveMetadataResource)
                      mempty
