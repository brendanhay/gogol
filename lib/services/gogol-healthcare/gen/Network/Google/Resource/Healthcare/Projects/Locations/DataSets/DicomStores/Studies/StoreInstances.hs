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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.StoreInstances
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- StoreInstances stores DICOM instances associated with study instance
-- unique identifiers (SUID). See [Store Transaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.5).
-- For details on the implementation of StoreInstances, see [Store
-- transaction](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#store_transaction)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call StoreInstances, see [Storing DICOM
-- data](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#storing_dicom_data).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.storeInstances@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.StoreInstances
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesStoreInstancesResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesStoreInstances
    , ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances

    -- * Request Lenses
    , pldsdsssiParent
    , pldsdsssiXgafv
    , pldsdsssiUploadProtocol
    , pldsdsssiAccessToken
    , pldsdsssiUploadType
    , pldsdsssiPayload
    , pldsdsssiCallback
    , pldsdsssiDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.storeInstances@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesStoreInstancesResource
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
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] HTTPBody :> Post '[JSON] HTTPBody

-- | StoreInstances stores DICOM instances associated with study instance
-- unique identifiers (SUID). See [Store Transaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.5).
-- For details on the implementation of StoreInstances, see [Store
-- transaction](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#store_transaction)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call StoreInstances, see [Storing DICOM
-- data](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#storing_dicom_data).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesStoreInstances' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances =
  ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances'
    { _pldsdsssiParent :: !Text
    , _pldsdsssiXgafv :: !(Maybe Xgafv)
    , _pldsdsssiUploadProtocol :: !(Maybe Text)
    , _pldsdsssiAccessToken :: !(Maybe Text)
    , _pldsdsssiUploadType :: !(Maybe Text)
    , _pldsdsssiPayload :: !HTTPBody
    , _pldsdsssiCallback :: !(Maybe Text)
    , _pldsdsssiDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsssiParent'
--
-- * 'pldsdsssiXgafv'
--
-- * 'pldsdsssiUploadProtocol'
--
-- * 'pldsdsssiAccessToken'
--
-- * 'pldsdsssiUploadType'
--
-- * 'pldsdsssiPayload'
--
-- * 'pldsdsssiCallback'
--
-- * 'pldsdsssiDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesStoreInstances
    :: Text -- ^ 'pldsdsssiParent'
    -> HTTPBody -- ^ 'pldsdsssiPayload'
    -> Text -- ^ 'pldsdsssiDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances
projectsLocationsDataSetsDicomStoresStudiesStoreInstances pPldsdsssiParent_ pPldsdsssiPayload_ pPldsdsssiDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances'
    { _pldsdsssiParent = pPldsdsssiParent_
    , _pldsdsssiXgafv = Nothing
    , _pldsdsssiUploadProtocol = Nothing
    , _pldsdsssiAccessToken = Nothing
    , _pldsdsssiUploadType = Nothing
    , _pldsdsssiPayload = pPldsdsssiPayload_
    , _pldsdsssiCallback = Nothing
    , _pldsdsssiDicomWebPath = pPldsdsssiDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdsssiParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances Text
pldsdsssiParent
  = lens _pldsdsssiParent
      (\ s a -> s{_pldsdsssiParent = a})

-- | V1 error format.
pldsdsssiXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances (Maybe Xgafv)
pldsdsssiXgafv
  = lens _pldsdsssiXgafv
      (\ s a -> s{_pldsdsssiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsssiUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances (Maybe Text)
pldsdsssiUploadProtocol
  = lens _pldsdsssiUploadProtocol
      (\ s a -> s{_pldsdsssiUploadProtocol = a})

-- | OAuth access token.
pldsdsssiAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances (Maybe Text)
pldsdsssiAccessToken
  = lens _pldsdsssiAccessToken
      (\ s a -> s{_pldsdsssiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsssiUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances (Maybe Text)
pldsdsssiUploadType
  = lens _pldsdsssiUploadType
      (\ s a -> s{_pldsdsssiUploadType = a})

-- | Multipart request metadata.
pldsdsssiPayload :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances HTTPBody
pldsdsssiPayload
  = lens _pldsdsssiPayload
      (\ s a -> s{_pldsdsssiPayload = a})

-- | JSONP
pldsdsssiCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances (Maybe Text)
pldsdsssiCallback
  = lens _pldsdsssiCallback
      (\ s a -> s{_pldsdsssiCallback = a})

-- | The path of the StoreInstances DICOMweb request. For example,
-- \`studies\/[{study_uid}]\`. Note that the \`study_uid\` is optional.
pldsdsssiDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances Text
pldsdsssiDicomWebPath
  = lens _pldsdsssiDicomWebPath
      (\ s a -> s{_pldsdsssiDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesStoreInstances'{..}
          = go _pldsdsssiParent _pldsdsssiDicomWebPath
              _pldsdsssiXgafv
              _pldsdsssiUploadProtocol
              _pldsdsssiAccessToken
              _pldsdsssiUploadType
              _pldsdsssiCallback
              (Just AltJSON)
              _pldsdsssiPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesStoreInstancesResource)
                      mempty
