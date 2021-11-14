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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForSeries
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- SearchForSeries returns a list of matching series. See [Search
-- Transaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.6).
-- For details on the implementation of SearchForSeries, see [Search
-- transaction](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#search_transaction)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call SearchForSeries, see [Searching for studies, series,
-- instances, and
-- frames](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#searching_for_studies_series_instances_and_frames).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.searchForSeries@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SearchForSeries
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresSearchForSeriesResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresSearchForSeries
    , ProjectsLocationsDataSetsDicomStoresSearchForSeries

    -- * Request Lenses
    , pldsdssfsParent
    , pldsdssfsXgafv
    , pldsdssfsUploadProtocol
    , pldsdssfsAccessToken
    , pldsdssfsUploadType
    , pldsdssfsCallback
    , pldsdssfsDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.searchForSeries@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresSearchForSeries' request conforms to.
type ProjectsLocationsDataSetsDicomStoresSearchForSeriesResource
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

-- | SearchForSeries returns a list of matching series. See [Search
-- Transaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.6).
-- For details on the implementation of SearchForSeries, see [Search
-- transaction](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#search_transaction)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call SearchForSeries, see [Searching for studies, series,
-- instances, and
-- frames](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#searching_for_studies_series_instances_and_frames).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresSearchForSeries' smart constructor.
data ProjectsLocationsDataSetsDicomStoresSearchForSeries =
  ProjectsLocationsDataSetsDicomStoresSearchForSeries'
    { _pldsdssfsParent :: !Text
    , _pldsdssfsXgafv :: !(Maybe Xgafv)
    , _pldsdssfsUploadProtocol :: !(Maybe Text)
    , _pldsdssfsAccessToken :: !(Maybe Text)
    , _pldsdssfsUploadType :: !(Maybe Text)
    , _pldsdssfsCallback :: !(Maybe Text)
    , _pldsdssfsDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresSearchForSeries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdssfsParent'
--
-- * 'pldsdssfsXgafv'
--
-- * 'pldsdssfsUploadProtocol'
--
-- * 'pldsdssfsAccessToken'
--
-- * 'pldsdssfsUploadType'
--
-- * 'pldsdssfsCallback'
--
-- * 'pldsdssfsDicomWebPath'
projectsLocationsDataSetsDicomStoresSearchForSeries
    :: Text -- ^ 'pldsdssfsParent'
    -> Text -- ^ 'pldsdssfsDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresSearchForSeries
projectsLocationsDataSetsDicomStoresSearchForSeries pPldsdssfsParent_ pPldsdssfsDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresSearchForSeries'
    { _pldsdssfsParent = pPldsdssfsParent_
    , _pldsdssfsXgafv = Nothing
    , _pldsdssfsUploadProtocol = Nothing
    , _pldsdssfsAccessToken = Nothing
    , _pldsdssfsUploadType = Nothing
    , _pldsdssfsCallback = Nothing
    , _pldsdssfsDicomWebPath = pPldsdssfsDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdssfsParent :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForSeries Text
pldsdssfsParent
  = lens _pldsdssfsParent
      (\ s a -> s{_pldsdssfsParent = a})

-- | V1 error format.
pldsdssfsXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForSeries (Maybe Xgafv)
pldsdssfsXgafv
  = lens _pldsdssfsXgafv
      (\ s a -> s{_pldsdssfsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdssfsUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForSeries (Maybe Text)
pldsdssfsUploadProtocol
  = lens _pldsdssfsUploadProtocol
      (\ s a -> s{_pldsdssfsUploadProtocol = a})

-- | OAuth access token.
pldsdssfsAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForSeries (Maybe Text)
pldsdssfsAccessToken
  = lens _pldsdssfsAccessToken
      (\ s a -> s{_pldsdssfsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdssfsUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForSeries (Maybe Text)
pldsdssfsUploadType
  = lens _pldsdssfsUploadType
      (\ s a -> s{_pldsdssfsUploadType = a})

-- | JSONP
pldsdssfsCallback :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForSeries (Maybe Text)
pldsdssfsCallback
  = lens _pldsdssfsCallback
      (\ s a -> s{_pldsdssfsCallback = a})

-- | The path of the SearchForSeries DICOMweb request. For example,
-- \`series\` or \`studies\/{study_uid}\/series\`.
pldsdssfsDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresSearchForSeries Text
pldsdssfsDicomWebPath
  = lens _pldsdssfsDicomWebPath
      (\ s a -> s{_pldsdssfsDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresSearchForSeries
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresSearchForSeries
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresSearchForSeries
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresSearchForSeries'{..}
          = go _pldsdssfsParent _pldsdssfsDicomWebPath
              _pldsdssfsXgafv
              _pldsdssfsUploadProtocol
              _pldsdssfsAccessToken
              _pldsdssfsUploadType
              _pldsdssfsCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresSearchForSeriesResource)
                      mempty
