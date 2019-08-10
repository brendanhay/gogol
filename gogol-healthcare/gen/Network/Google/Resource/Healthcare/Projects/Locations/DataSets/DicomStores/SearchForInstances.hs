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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- SearchForInstances returns a list of matching instances. See
-- http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_6.7
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.searchForInstances@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForInstances
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresSearchForInstancesResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresSearchForInstances
    , ProjectsLocationsDataSetsDicomStoresSearchForInstances

    -- * Request Lenses
    , pldsdssfiParent
    , pldsdssfiXgafv
    , pldsdssfiUploadProtocol
    , pldsdssfiAccessToken
    , pldsdssfiUploadType
    , pldsdssfiCallback
    , pldsdssfiDicomWebPath
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.searchForInstances@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresSearchForInstances' request conforms to.
type ProjectsLocationsDataSetsDicomStoresSearchForInstancesResource
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

-- | SearchForInstances returns a list of matching instances. See
-- http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_6.7
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresSearchForInstances' smart constructor.
data ProjectsLocationsDataSetsDicomStoresSearchForInstances =
  ProjectsLocationsDataSetsDicomStoresSearchForInstances'
    { _pldsdssfiParent         :: !Text
    , _pldsdssfiXgafv          :: !(Maybe Xgafv)
    , _pldsdssfiUploadProtocol :: !(Maybe Text)
    , _pldsdssfiAccessToken    :: !(Maybe Text)
    , _pldsdssfiUploadType     :: !(Maybe Text)
    , _pldsdssfiCallback       :: !(Maybe Text)
    , _pldsdssfiDicomWebPath   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresSearchForInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdssfiParent'
--
-- * 'pldsdssfiXgafv'
--
-- * 'pldsdssfiUploadProtocol'
--
-- * 'pldsdssfiAccessToken'
--
-- * 'pldsdssfiUploadType'
--
-- * 'pldsdssfiCallback'
--
-- * 'pldsdssfiDicomWebPath'
projectsLocationsDataSetsDicomStoresSearchForInstances
    :: Text -- ^ 'pldsdssfiParent'
    -> Text -- ^ 'pldsdssfiDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresSearchForInstances
projectsLocationsDataSetsDicomStoresSearchForInstances pPldsdssfiParent_ pPldsdssfiDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresSearchForInstances'
    { _pldsdssfiParent = pPldsdssfiParent_
    , _pldsdssfiXgafv = Nothing
    , _pldsdssfiUploadProtocol = Nothing
    , _pldsdssfiAccessToken = Nothing
    , _pldsdssfiUploadType = Nothing
    , _pldsdssfiCallback = Nothing
    , _pldsdssfiDicomWebPath = pPldsdssfiDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`).
pldsdssfiParent :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForInstances Text
pldsdssfiParent
  = lens _pldsdssfiParent
      (\ s a -> s{_pldsdssfiParent = a})

-- | V1 error format.
pldsdssfiXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForInstances (Maybe Xgafv)
pldsdssfiXgafv
  = lens _pldsdssfiXgafv
      (\ s a -> s{_pldsdssfiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdssfiUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForInstances (Maybe Text)
pldsdssfiUploadProtocol
  = lens _pldsdssfiUploadProtocol
      (\ s a -> s{_pldsdssfiUploadProtocol = a})

-- | OAuth access token.
pldsdssfiAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForInstances (Maybe Text)
pldsdssfiAccessToken
  = lens _pldsdssfiAccessToken
      (\ s a -> s{_pldsdssfiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdssfiUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForInstances (Maybe Text)
pldsdssfiUploadType
  = lens _pldsdssfiUploadType
      (\ s a -> s{_pldsdssfiUploadType = a})

-- | JSONP
pldsdssfiCallback :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForInstances (Maybe Text)
pldsdssfiCallback
  = lens _pldsdssfiCallback
      (\ s a -> s{_pldsdssfiCallback = a})

-- | The path of the DICOMweb request, as specified in the STOW-RS, WADO-RS,
-- or QIDO-RS standard (e.g., \`instances\`).
pldsdssfiDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForInstances Text
pldsdssfiDicomWebPath
  = lens _pldsdssfiDicomWebPath
      (\ s a -> s{_pldsdssfiDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresSearchForInstances
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresSearchForInstances
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresSearchForInstances
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresSearchForInstances'{..}
          = go _pldsdssfiParent _pldsdssfiDicomWebPath
              _pldsdssfiXgafv
              _pldsdssfiUploadProtocol
              _pldsdssfiAccessToken
              _pldsdssfiUploadType
              _pldsdssfiCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresSearchForInstancesResource)
                      mempty
