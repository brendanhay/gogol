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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.StoreInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.storeInstances@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.StoreInstances
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStoreInstancesResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStoreInstances
    , ProjectsLocationsDataSetsDicomStoresStoreInstances

    -- * Request Lenses
    , pldsdssiParent
    , pldsdssiXgafv
    , pldsdssiUploadProtocol
    , pldsdssiAccessToken
    , pldsdssiUploadType
    , pldsdssiPayload
    , pldsdssiCallback
    , pldsdssiDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.storeInstances@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStoreInstances' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStoreInstancesResource
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
-- /See:/ 'projectsLocationsDataSetsDicomStoresStoreInstances' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStoreInstances =
  ProjectsLocationsDataSetsDicomStoresStoreInstances'
    { _pldsdssiParent :: !Text
    , _pldsdssiXgafv :: !(Maybe Xgafv)
    , _pldsdssiUploadProtocol :: !(Maybe Text)
    , _pldsdssiAccessToken :: !(Maybe Text)
    , _pldsdssiUploadType :: !(Maybe Text)
    , _pldsdssiPayload :: !HTTPBody
    , _pldsdssiCallback :: !(Maybe Text)
    , _pldsdssiDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStoreInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdssiParent'
--
-- * 'pldsdssiXgafv'
--
-- * 'pldsdssiUploadProtocol'
--
-- * 'pldsdssiAccessToken'
--
-- * 'pldsdssiUploadType'
--
-- * 'pldsdssiPayload'
--
-- * 'pldsdssiCallback'
--
-- * 'pldsdssiDicomWebPath'
projectsLocationsDataSetsDicomStoresStoreInstances
    :: Text -- ^ 'pldsdssiParent'
    -> HTTPBody -- ^ 'pldsdssiPayload'
    -> Text -- ^ 'pldsdssiDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStoreInstances
projectsLocationsDataSetsDicomStoresStoreInstances pPldsdssiParent_ pPldsdssiPayload_ pPldsdssiDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStoreInstances'
    { _pldsdssiParent = pPldsdssiParent_
    , _pldsdssiXgafv = Nothing
    , _pldsdssiUploadProtocol = Nothing
    , _pldsdssiAccessToken = Nothing
    , _pldsdssiUploadType = Nothing
    , _pldsdssiPayload = pPldsdssiPayload_
    , _pldsdssiCallback = Nothing
    , _pldsdssiDicomWebPath = pPldsdssiDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdssiParent :: Lens' ProjectsLocationsDataSetsDicomStoresStoreInstances Text
pldsdssiParent
  = lens _pldsdssiParent
      (\ s a -> s{_pldsdssiParent = a})

-- | V1 error format.
pldsdssiXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStoreInstances (Maybe Xgafv)
pldsdssiXgafv
  = lens _pldsdssiXgafv
      (\ s a -> s{_pldsdssiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdssiUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStoreInstances (Maybe Text)
pldsdssiUploadProtocol
  = lens _pldsdssiUploadProtocol
      (\ s a -> s{_pldsdssiUploadProtocol = a})

-- | OAuth access token.
pldsdssiAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStoreInstances (Maybe Text)
pldsdssiAccessToken
  = lens _pldsdssiAccessToken
      (\ s a -> s{_pldsdssiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdssiUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStoreInstances (Maybe Text)
pldsdssiUploadType
  = lens _pldsdssiUploadType
      (\ s a -> s{_pldsdssiUploadType = a})

-- | Multipart request metadata.
pldsdssiPayload :: Lens' ProjectsLocationsDataSetsDicomStoresStoreInstances HTTPBody
pldsdssiPayload
  = lens _pldsdssiPayload
      (\ s a -> s{_pldsdssiPayload = a})

-- | JSONP
pldsdssiCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStoreInstances (Maybe Text)
pldsdssiCallback
  = lens _pldsdssiCallback
      (\ s a -> s{_pldsdssiCallback = a})

-- | The path of the StoreInstances DICOMweb request. For example,
-- \`studies\/[{study_uid}]\`. Note that the \`study_uid\` is optional.
pldsdssiDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStoreInstances Text
pldsdssiDicomWebPath
  = lens _pldsdssiDicomWebPath
      (\ s a -> s{_pldsdssiDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStoreInstances
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStoreInstances
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStoreInstances
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStoreInstances'{..}
          = go _pldsdssiParent _pldsdssiDicomWebPath
              _pldsdssiXgafv
              _pldsdssiUploadProtocol
              _pldsdssiAccessToken
              _pldsdssiUploadType
              _pldsdssiCallback
              (Just AltJSON)
              _pldsdssiPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStoreInstancesResource)
                      mempty
