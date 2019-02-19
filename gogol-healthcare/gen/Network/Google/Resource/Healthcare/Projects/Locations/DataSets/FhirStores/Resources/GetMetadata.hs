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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.GetMetadata
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the capabilities statement for the store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources.getMetadata@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.GetMetadata
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesGetMetadataResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesGetMetadata
    , ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata

    -- * Request Lenses
    , pldsfsrgmXgafv
    , pldsfsrgmUploadProtocol
    , pldsfsrgmAccessToken
    , pldsfsrgmUploadType
    , pldsfsrgmName
    , pldsfsrgmCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources.getMetadata@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesGetMetadataResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         "resources" :>
           "metadata" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | Gets the capabilities statement for the store.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesGetMetadata' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata =
  ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata'
    { _pldsfsrgmXgafv          :: !(Maybe Xgafv)
    , _pldsfsrgmUploadProtocol :: !(Maybe Text)
    , _pldsfsrgmAccessToken    :: !(Maybe Text)
    , _pldsfsrgmUploadType     :: !(Maybe Text)
    , _pldsfsrgmName           :: !Text
    , _pldsfsrgmCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrgmXgafv'
--
-- * 'pldsfsrgmUploadProtocol'
--
-- * 'pldsfsrgmAccessToken'
--
-- * 'pldsfsrgmUploadType'
--
-- * 'pldsfsrgmName'
--
-- * 'pldsfsrgmCallback'
projectsLocationsDataSetsFhirStoresResourcesGetMetadata
    :: Text -- ^ 'pldsfsrgmName'
    -> ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata
projectsLocationsDataSetsFhirStoresResourcesGetMetadata pPldsfsrgmName_ =
  ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata'
    { _pldsfsrgmXgafv = Nothing
    , _pldsfsrgmUploadProtocol = Nothing
    , _pldsfsrgmAccessToken = Nothing
    , _pldsfsrgmUploadType = Nothing
    , _pldsfsrgmName = pPldsfsrgmName_
    , _pldsfsrgmCallback = Nothing
    }

-- | V1 error format.
pldsfsrgmXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata (Maybe Xgafv)
pldsfsrgmXgafv
  = lens _pldsfsrgmXgafv
      (\ s a -> s{_pldsfsrgmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrgmUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata (Maybe Text)
pldsfsrgmUploadProtocol
  = lens _pldsfsrgmUploadProtocol
      (\ s a -> s{_pldsfsrgmUploadProtocol = a})

-- | OAuth access token.
pldsfsrgmAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata (Maybe Text)
pldsfsrgmAccessToken
  = lens _pldsfsrgmAccessToken
      (\ s a -> s{_pldsfsrgmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrgmUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata (Maybe Text)
pldsfsrgmUploadType
  = lens _pldsfsrgmUploadType
      (\ s a -> s{_pldsfsrgmUploadType = a})

-- | Name of the FHIR store to retrieve the capabilities for.
pldsfsrgmName :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata Text
pldsfsrgmName
  = lens _pldsfsrgmName
      (\ s a -> s{_pldsfsrgmName = a})

-- | JSONP
pldsfsrgmCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata (Maybe Text)
pldsfsrgmCallback
  = lens _pldsfsrgmCallback
      (\ s a -> s{_pldsfsrgmCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesGetMetadata'{..}
          = go _pldsfsrgmName _pldsfsrgmXgafv
              _pldsfsrgmUploadProtocol
              _pldsfsrgmAccessToken
              _pldsfsrgmUploadType
              _pldsfsrgmCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesGetMetadataResource)
                      mempty
