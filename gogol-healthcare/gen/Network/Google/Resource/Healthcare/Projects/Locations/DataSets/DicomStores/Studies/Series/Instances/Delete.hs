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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- DeleteInstance deletes an instance associated with the given study,
-- series, and SOP Instance UID. Delete requests are equivalent to the GET
-- requests specified in the WADO-RS standard.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete
    , ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete

    -- * Request Lenses
    , pldsdsssidParent
    , pldsdsssidXgafv
    , pldsdsssidUploadProtocol
    , pldsdsssidAccessToken
    , pldsdsssidUploadType
    , pldsdsssidCallback
    , pldsdsssidDicomWebPath
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.delete@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDeleteResource
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

-- | DeleteInstance deletes an instance associated with the given study,
-- series, and SOP Instance UID. Delete requests are equivalent to the GET
-- requests specified in the WADO-RS standard.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete'
    { _pldsdsssidParent         :: !Text
    , _pldsdsssidXgafv          :: !(Maybe Xgafv)
    , _pldsdsssidUploadProtocol :: !(Maybe Text)
    , _pldsdsssidAccessToken    :: !(Maybe Text)
    , _pldsdsssidUploadType     :: !(Maybe Text)
    , _pldsdsssidCallback       :: !(Maybe Text)
    , _pldsdsssidDicomWebPath   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsssidParent'
--
-- * 'pldsdsssidXgafv'
--
-- * 'pldsdsssidUploadProtocol'
--
-- * 'pldsdsssidAccessToken'
--
-- * 'pldsdsssidUploadType'
--
-- * 'pldsdsssidCallback'
--
-- * 'pldsdsssidDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete
    :: Text -- ^ 'pldsdsssidParent'
    -> Text -- ^ 'pldsdsssidDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete
projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete pPldsdsssidParent_ pPldsdsssidDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete'
    { _pldsdsssidParent = pPldsdsssidParent_
    , _pldsdsssidXgafv = Nothing
    , _pldsdsssidUploadProtocol = Nothing
    , _pldsdsssidAccessToken = Nothing
    , _pldsdsssidUploadType = Nothing
    , _pldsdsssidCallback = Nothing
    , _pldsdsssidDicomWebPath = pPldsdsssidDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed (e.g.,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`).
pldsdsssidParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete Text
pldsdsssidParent
  = lens _pldsdsssidParent
      (\ s a -> s{_pldsdsssidParent = a})

-- | V1 error format.
pldsdsssidXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete (Maybe Xgafv)
pldsdsssidXgafv
  = lens _pldsdsssidXgafv
      (\ s a -> s{_pldsdsssidXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsssidUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete (Maybe Text)
pldsdsssidUploadProtocol
  = lens _pldsdsssidUploadProtocol
      (\ s a -> s{_pldsdsssidUploadProtocol = a})

-- | OAuth access token.
pldsdsssidAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete (Maybe Text)
pldsdsssidAccessToken
  = lens _pldsdsssidAccessToken
      (\ s a -> s{_pldsdsssidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsssidUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete (Maybe Text)
pldsdsssidUploadType
  = lens _pldsdsssidUploadType
      (\ s a -> s{_pldsdsssidUploadType = a})

-- | JSONP
pldsdsssidCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete (Maybe Text)
pldsdsssidCallback
  = lens _pldsdsssidCallback
      (\ s a -> s{_pldsdsssidCallback = a})

-- | The path of the DICOMweb request, as specified in the STOW-RS, WADO-RS,
-- or QIDO-RS standard (e.g.,
-- \`studies\/{study_id}\/series\/{series_id}\/instances\/{instance_id}\`).
pldsdsssidDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete Text
pldsdsssidDicomWebPath
  = lens _pldsdsssidDicomWebPath
      (\ s a -> s{_pldsdsssidDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDelete'{..}
          = go _pldsdsssidParent _pldsdsssidDicomWebPath
              _pldsdsssidXgafv
              _pldsdsssidUploadProtocol
              _pldsdsssidAccessToken
              _pldsdsssidUploadType
              _pldsdsssidCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesDeleteResource)
                      mempty
