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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Frames.RetrieveRendered
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RetrieveRenderedFrames returns instances associated with the given
-- study, series, SOP Instance UID and frame numbers in an acceptable
-- Rendered Media Type. See [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveRenderedFrames, see
-- [Rendered
-- resources](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#rendered_resources)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveRenderedFrames, see [Retrieving consumer image
-- formats](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_consumer_image_formats).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveRendered@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.Frames.RetrieveRendered
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRenderedResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered
    , ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered

    -- * Request Lenses
    , pldsdsssifrrParent
    , pldsdsssifrrXgafv
    , pldsdsssifrrUploadProtocol
    , pldsdsssifrrAccessToken
    , pldsdsssifrrUploadType
    , pldsdsssifrrCallback
    , pldsdsssifrrDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveRendered@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRenderedResource
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

-- | RetrieveRenderedFrames returns instances associated with the given
-- study, series, SOP Instance UID and frame numbers in an acceptable
-- Rendered Media Type. See [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveRenderedFrames, see
-- [Rendered
-- resources](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#rendered_resources)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveRenderedFrames, see [Retrieving consumer image
-- formats](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_consumer_image_formats).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered'
    { _pldsdsssifrrParent :: !Text
    , _pldsdsssifrrXgafv :: !(Maybe Xgafv)
    , _pldsdsssifrrUploadProtocol :: !(Maybe Text)
    , _pldsdsssifrrAccessToken :: !(Maybe Text)
    , _pldsdsssifrrUploadType :: !(Maybe Text)
    , _pldsdsssifrrCallback :: !(Maybe Text)
    , _pldsdsssifrrDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsssifrrParent'
--
-- * 'pldsdsssifrrXgafv'
--
-- * 'pldsdsssifrrUploadProtocol'
--
-- * 'pldsdsssifrrAccessToken'
--
-- * 'pldsdsssifrrUploadType'
--
-- * 'pldsdsssifrrCallback'
--
-- * 'pldsdsssifrrDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered
    :: Text -- ^ 'pldsdsssifrrParent'
    -> Text -- ^ 'pldsdsssifrrDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered
projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered pPldsdsssifrrParent_ pPldsdsssifrrDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered'
    { _pldsdsssifrrParent = pPldsdsssifrrParent_
    , _pldsdsssifrrXgafv = Nothing
    , _pldsdsssifrrUploadProtocol = Nothing
    , _pldsdsssifrrAccessToken = Nothing
    , _pldsdsssifrrUploadType = Nothing
    , _pldsdsssifrrCallback = Nothing
    , _pldsdsssifrrDicomWebPath = pPldsdsssifrrDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdsssifrrParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered Text
pldsdsssifrrParent
  = lens _pldsdsssifrrParent
      (\ s a -> s{_pldsdsssifrrParent = a})

-- | V1 error format.
pldsdsssifrrXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered (Maybe Xgafv)
pldsdsssifrrXgafv
  = lens _pldsdsssifrrXgafv
      (\ s a -> s{_pldsdsssifrrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsssifrrUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered (Maybe Text)
pldsdsssifrrUploadProtocol
  = lens _pldsdsssifrrUploadProtocol
      (\ s a -> s{_pldsdsssifrrUploadProtocol = a})

-- | OAuth access token.
pldsdsssifrrAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered (Maybe Text)
pldsdsssifrrAccessToken
  = lens _pldsdsssifrrAccessToken
      (\ s a -> s{_pldsdsssifrrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsssifrrUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered (Maybe Text)
pldsdsssifrrUploadType
  = lens _pldsdsssifrrUploadType
      (\ s a -> s{_pldsdsssifrrUploadType = a})

-- | JSONP
pldsdsssifrrCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered (Maybe Text)
pldsdsssifrrCallback
  = lens _pldsdsssifrrCallback
      (\ s a -> s{_pldsdsssifrrCallback = a})

-- | The path of the RetrieveRenderedFrames DICOMweb request. For example,
-- \`studies\/{study_uid}\/series\/{series_uid}\/instances\/{instance_uid}\/frames\/{frame_list}\/rendered\`.
pldsdsssifrrDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered Text
pldsdsssifrrDicomWebPath
  = lens _pldsdsssifrrDicomWebPath
      (\ s a -> s{_pldsdsssifrrDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRendered'{..}
          = go _pldsdsssifrrParent _pldsdsssifrrDicomWebPath
              _pldsdsssifrrXgafv
              _pldsdsssifrrUploadProtocol
              _pldsdsssifrrAccessToken
              _pldsdsssifrrUploadType
              _pldsdsssifrrCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesFramesRetrieveRenderedResource)
                      mempty
