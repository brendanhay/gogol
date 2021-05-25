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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.RetrieveStudy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RetrieveStudy returns all instances within the given study. See
-- [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveStudy, see [DICOM
-- study\/series\/instances](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#dicom_studyseriesinstances)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveStudy, see [Retrieving DICOM
-- data](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_dicom_data).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.retrieveStudy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Studies.RetrieveStudy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudyResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresStudiesRetrieveStudy
    , ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy

    -- * Request Lenses
    , pldsdssrsParent
    , pldsdssrsXgafv
    , pldsdssrsUploadProtocol
    , pldsdssrsAccessToken
    , pldsdssrsUploadType
    , pldsdssrsCallback
    , pldsdssrsDicomWebPath
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.retrieveStudy@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy' request conforms to.
type ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudyResource
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

-- | RetrieveStudy returns all instances within the given study. See
-- [RetrieveTransaction]
-- (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4).
-- For details on the implementation of RetrieveStudy, see [DICOM
-- study\/series\/instances](https:\/\/cloud.google.com\/healthcare\/docs\/dicom#dicom_studyseriesinstances)
-- in the Cloud Healthcare API conformance statement. For samples that show
-- how to call RetrieveStudy, see [Retrieving DICOM
-- data](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/dicomweb#retrieving_dicom_data).
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresStudiesRetrieveStudy' smart constructor.
data ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy =
  ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy'
    { _pldsdssrsParent :: !Text
    , _pldsdssrsXgafv :: !(Maybe Xgafv)
    , _pldsdssrsUploadProtocol :: !(Maybe Text)
    , _pldsdssrsAccessToken :: !(Maybe Text)
    , _pldsdssrsUploadType :: !(Maybe Text)
    , _pldsdssrsCallback :: !(Maybe Text)
    , _pldsdssrsDicomWebPath :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdssrsParent'
--
-- * 'pldsdssrsXgafv'
--
-- * 'pldsdssrsUploadProtocol'
--
-- * 'pldsdssrsAccessToken'
--
-- * 'pldsdssrsUploadType'
--
-- * 'pldsdssrsCallback'
--
-- * 'pldsdssrsDicomWebPath'
projectsLocationsDataSetsDicomStoresStudiesRetrieveStudy
    :: Text -- ^ 'pldsdssrsParent'
    -> Text -- ^ 'pldsdssrsDicomWebPath'
    -> ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy
projectsLocationsDataSetsDicomStoresStudiesRetrieveStudy pPldsdssrsParent_ pPldsdssrsDicomWebPath_ =
  ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy'
    { _pldsdssrsParent = pPldsdssrsParent_
    , _pldsdssrsXgafv = Nothing
    , _pldsdssrsUploadProtocol = Nothing
    , _pldsdssrsAccessToken = Nothing
    , _pldsdssrsUploadType = Nothing
    , _pldsdssrsCallback = Nothing
    , _pldsdssrsDicomWebPath = pPldsdssrsDicomWebPath_
    }


-- | The name of the DICOM store that is being accessed. For example,
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\`.
pldsdssrsParent :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy Text
pldsdssrsParent
  = lens _pldsdssrsParent
      (\ s a -> s{_pldsdssrsParent = a})

-- | V1 error format.
pldsdssrsXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy (Maybe Xgafv)
pldsdssrsXgafv
  = lens _pldsdssrsXgafv
      (\ s a -> s{_pldsdssrsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdssrsUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy (Maybe Text)
pldsdssrsUploadProtocol
  = lens _pldsdssrsUploadProtocol
      (\ s a -> s{_pldsdssrsUploadProtocol = a})

-- | OAuth access token.
pldsdssrsAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy (Maybe Text)
pldsdssrsAccessToken
  = lens _pldsdssrsAccessToken
      (\ s a -> s{_pldsdssrsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdssrsUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy (Maybe Text)
pldsdssrsUploadType
  = lens _pldsdssrsUploadType
      (\ s a -> s{_pldsdssrsUploadType = a})

-- | JSONP
pldsdssrsCallback :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy (Maybe Text)
pldsdssrsCallback
  = lens _pldsdssrsCallback
      (\ s a -> s{_pldsdssrsCallback = a})

-- | The path of the RetrieveStudy DICOMweb request. For example,
-- \`studies\/{study_uid}\`.
pldsdssrsDicomWebPath :: Lens' ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy Text
pldsdssrsDicomWebPath
  = lens _pldsdssrsDicomWebPath
      (\ s a -> s{_pldsdssrsDicomWebPath = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudy'{..}
          = go _pldsdssrsParent _pldsdssrsDicomWebPath
              _pldsdssrsXgafv
              _pldsdssrsUploadProtocol
              _pldsdssrsAccessToken
              _pldsdssrsUploadType
              _pldsdssrsCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresStudiesRetrieveStudyResource)
                      mempty
