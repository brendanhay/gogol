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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Patient.GetEverything
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets all the resources in the patient compartment.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources.Patient.get$everything@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Patient.GetEverything
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverythingResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesPatientGetEverything
    , ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything

    -- * Request Lenses
    , pldsfsrpgeXgafv
    , pldsfsrpgeUploadProtocol
    , pldsfsrpgeAccessToken
    , pldsfsrpgeStart
    , pldsfsrpgeUploadType
    , pldsfsrpgeName
    , pldsfsrpgeEnd
    , pldsfsrpgeCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources.Patient.get$everything@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverythingResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         "$everything" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "start" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "end" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | Gets all the resources in the patient compartment.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesPatientGetEverything' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything =
  ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything'
    { _pldsfsrpgeXgafv          :: !(Maybe Xgafv)
    , _pldsfsrpgeUploadProtocol :: !(Maybe Text)
    , _pldsfsrpgeAccessToken    :: !(Maybe Text)
    , _pldsfsrpgeStart          :: !(Maybe Text)
    , _pldsfsrpgeUploadType     :: !(Maybe Text)
    , _pldsfsrpgeName           :: !Text
    , _pldsfsrpgeEnd            :: !(Maybe Text)
    , _pldsfsrpgeCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrpgeXgafv'
--
-- * 'pldsfsrpgeUploadProtocol'
--
-- * 'pldsfsrpgeAccessToken'
--
-- * 'pldsfsrpgeStart'
--
-- * 'pldsfsrpgeUploadType'
--
-- * 'pldsfsrpgeName'
--
-- * 'pldsfsrpgeEnd'
--
-- * 'pldsfsrpgeCallback'
projectsLocationsDataSetsFhirStoresResourcesPatientGetEverything
    :: Text -- ^ 'pldsfsrpgeName'
    -> ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything
projectsLocationsDataSetsFhirStoresResourcesPatientGetEverything pPldsfsrpgeName_ =
  ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything'
    { _pldsfsrpgeXgafv = Nothing
    , _pldsfsrpgeUploadProtocol = Nothing
    , _pldsfsrpgeAccessToken = Nothing
    , _pldsfsrpgeStart = Nothing
    , _pldsfsrpgeUploadType = Nothing
    , _pldsfsrpgeName = pPldsfsrpgeName_
    , _pldsfsrpgeEnd = Nothing
    , _pldsfsrpgeCallback = Nothing
    }


-- | V1 error format.
pldsfsrpgeXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything (Maybe Xgafv)
pldsfsrpgeXgafv
  = lens _pldsfsrpgeXgafv
      (\ s a -> s{_pldsfsrpgeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrpgeUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything (Maybe Text)
pldsfsrpgeUploadProtocol
  = lens _pldsfsrpgeUploadProtocol
      (\ s a -> s{_pldsfsrpgeUploadProtocol = a})

-- | OAuth access token.
pldsfsrpgeAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything (Maybe Text)
pldsfsrpgeAccessToken
  = lens _pldsfsrpgeAccessToken
      (\ s a -> s{_pldsfsrpgeAccessToken = a})

-- | The response includes records subsequent to the start date. If no start
-- date is provided, all records prior to the end date are in scope.
pldsfsrpgeStart :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything (Maybe Text)
pldsfsrpgeStart
  = lens _pldsfsrpgeStart
      (\ s a -> s{_pldsfsrpgeStart = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrpgeUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything (Maybe Text)
pldsfsrpgeUploadType
  = lens _pldsfsrpgeUploadType
      (\ s a -> s{_pldsfsrpgeUploadType = a})

-- | Name of the patient for which the information is required.
pldsfsrpgeName :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything Text
pldsfsrpgeName
  = lens _pldsfsrpgeName
      (\ s a -> s{_pldsfsrpgeName = a})

-- | The response includes records prior to the end date. If no end date is
-- provided, all records subsequent to the start date are in scope.
pldsfsrpgeEnd :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything (Maybe Text)
pldsfsrpgeEnd
  = lens _pldsfsrpgeEnd
      (\ s a -> s{_pldsfsrpgeEnd = a})

-- | JSONP
pldsfsrpgeCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything (Maybe Text)
pldsfsrpgeCallback
  = lens _pldsfsrpgeCallback
      (\ s a -> s{_pldsfsrpgeCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverything'{..}
          = go _pldsfsrpgeName _pldsfsrpgeXgafv
              _pldsfsrpgeUploadProtocol
              _pldsfsrpgeAccessToken
              _pldsfsrpgeStart
              _pldsfsrpgeUploadType
              _pldsfsrpgeEnd
              _pldsfsrpgeCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesPatientGetEverythingResource)
                      mempty
