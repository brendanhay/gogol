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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveRendered
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RetrieveRenderedInstance returns instance associated with the given
-- study, series, and SOP Instance UID in an acceptable Rendered Media
-- Type. See [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveRenderedInstance, see
-- [Rendered
-- resources](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#rendered_resources)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveRenderedInstance, see [Retrieving consumer image
-- formats](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_consumer_image_formats).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveRendered@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.Series.Instances.RetrieveRendered
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRenderedResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered
    , ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered

    -- * Request Lenses
    , pldsdsssirrParent
    , pldsdsssirrXgafv
    , pldsdsssirrUploadProtocol
    , pldsdsssirrAccessToken
    , pldsdsssirrUploadType
    , pldsdsssirrCallback
    , pldsdsssirrDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.retrieveRendered@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRenderedResource
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

-- | RetrieveRenderedInstance returns instance associated with the given
-- study, series, and SOP Instance UID in an acceptable Rendered Media
-- Type. See [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveRenderedInstance, see
-- [Rendered
-- resources](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#rendered_resources)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveRenderedInstance, see [Retrieving consumer image
-- formats](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_consumer_image_formats).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered'
    { _pldsdsssirrParent :: !Text
    , _pldsdsssirrXgafv :: !(Maybe Xgafv)
    , _pldsdsssirrUploadProtocol :: !(Maybe Text)
    , _pldsdsssirrAccessToken :: !(Maybe Text)
    , _pldsdsssirrUploadType :: !(Maybe Text)
    , _pldsdsssirrCallback :: !(Maybe Text)
    , _pldsdsssirrDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsssirrParent'
--
-- * 'pldsdsssirrXgafv'
--
-- * 'pldsdsssirrUploadProtocol'
--
-- * 'pldsdsssirrAccessToken'
--
-- * 'pldsdsssirrUploadType'
--
-- * 'pldsdsssirrCallback'
--
-- * 'pldsdsssirrDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered
    :: Text -- ^ 'pldsdsssirrParent'
    -> Text -- ^ 'pldsdsssirrDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered
projectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered pPldsdsssirrParent_ pPldsdsssirrDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered'
    { _pldsdsssirrParent = pPldsdsssirrParent_
    , _pldsdsssirrXgafv = Nothing
    , _pldsdsssirrUploadProtocol = Nothing
    , _pldsdsssirrAccessToken = Nothing
    , _pldsdsssirrUploadType = Nothing
    , _pldsdsssirrCallback = Nothing
    , _pldsdsssirrDicomWebPath = pPldsdsssirrDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdsssirrParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered Text
pldsdsssirrParent
  = lens _pldsdsssirrParent
      (\ s a -> s{_pldsdsssirrParent = a})

-- | V1 error format.
pldsdsssirrXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered (Maybe Xgafv)
pldsdsssirrXgafv
  = lens _pldsdsssirrXgafv
      (\ s a -> s{_pldsdsssirrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsssirrUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered (Maybe Text)
pldsdsssirrUploadProtocol
  = lens _pldsdsssirrUploadProtocol
      (\ s a -> s{_pldsdsssirrUploadProtocol = a})

-- | OAuth access token.
pldsdsssirrAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered (Maybe Text)
pldsdsssirrAccessToken
  = lens _pldsdsssirrAccessToken
      (\ s a -> s{_pldsdsssirrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsssirrUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered (Maybe Text)
pldsdsssirrUploadType
  = lens _pldsdsssirrUploadType
      (\ s a -> s{_pldsdsssirrUploadType = a})

-- | JSONP
pldsdsssirrCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered (Maybe Text)
pldsdsssirrCallback
  = lens _pldsdsssirrCallback
      (\ s a -> s{_pldsdsssirrCallback = a})

-- | The path of the RetrieveRenderedInstance DICOMweb request. For example,
-- \`studies\/{study_uid}\/series\/{series_uid}\/instances\/{instance_uid}\/rendered\`.
pldsdsssirrDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered Text
pldsdsssirrDicomWebPath
  = lens _pldsdsssirrDicomWebPath
      (\ s a -> s{_pldsdsssirrDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRendered'{..}
          = go _pldsdsssirrParent _pldsdsssirrDicomWebPath
              _pldsdsssirrXgafv
              _pldsdsssirrUploadProtocol
              _pldsdsssirrAccessToken
              _pldsdsssirrUploadType
              _pldsdsssirrCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesSeriesInstancesRetrieveRenderedResource)
                      mempty
