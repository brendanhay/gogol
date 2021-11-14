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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForStudies
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- SearchForStudies returns a list of matching studies. See [Search
-- Transaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.6).
-- For details on the implementation of SearchForStudies, see [Search
-- transaction](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#search_transaction)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call SearchForStudies, see [Searching for studies, series,
-- instances, and
-- frames](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#searching_for_studies_series_instances_and_frames).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.searchForStudies@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForStudies
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresSearchForStudiesResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresSearchForStudies
    , ProjectsLocationsDataSetsDicomStoresSearchForStudies

    -- * Request Lenses
    , pldsdssfssParent
    , pldsdssfssXgafv
    , pldsdssfssUploadProtocol
    , pldsdssfssAccessToken
    , pldsdssfssUploadType
    , pldsdssfssCallback
    , pldsdssfssDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.searchForStudies@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresSearchForStudies' request conforms to.
type ProjectsLocationsDataSetsDicomStoresSearchForStudiesResource
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

-- | SearchForStudies returns a list of matching studies. See [Search
-- Transaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.6).
-- For details on the implementation of SearchForStudies, see [Search
-- transaction](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#search_transaction)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call SearchForStudies, see [Searching for studies, series,
-- instances, and
-- frames](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#searching_for_studies_series_instances_and_frames).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresSearchForStudies' smart constructor.
data ProjectsLocationsDataSetsDicomStoresSearchForStudies =
  ProjectsLocationsDataSetsDicomStoresSearchForStudies'
    { _pldsdssfssParent :: !Text
    , _pldsdssfssXgafv :: !(Maybe Xgafv)
    , _pldsdssfssUploadProtocol :: !(Maybe Text)
    , _pldsdssfssAccessToken :: !(Maybe Text)
    , _pldsdssfssUploadType :: !(Maybe Text)
    , _pldsdssfssCallback :: !(Maybe Text)
    , _pldsdssfssDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresSearchForStudies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdssfssParent'
--
-- * 'pldsdssfssXgafv'
--
-- * 'pldsdssfssUploadProtocol'
--
-- * 'pldsdssfssAccessToken'
--
-- * 'pldsdssfssUploadType'
--
-- * 'pldsdssfssCallback'
--
-- * 'pldsdssfssDicomWebPath'
projectsLocationsDataSetsDicomStoresSearchForStudies
    :: Text -- ^ 'pldsdssfssParent'
    -> Text -- ^ 'pldsdssfssDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresSearchForStudies
projectsLocationsDataSetsDicomStoresSearchForStudies pPldsdssfssParent_ pPldsdssfssDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresSearchForStudies'
    { _pldsdssfssParent = pPldsdssfssParent_
    , _pldsdssfssXgafv = Nothing
    , _pldsdssfssUploadProtocol = Nothing
    , _pldsdssfssAccessToken = Nothing
    , _pldsdssfssUploadType = Nothing
    , _pldsdssfssCallback = Nothing
    , _pldsdssfssDicomWebPath = pPldsdssfssDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdssfssParent :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForStudies Text
pldsdssfssParent
  = lens _pldsdssfssParent
      (\ s a -> s{_pldsdssfssParent = a})

-- | V1 error format.
pldsdssfssXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForStudies (Maybe Xgafv)
pldsdssfssXgafv
  = lens _pldsdssfssXgafv
      (\ s a -> s{_pldsdssfssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdssfssUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForStudies (Maybe Text)
pldsdssfssUploadProtocol
  = lens _pldsdssfssUploadProtocol
      (\ s a -> s{_pldsdssfssUploadProtocol = a})

-- | OAuth access token.
pldsdssfssAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForStudies (Maybe Text)
pldsdssfssAccessToken
  = lens _pldsdssfssAccessToken
      (\ s a -> s{_pldsdssfssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdssfssUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForStudies (Maybe Text)
pldsdssfssUploadType
  = lens _pldsdssfssUploadType
      (\ s a -> s{_pldsdssfssUploadType = a})

-- | JSONP
pldsdssfssCallback :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForStudies (Maybe Text)
pldsdssfssCallback
  = lens _pldsdssfssCallback
      (\ s a -> s{_pldsdssfssCallback = a})

-- | The path of the SearchForStudies DICOMweb request. For example,
-- \`studies\`.
pldsdssfssDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForStudies Text
pldsdssfssDicomWebPath
  = lens _pldsdssfssDicomWebPath
      (\ s a -> s{_pldsdssfssDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresSearchForStudies
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresSearchForStudies
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresSearchForStudies
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresSearchForStudies'{..}
          = go _pldsdssfssParent _pldsdssfssDicomWebPath
              _pldsdssfssXgafv
              _pldsdssfssUploadProtocol
              _pldsdssfssAccessToken
              _pldsdssfssUploadType
              _pldsdssfssCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresSearchForStudiesResource)
                      mempty
