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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.ConditionalDeleteResource
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes FHIR resources matching a search query. Note: unless resource
-- versioning is disabled by setting the disable_resource_versioning flag
-- on the FHIR store, the deleted resources will be moved to a history
-- repository that can still be retrieved through GetResourceVersion and
-- related methods, unless they are removed by the DeleteResourceVersions
-- method.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources.conditionalDeleteResource@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.ConditionalDeleteResource
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResourceResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource
    , ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource

    -- * Request Lenses
    , pldsfsrcdrParent
    , pldsfsrcdrXgafv
    , pldsfsrcdrUploadProtocol
    , pldsfsrcdrAccessToken
    , pldsfsrcdrUploadType
    , pldsfsrcdrType
    , pldsfsrcdrCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources.conditionalDeleteResource@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResourceResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "resources" :>
           Capture "type" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes FHIR resources matching a search query. Note: unless resource
-- versioning is disabled by setting the disable_resource_versioning flag
-- on the FHIR store, the deleted resources will be moved to a history
-- repository that can still be retrieved through GetResourceVersion and
-- related methods, unless they are removed by the DeleteResourceVersions
-- method.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource =
  ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource'
    { _pldsfsrcdrParent         :: !Text
    , _pldsfsrcdrXgafv          :: !(Maybe Xgafv)
    , _pldsfsrcdrUploadProtocol :: !(Maybe Text)
    , _pldsfsrcdrAccessToken    :: !(Maybe Text)
    , _pldsfsrcdrUploadType     :: !(Maybe Text)
    , _pldsfsrcdrType           :: !Text
    , _pldsfsrcdrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrcdrParent'
--
-- * 'pldsfsrcdrXgafv'
--
-- * 'pldsfsrcdrUploadProtocol'
--
-- * 'pldsfsrcdrAccessToken'
--
-- * 'pldsfsrcdrUploadType'
--
-- * 'pldsfsrcdrType'
--
-- * 'pldsfsrcdrCallback'
projectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource
    :: Text -- ^ 'pldsfsrcdrParent'
    -> Text -- ^ 'pldsfsrcdrType'
    -> ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource
projectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource pPldsfsrcdrParent_ pPldsfsrcdrType_ =
  ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource'
    { _pldsfsrcdrParent = pPldsfsrcdrParent_
    , _pldsfsrcdrXgafv = Nothing
    , _pldsfsrcdrUploadProtocol = Nothing
    , _pldsfsrcdrAccessToken = Nothing
    , _pldsfsrcdrUploadType = Nothing
    , _pldsfsrcdrType = pPldsfsrcdrType_
    , _pldsfsrcdrCallback = Nothing
    }

-- | The name of the FHIR store this resource belongs to.
pldsfsrcdrParent :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource Text
pldsfsrcdrParent
  = lens _pldsfsrcdrParent
      (\ s a -> s{_pldsfsrcdrParent = a})

-- | V1 error format.
pldsfsrcdrXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource (Maybe Xgafv)
pldsfsrcdrXgafv
  = lens _pldsfsrcdrXgafv
      (\ s a -> s{_pldsfsrcdrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrcdrUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource (Maybe Text)
pldsfsrcdrUploadProtocol
  = lens _pldsfsrcdrUploadProtocol
      (\ s a -> s{_pldsfsrcdrUploadProtocol = a})

-- | OAuth access token.
pldsfsrcdrAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource (Maybe Text)
pldsfsrcdrAccessToken
  = lens _pldsfsrcdrAccessToken
      (\ s a -> s{_pldsfsrcdrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrcdrUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource (Maybe Text)
pldsfsrcdrUploadType
  = lens _pldsfsrcdrUploadType
      (\ s a -> s{_pldsfsrcdrUploadType = a})

-- | The type of the resource to update.
pldsfsrcdrType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource Text
pldsfsrcdrType
  = lens _pldsfsrcdrType
      (\ s a -> s{_pldsfsrcdrType = a})

-- | JSONP
pldsfsrcdrCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource (Maybe Text)
pldsfsrcdrCallback
  = lens _pldsfsrcdrCallback
      (\ s a -> s{_pldsfsrcdrCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource
             = Empty
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResource'{..}
          = go _pldsfsrcdrParent _pldsfsrcdrType
              _pldsfsrcdrXgafv
              _pldsfsrcdrUploadProtocol
              _pldsfsrcdrAccessToken
              _pldsfsrcdrUploadType
              _pldsfsrcdrCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesConditionalDeleteResourceResource)
                      mempty
