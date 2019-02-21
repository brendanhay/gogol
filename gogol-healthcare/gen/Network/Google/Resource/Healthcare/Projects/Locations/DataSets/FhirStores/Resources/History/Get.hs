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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.History.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a version (current or historical) of FHIR resource by version id.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources._history.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.History.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesHistoryGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesHistoryGet
    , ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet

    -- * Request Lenses
    , pldsfsrhgXgafv
    , pldsfsrhgUploadProtocol
    , pldsfsrhgAccessToken
    , pldsfsrhgUploadType
    , pldsfsrhgName
    , pldsfsrhgCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources._history.get@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesHistoryGetResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | Gets a version (current or historical) of FHIR resource by version id.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesHistoryGet' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet =
  ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet'
    { _pldsfsrhgXgafv          :: !(Maybe Xgafv)
    , _pldsfsrhgUploadProtocol :: !(Maybe Text)
    , _pldsfsrhgAccessToken    :: !(Maybe Text)
    , _pldsfsrhgUploadType     :: !(Maybe Text)
    , _pldsfsrhgName           :: !Text
    , _pldsfsrhgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrhgXgafv'
--
-- * 'pldsfsrhgUploadProtocol'
--
-- * 'pldsfsrhgAccessToken'
--
-- * 'pldsfsrhgUploadType'
--
-- * 'pldsfsrhgName'
--
-- * 'pldsfsrhgCallback'
projectsLocationsDataSetsFhirStoresResourcesHistoryGet
    :: Text -- ^ 'pldsfsrhgName'
    -> ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet
projectsLocationsDataSetsFhirStoresResourcesHistoryGet pPldsfsrhgName_ =
  ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet'
    { _pldsfsrhgXgafv = Nothing
    , _pldsfsrhgUploadProtocol = Nothing
    , _pldsfsrhgAccessToken = Nothing
    , _pldsfsrhgUploadType = Nothing
    , _pldsfsrhgName = pPldsfsrhgName_
    , _pldsfsrhgCallback = Nothing
    }


-- | V1 error format.
pldsfsrhgXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet (Maybe Xgafv)
pldsfsrhgXgafv
  = lens _pldsfsrhgXgafv
      (\ s a -> s{_pldsfsrhgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrhgUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet (Maybe Text)
pldsfsrhgUploadProtocol
  = lens _pldsfsrhgUploadProtocol
      (\ s a -> s{_pldsfsrhgUploadProtocol = a})

-- | OAuth access token.
pldsfsrhgAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet (Maybe Text)
pldsfsrhgAccessToken
  = lens _pldsfsrhgAccessToken
      (\ s a -> s{_pldsfsrhgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrhgUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet (Maybe Text)
pldsfsrhgUploadType
  = lens _pldsfsrhgUploadType
      (\ s a -> s{_pldsfsrhgUploadType = a})

-- | The name of the resource version to retrieve.
pldsfsrhgName :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet Text
pldsfsrhgName
  = lens _pldsfsrhgName
      (\ s a -> s{_pldsfsrhgName = a})

-- | JSONP
pldsfsrhgCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet (Maybe Text)
pldsfsrhgCallback
  = lens _pldsfsrhgCallback
      (\ s a -> s{_pldsfsrhgCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesHistoryGet'{..}
          = go _pldsfsrhgName _pldsfsrhgXgafv
              _pldsfsrhgUploadProtocol
              _pldsfsrhgAccessToken
              _pldsfsrhgUploadType
              _pldsfsrhgCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesHistoryGetResource)
                      mempty
