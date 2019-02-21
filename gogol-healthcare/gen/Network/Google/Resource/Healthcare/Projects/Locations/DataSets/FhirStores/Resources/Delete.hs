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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a FHIR resource. Note: unless resource versioning is disabled by
-- setting the disable_resource_versioning flag on the FHIR store, the
-- deleted resources will be moved to a history repository that can still
-- be retrieved through GetResourceVersion and related methods, unless they
-- are removed by the DeleteResourceVersions method.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesDelete
    , ProjectsLocationsDataSetsFhirStoresResourcesDelete

    -- * Request Lenses
    , pldsfsrdXgafv
    , pldsfsrdUploadProtocol
    , pldsfsrdAccessToken
    , pldsfsrdUploadType
    , pldsfsrdName
    , pldsfsrdCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources.delete@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesDelete' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesDeleteResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] HTTPBody

-- | Deletes a FHIR resource. Note: unless resource versioning is disabled by
-- setting the disable_resource_versioning flag on the FHIR store, the
-- deleted resources will be moved to a history repository that can still
-- be retrieved through GetResourceVersion and related methods, unless they
-- are removed by the DeleteResourceVersions method.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesDelete' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesDelete =
  ProjectsLocationsDataSetsFhirStoresResourcesDelete'
    { _pldsfsrdXgafv          :: !(Maybe Xgafv)
    , _pldsfsrdUploadProtocol :: !(Maybe Text)
    , _pldsfsrdAccessToken    :: !(Maybe Text)
    , _pldsfsrdUploadType     :: !(Maybe Text)
    , _pldsfsrdName           :: !Text
    , _pldsfsrdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrdXgafv'
--
-- * 'pldsfsrdUploadProtocol'
--
-- * 'pldsfsrdAccessToken'
--
-- * 'pldsfsrdUploadType'
--
-- * 'pldsfsrdName'
--
-- * 'pldsfsrdCallback'
projectsLocationsDataSetsFhirStoresResourcesDelete
    :: Text -- ^ 'pldsfsrdName'
    -> ProjectsLocationsDataSetsFhirStoresResourcesDelete
projectsLocationsDataSetsFhirStoresResourcesDelete pPldsfsrdName_ =
  ProjectsLocationsDataSetsFhirStoresResourcesDelete'
    { _pldsfsrdXgafv = Nothing
    , _pldsfsrdUploadProtocol = Nothing
    , _pldsfsrdAccessToken = Nothing
    , _pldsfsrdUploadType = Nothing
    , _pldsfsrdName = pPldsfsrdName_
    , _pldsfsrdCallback = Nothing
    }


-- | V1 error format.
pldsfsrdXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesDelete (Maybe Xgafv)
pldsfsrdXgafv
  = lens _pldsfsrdXgafv
      (\ s a -> s{_pldsfsrdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrdUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesDelete (Maybe Text)
pldsfsrdUploadProtocol
  = lens _pldsfsrdUploadProtocol
      (\ s a -> s{_pldsfsrdUploadProtocol = a})

-- | OAuth access token.
pldsfsrdAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesDelete (Maybe Text)
pldsfsrdAccessToken
  = lens _pldsfsrdAccessToken
      (\ s a -> s{_pldsfsrdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrdUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesDelete (Maybe Text)
pldsfsrdUploadType
  = lens _pldsfsrdUploadType
      (\ s a -> s{_pldsfsrdUploadType = a})

-- | The name of the resource to delete.
pldsfsrdName :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesDelete Text
pldsfsrdName
  = lens _pldsfsrdName (\ s a -> s{_pldsfsrdName = a})

-- | JSONP
pldsfsrdCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesDelete (Maybe Text)
pldsfsrdCallback
  = lens _pldsfsrdCallback
      (\ s a -> s{_pldsfsrdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesDelete
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesDelete
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesDelete'{..}
          = go _pldsfsrdName _pldsfsrdXgafv
              _pldsfsrdUploadProtocol
              _pldsfsrdAccessToken
              _pldsfsrdUploadType
              _pldsfsrdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesDeleteResource)
                      mempty
