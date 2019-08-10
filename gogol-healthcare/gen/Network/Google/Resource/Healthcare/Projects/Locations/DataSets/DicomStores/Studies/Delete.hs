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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- DeleteStudy deletes all instances within the given study. Delete
-- requests are equivalent to the GET requests specified in the WADO-RS
-- standard.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesDelete
    , ProjectsLocationsDataSetsDicomStoresStudiesDelete

    -- * Request Lenses
    , pldsdssdParent
    , pldsdssdXgafv
    , pldsdssdUploadProtocol
    , pldsdssdAccessToken
    , pldsdssdUploadType
    , pldsdssdCallback
    , pldsdssdDicomWebPath
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.delete@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesDelete' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesDeleteResource
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
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | DeleteStudy deletes all instances within the given study. Delete
-- requests are equivalent to the GET requests specified in the WADO-RS
-- standard.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesDelete' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesDelete =
  ProjectsLocationsDataSetsDicomStoresStudiesDelete'
    { _pldsdssdParent         :: !Text
    , _pldsdssdXgafv          :: !(Maybe Xgafv)
    , _pldsdssdUploadProtocol :: !(Maybe Text)
    , _pldsdssdAccessToken    :: !(Maybe Text)
    , _pldsdssdUploadType     :: !(Maybe Text)
    , _pldsdssdCallback       :: !(Maybe Text)
    , _pldsdssdDicomWebPath   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdssdParent'
--
-- * 'pldsdssdXgafv'
--
-- * 'pldsdssdUploadProtocol'
--
-- * 'pldsdssdAccessToken'
--
-- * 'pldsdssdUploadType'
--
-- * 'pldsdssdCallback'
--
-- * 'pldsdssdDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesDelete
    :: Text -- ^ 'pldsdssdParent'
    -> Text -- ^ 'pldsdssdDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesDelete
projectsLocationsDataSetsDicomStoresStudiesDelete pPldsdssdParent_ pPldsdssdDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesDelete'
    { _pldsdssdParent = pPldsdssdParent_
    , _pldsdssdXgafv = Nothing
    , _pldsdssdUploadProtocol = Nothing
    , _pldsdssdAccessToken = Nothing
    , _pldsdssdUploadType = Nothing
    , _pldsdssdCallback = Nothing
    , _pldsdssdDicomWebPath = pPldsdssdDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`).
pldsdssdParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesDelete Text
pldsdssdParent
  = lens _pldsdssdParent
      (\ s a -> s{_pldsdssdParent = a})

-- | V1 error format.
pldsdssdXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesDelete (Maybe Xgafv)
pldsdssdXgafv
  = lens _pldsdssdXgafv
      (\ s a -> s{_pldsdssdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdssdUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesDelete (Maybe Text)
pldsdssdUploadProtocol
  = lens _pldsdssdUploadProtocol
      (\ s a -> s{_pldsdssdUploadProtocol = a})

-- | OAuth access token.
pldsdssdAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesDelete (Maybe Text)
pldsdssdAccessToken
  = lens _pldsdssdAccessToken
      (\ s a -> s{_pldsdssdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdssdUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesDelete (Maybe Text)
pldsdssdUploadType
  = lens _pldsdssdUploadType
      (\ s a -> s{_pldsdssdUploadType = a})

-- | JSONP
pldsdssdCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesDelete (Maybe Text)
pldsdssdCallback
  = lens _pldsdssdCallback
      (\ s a -> s{_pldsdssdCallback = a})

-- | The path of the DICOMweb request, as specified in the STOW-RS, WADO-RS,
-- or QIDO-RS standard (e.g., \`studies\/{study_id}\`).
pldsdssdDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesDelete Text
pldsdssdDicomWebPath
  = lens _pldsdssdDicomWebPath
      (\ s a -> s{_pldsdssdDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesDelete
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesDelete'{..}
          = go _pldsdssdParent _pldsdssdDicomWebPath
              _pldsdssdXgafv
              _pldsdssdUploadProtocol
              _pldsdssdAccessToken
              _pldsdssdUploadType
              _pldsdssdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesDeleteResource)
                      mempty
