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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.SearchForInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- SearchForInstances returns a list of matching instances. See
-- http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_6.7
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.searchForInstances@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.SearchForInstances
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstancesResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesSearchForInstances
    , ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances

    -- * Request Lenses
    , pldsdsssfiParent
    , pldsdsssfiXgafv
    , pldsdsssfiUploadProtocol
    , pldsdsssfiAccessToken
    , pldsdsssfiUploadType
    , pldsdsssfiCallback
    , pldsdsssfiDicomWebPath
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.searchForInstances@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstancesResource
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
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesSearchForInstances' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances =
  ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances'
    { _pldsdsssfiParent         :: !Text
    , _pldsdsssfiXgafv          :: !(Maybe Xgafv)
    , _pldsdsssfiUploadProtocol :: !(Maybe Text)
    , _pldsdsssfiAccessToken    :: !(Maybe Text)
    , _pldsdsssfiUploadType     :: !(Maybe Text)
    , _pldsdsssfiCallback       :: !(Maybe Text)
    , _pldsdsssfiDicomWebPath   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsssfiParent'
--
-- * 'pldsdsssfiXgafv'
--
-- * 'pldsdsssfiUploadProtocol'
--
-- * 'pldsdsssfiAccessToken'
--
-- * 'pldsdsssfiUploadType'
--
-- * 'pldsdsssfiCallback'
--
-- * 'pldsdsssfiDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesSearchForInstances
    :: Text -- ^ 'pldsdsssfiParent'
    -> Text -- ^ 'pldsdsssfiDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances
projectsLocationsDataSetsDicomStoresStudiesSearchForInstances pPldsdsssfiParent_ pPldsdsssfiDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances'
    { _pldsdsssfiParent = pPldsdsssfiParent_
    , _pldsdsssfiXgafv = Nothing
    , _pldsdsssfiUploadProtocol = Nothing
    , _pldsdsssfiAccessToken = Nothing
    , _pldsdsssfiUploadType = Nothing
    , _pldsdsssfiCallback = Nothing
    , _pldsdsssfiDicomWebPath = pPldsdsssfiDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`).
pldsdsssfiParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances Text
pldsdsssfiParent
  = lens _pldsdsssfiParent
      (\ s a -> s{_pldsdsssfiParent = a})

-- | V1 error format.
pldsdsssfiXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances (Maybe Xgafv)
pldsdsssfiXgafv
  = lens _pldsdsssfiXgafv
      (\ s a -> s{_pldsdsssfiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsssfiUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances (Maybe Text)
pldsdsssfiUploadProtocol
  = lens _pldsdsssfiUploadProtocol
      (\ s a -> s{_pldsdsssfiUploadProtocol = a})

-- | OAuth access token.
pldsdsssfiAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances (Maybe Text)
pldsdsssfiAccessToken
  = lens _pldsdsssfiAccessToken
      (\ s a -> s{_pldsdsssfiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsssfiUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances (Maybe Text)
pldsdsssfiUploadType
  = lens _pldsdsssfiUploadType
      (\ s a -> s{_pldsdsssfiUploadType = a})

-- | JSONP
pldsdsssfiCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances (Maybe Text)
pldsdsssfiCallback
  = lens _pldsdsssfiCallback
      (\ s a -> s{_pldsdsssfiCallback = a})

-- | The path of the DICOMweb request, as specified in the STOW-RS, WADO-RS,
-- or QIDO-RS standard (e.g., \`instances\`).
pldsdsssfiDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances Text
pldsdsssfiDicomWebPath
  = lens _pldsdsssfiDicomWebPath
      (\ s a -> s{_pldsdsssfiDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstances'{..}
          = go _pldsdsssfiParent _pldsdsssfiDicomWebPath
              _pldsdsssfiXgafv
              _pldsdsssfiUploadProtocol
              _pldsdsssfiAccessToken
              _pldsdsssfiUploadType
              _pldsdsssfiCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesSearchForInstancesResource)
                      mempty
