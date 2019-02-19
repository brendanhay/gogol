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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a FHIR resource.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesGet
    , ProjectsLocationsDataSetsFhirStoresResourcesGet

    -- * Request Lenses
    , pldsfsrgXgafv
    , pldsfsrgUploadProtocol
    , pldsfsrgAccessToken
    , pldsfsrgUploadType
    , pldsfsrgName
    , pldsfsrgCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources.get@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesGet' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesGetResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | Gets a FHIR resource.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesGet' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesGet =
  ProjectsLocationsDataSetsFhirStoresResourcesGet'
    { _pldsfsrgXgafv          :: !(Maybe Xgafv)
    , _pldsfsrgUploadProtocol :: !(Maybe Text)
    , _pldsfsrgAccessToken    :: !(Maybe Text)
    , _pldsfsrgUploadType     :: !(Maybe Text)
    , _pldsfsrgName           :: !Text
    , _pldsfsrgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrgXgafv'
--
-- * 'pldsfsrgUploadProtocol'
--
-- * 'pldsfsrgAccessToken'
--
-- * 'pldsfsrgUploadType'
--
-- * 'pldsfsrgName'
--
-- * 'pldsfsrgCallback'
projectsLocationsDataSetsFhirStoresResourcesGet
    :: Text -- ^ 'pldsfsrgName'
    -> ProjectsLocationsDataSetsFhirStoresResourcesGet
projectsLocationsDataSetsFhirStoresResourcesGet pPldsfsrgName_ =
  ProjectsLocationsDataSetsFhirStoresResourcesGet'
    { _pldsfsrgXgafv = Nothing
    , _pldsfsrgUploadProtocol = Nothing
    , _pldsfsrgAccessToken = Nothing
    , _pldsfsrgUploadType = Nothing
    , _pldsfsrgName = pPldsfsrgName_
    , _pldsfsrgCallback = Nothing
    }


-- | V1 error format.
pldsfsrgXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesGet (Maybe Xgafv)
pldsfsrgXgafv
  = lens _pldsfsrgXgafv
      (\ s a -> s{_pldsfsrgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrgUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesGet (Maybe Text)
pldsfsrgUploadProtocol
  = lens _pldsfsrgUploadProtocol
      (\ s a -> s{_pldsfsrgUploadProtocol = a})

-- | OAuth access token.
pldsfsrgAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesGet (Maybe Text)
pldsfsrgAccessToken
  = lens _pldsfsrgAccessToken
      (\ s a -> s{_pldsfsrgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrgUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesGet (Maybe Text)
pldsfsrgUploadType
  = lens _pldsfsrgUploadType
      (\ s a -> s{_pldsfsrgUploadType = a})

-- | The name of the resource to retrieve.
pldsfsrgName :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesGet Text
pldsfsrgName
  = lens _pldsfsrgName (\ s a -> s{_pldsfsrgName = a})

-- | JSONP
pldsfsrgCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesGet (Maybe Text)
pldsfsrgCallback
  = lens _pldsfsrgCallback
      (\ s a -> s{_pldsfsrgCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesGet
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesGet
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesGet'{..}
          = go _pldsfsrgName _pldsfsrgXgafv
              _pldsfsrgUploadProtocol
              _pldsfsrgAccessToken
              _pldsfsrgUploadType
              _pldsfsrgCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesGetResource)
                      mempty
