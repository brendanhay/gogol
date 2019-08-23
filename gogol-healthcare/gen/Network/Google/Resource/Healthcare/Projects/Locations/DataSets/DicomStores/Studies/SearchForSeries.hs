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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.SearchForSeries
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- SearchForSeries returns a list of matching series. See
-- http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_6.7
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.searchForSeries@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.SearchForSeries
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeriesResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesSearchForSeries
    , ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries

    -- * Request Lenses
    , pldsdsssfsParent
    , pldsdsssfsXgafv
    , pldsdsssfsUploadProtocol
    , pldsdsssfsAccessToken
    , pldsdsssfsUploadType
    , pldsdsssfsCallback
    , pldsdsssfsDicomWebPath
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.searchForSeries@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeriesResource
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

-- | SearchForSeries returns a list of matching series. See
-- http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_6.7
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesSearchForSeries' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries =
  ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries'
    { _pldsdsssfsParent         :: !Text
    , _pldsdsssfsXgafv          :: !(Maybe Xgafv)
    , _pldsdsssfsUploadProtocol :: !(Maybe Text)
    , _pldsdsssfsAccessToken    :: !(Maybe Text)
    , _pldsdsssfsUploadType     :: !(Maybe Text)
    , _pldsdsssfsCallback       :: !(Maybe Text)
    , _pldsdsssfsDicomWebPath   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsssfsParent'
--
-- * 'pldsdsssfsXgafv'
--
-- * 'pldsdsssfsUploadProtocol'
--
-- * 'pldsdsssfsAccessToken'
--
-- * 'pldsdsssfsUploadType'
--
-- * 'pldsdsssfsCallback'
--
-- * 'pldsdsssfsDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesSearchForSeries
    :: Text -- ^ 'pldsdsssfsParent'
    -> Text -- ^ 'pldsdsssfsDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries
projectsLocationsDataSetsDicomStoresStudiesSearchForSeries pPldsdsssfsParent_ pPldsdsssfsDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries'
    { _pldsdsssfsParent = pPldsdsssfsParent_
    , _pldsdsssfsXgafv = Nothing
    , _pldsdsssfsUploadProtocol = Nothing
    , _pldsdsssfsAccessToken = Nothing
    , _pldsdsssfsUploadType = Nothing
    , _pldsdsssfsCallback = Nothing
    , _pldsdsssfsDicomWebPath = pPldsdsssfsDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`).
pldsdsssfsParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries Text
pldsdsssfsParent
  = lens _pldsdsssfsParent
      (\ s a -> s{_pldsdsssfsParent = a})

-- | V1 error format.
pldsdsssfsXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries (Maybe Xgafv)
pldsdsssfsXgafv
  = lens _pldsdsssfsXgafv
      (\ s a -> s{_pldsdsssfsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsssfsUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries (Maybe Text)
pldsdsssfsUploadProtocol
  = lens _pldsdsssfsUploadProtocol
      (\ s a -> s{_pldsdsssfsUploadProtocol = a})

-- | OAuth access token.
pldsdsssfsAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries (Maybe Text)
pldsdsssfsAccessToken
  = lens _pldsdsssfsAccessToken
      (\ s a -> s{_pldsdsssfsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsssfsUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries (Maybe Text)
pldsdsssfsUploadType
  = lens _pldsdsssfsUploadType
      (\ s a -> s{_pldsdsssfsUploadType = a})

-- | JSONP
pldsdsssfsCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries (Maybe Text)
pldsdsssfsCallback
  = lens _pldsdsssfsCallback
      (\ s a -> s{_pldsdsssfsCallback = a})

-- | The path of the DICOMweb request, as specified in the STOW-RS, WADO-RS,
-- or QIDO-RS standard (e.g., \`series\`).
pldsdsssfsDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries Text
pldsdsssfsDicomWebPath
  = lens _pldsdsssfsDicomWebPath
      (\ s a -> s{_pldsdsssfsDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeries'{..}
          = go _pldsdsssfsParent _pldsdsssfsDicomWebPath
              _pldsdsssfsXgafv
              _pldsdsssfsUploadProtocol
              _pldsdsssfsAccessToken
              _pldsdsssfsUploadType
              _pldsdsssfsCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesSearchForSeriesResource)
                      mempty
