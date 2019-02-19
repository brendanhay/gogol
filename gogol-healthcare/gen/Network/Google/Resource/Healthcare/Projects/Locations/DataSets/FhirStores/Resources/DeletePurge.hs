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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.DeletePurge
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all the historical versions of a resource (excluding current
-- version) from the FHIR store. To remove all versions of a resource,
-- first delete the current version and call this API.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources.delete$purge@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.DeletePurge
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesDeletePurgeResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesDeletePurge
    , ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge

    -- * Request Lenses
    , pldsfsrdpXgafv
    , pldsfsrdpUploadProtocol
    , pldsfsrdpAccessToken
    , pldsfsrdpUploadType
    , pldsfsrdpName
    , pldsfsrdpCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources.delete$purge@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesDeletePurgeResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         "$purge" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes all the historical versions of a resource (excluding current
-- version) from the FHIR store. To remove all versions of a resource,
-- first delete the current version and call this API.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesDeletePurge' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge =
  ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge'
    { _pldsfsrdpXgafv          :: !(Maybe Xgafv)
    , _pldsfsrdpUploadProtocol :: !(Maybe Text)
    , _pldsfsrdpAccessToken    :: !(Maybe Text)
    , _pldsfsrdpUploadType     :: !(Maybe Text)
    , _pldsfsrdpName           :: !Text
    , _pldsfsrdpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrdpXgafv'
--
-- * 'pldsfsrdpUploadProtocol'
--
-- * 'pldsfsrdpAccessToken'
--
-- * 'pldsfsrdpUploadType'
--
-- * 'pldsfsrdpName'
--
-- * 'pldsfsrdpCallback'
projectsLocationsDataSetsFhirStoresResourcesDeletePurge
    :: Text -- ^ 'pldsfsrdpName'
    -> ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge
projectsLocationsDataSetsFhirStoresResourcesDeletePurge pPldsfsrdpName_ =
  ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge'
    { _pldsfsrdpXgafv = Nothing
    , _pldsfsrdpUploadProtocol = Nothing
    , _pldsfsrdpAccessToken = Nothing
    , _pldsfsrdpUploadType = Nothing
    , _pldsfsrdpName = pPldsfsrdpName_
    , _pldsfsrdpCallback = Nothing
    }


-- | V1 error format.
pldsfsrdpXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge (Maybe Xgafv)
pldsfsrdpXgafv
  = lens _pldsfsrdpXgafv
      (\ s a -> s{_pldsfsrdpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrdpUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge (Maybe Text)
pldsfsrdpUploadProtocol
  = lens _pldsfsrdpUploadProtocol
      (\ s a -> s{_pldsfsrdpUploadProtocol = a})

-- | OAuth access token.
pldsfsrdpAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge (Maybe Text)
pldsfsrdpAccessToken
  = lens _pldsfsrdpAccessToken
      (\ s a -> s{_pldsfsrdpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrdpUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge (Maybe Text)
pldsfsrdpUploadType
  = lens _pldsfsrdpUploadType
      (\ s a -> s{_pldsfsrdpUploadType = a})

-- | The name of the resource to purge.
pldsfsrdpName :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge Text
pldsfsrdpName
  = lens _pldsfsrdpName
      (\ s a -> s{_pldsfsrdpName = a})

-- | JSONP
pldsfsrdpCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge (Maybe Text)
pldsfsrdpCallback
  = lens _pldsfsrdpCallback
      (\ s a -> s{_pldsfsrdpCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge
             = Empty
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesDeletePurge'{..}
          = go _pldsfsrdpName _pldsfsrdpXgafv
              _pldsfsrdpUploadProtocol
              _pldsfsrdpAccessToken
              _pldsfsrdpUploadType
              _pldsfsrdpCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesDeletePurgeResource)
                      mempty
