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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- DeleteSeries deletes all instances within the given study and series.
-- Delete requests are equivalent to the GET requests specified in the
-- WADO-RS standard.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesSeriesDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesSeriesDelete
    , ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete

    -- * Request Lenses
    , pldsdsssdParent
    , pldsdsssdXgafv
    , pldsdsssdUploadProtocol
    , pldsdsssdAccessToken
    , pldsdsssdUploadType
    , pldsdsssdCallback
    , pldsdsssdDicomWebPath
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.delete@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesSeriesDeleteResource
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

-- | DeleteSeries deletes all instances within the given study and series.
-- Delete requests are equivalent to the GET requests specified in the
-- WADO-RS standard.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesSeriesDelete' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete'
    { _pldsdsssdParent         :: !Text
    , _pldsdsssdXgafv          :: !(Maybe Xgafv)
    , _pldsdsssdUploadProtocol :: !(Maybe Text)
    , _pldsdsssdAccessToken    :: !(Maybe Text)
    , _pldsdsssdUploadType     :: !(Maybe Text)
    , _pldsdsssdCallback       :: !(Maybe Text)
    , _pldsdsssdDicomWebPath   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsssdParent'
--
-- * 'pldsdsssdXgafv'
--
-- * 'pldsdsssdUploadProtocol'
--
-- * 'pldsdsssdAccessToken'
--
-- * 'pldsdsssdUploadType'
--
-- * 'pldsdsssdCallback'
--
-- * 'pldsdsssdDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesSeriesDelete
    :: Text -- ^ 'pldsdsssdParent'
    -> Text -- ^ 'pldsdsssdDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete
projectsLocationsDataSetsDicomStoresStudiesSeriesDelete pPldsdsssdParent_ pPldsdsssdDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete'
    { _pldsdsssdParent = pPldsdsssdParent_
    , _pldsdsssdXgafv = Nothing
    , _pldsdsssdUploadProtocol = Nothing
    , _pldsdsssdAccessToken = Nothing
    , _pldsdsssdUploadType = Nothing
    , _pldsdsssdCallback = Nothing
    , _pldsdsssdDicomWebPath = pPldsdsssdDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`).
pldsdsssdParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete Text
pldsdsssdParent
  = lens _pldsdsssdParent
      (\ s a -> s{_pldsdsssdParent = a})

-- | V1 error format.
pldsdsssdXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete (Maybe Xgafv)
pldsdsssdXgafv
  = lens _pldsdsssdXgafv
      (\ s a -> s{_pldsdsssdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsssdUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete (Maybe Text)
pldsdsssdUploadProtocol
  = lens _pldsdsssdUploadProtocol
      (\ s a -> s{_pldsdsssdUploadProtocol = a})

-- | OAuth access token.
pldsdsssdAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete (Maybe Text)
pldsdsssdAccessToken
  = lens _pldsdsssdAccessToken
      (\ s a -> s{_pldsdsssdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsssdUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete (Maybe Text)
pldsdsssdUploadType
  = lens _pldsdsssdUploadType
      (\ s a -> s{_pldsdsssdUploadType = a})

-- | JSONP
pldsdsssdCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete (Maybe Text)
pldsdsssdCallback
  = lens _pldsdsssdCallback
      (\ s a -> s{_pldsdsssdCallback = a})

-- | The path of the DICOMweb request, as specified in the STOW-RS, WADO-RS,
-- or QIDO-RS standard (e.g.,
-- \`studies\/{study_id}\/series\/{series_id}\`).
pldsdsssdDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete Text
pldsdsssdDicomWebPath
  = lens _pldsdsssdDicomWebPath
      (\ s a -> s{_pldsdsssdDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesSeriesDelete'{..}
          = go _pldsdsssdParent _pldsdsssdDicomWebPath
              _pldsdsssdXgafv
              _pldsdsssdUploadProtocol
              _pldsdsssdAccessToken
              _pldsdsssdUploadType
              _pldsdsssdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesSeriesDeleteResource)
                      mempty
