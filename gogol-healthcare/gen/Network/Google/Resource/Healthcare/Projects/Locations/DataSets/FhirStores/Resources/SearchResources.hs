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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.SearchResources
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches resources in the given FHIR store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources.searchResources@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.SearchResources
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesSearchResourcesResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesSearchResources
    , ProjectsLocationsDataSetsFhirStoresResourcesSearchResources

    -- * Request Lenses
    , pldsfsrsrParent
    , pldsfsrsrXgafv
    , pldsfsrsrResourceType
    , pldsfsrsrUploadProtocol
    , pldsfsrsrAccessToken
    , pldsfsrsrUploadType
    , pldsfsrsrCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources.searchResources@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesSearchResources' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesSearchResourcesResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "resources" :>
           Capture "resourceType" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | Searches resources in the given FHIR store.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesSearchResources' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesSearchResources =
  ProjectsLocationsDataSetsFhirStoresResourcesSearchResources'
    { _pldsfsrsrParent         :: !Text
    , _pldsfsrsrXgafv          :: !(Maybe Xgafv)
    , _pldsfsrsrResourceType   :: !Text
    , _pldsfsrsrUploadProtocol :: !(Maybe Text)
    , _pldsfsrsrAccessToken    :: !(Maybe Text)
    , _pldsfsrsrUploadType     :: !(Maybe Text)
    , _pldsfsrsrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesSearchResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrsrParent'
--
-- * 'pldsfsrsrXgafv'
--
-- * 'pldsfsrsrResourceType'
--
-- * 'pldsfsrsrUploadProtocol'
--
-- * 'pldsfsrsrAccessToken'
--
-- * 'pldsfsrsrUploadType'
--
-- * 'pldsfsrsrCallback'
projectsLocationsDataSetsFhirStoresResourcesSearchResources
    :: Text -- ^ 'pldsfsrsrParent'
    -> Text -- ^ 'pldsfsrsrResourceType'
    -> ProjectsLocationsDataSetsFhirStoresResourcesSearchResources
projectsLocationsDataSetsFhirStoresResourcesSearchResources pPldsfsrsrParent_ pPldsfsrsrResourceType_ =
  ProjectsLocationsDataSetsFhirStoresResourcesSearchResources'
    { _pldsfsrsrParent = pPldsfsrsrParent_
    , _pldsfsrsrXgafv = Nothing
    , _pldsfsrsrResourceType = pPldsfsrsrResourceType_
    , _pldsfsrsrUploadProtocol = Nothing
    , _pldsfsrsrAccessToken = Nothing
    , _pldsfsrsrUploadType = Nothing
    , _pldsfsrsrCallback = Nothing
    }


-- | Name of the FHIR store to retrieve resources from.
pldsfsrsrParent :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearchResources Text
pldsfsrsrParent
  = lens _pldsfsrsrParent
      (\ s a -> s{_pldsfsrsrParent = a})

-- | V1 error format.
pldsfsrsrXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearchResources (Maybe Xgafv)
pldsfsrsrXgafv
  = lens _pldsfsrsrXgafv
      (\ s a -> s{_pldsfsrsrXgafv = a})

-- | The type of the resource to search.
pldsfsrsrResourceType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearchResources Text
pldsfsrsrResourceType
  = lens _pldsfsrsrResourceType
      (\ s a -> s{_pldsfsrsrResourceType = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrsrUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearchResources (Maybe Text)
pldsfsrsrUploadProtocol
  = lens _pldsfsrsrUploadProtocol
      (\ s a -> s{_pldsfsrsrUploadProtocol = a})

-- | OAuth access token.
pldsfsrsrAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearchResources (Maybe Text)
pldsfsrsrAccessToken
  = lens _pldsfsrsrAccessToken
      (\ s a -> s{_pldsfsrsrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrsrUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearchResources (Maybe Text)
pldsfsrsrUploadType
  = lens _pldsfsrsrUploadType
      (\ s a -> s{_pldsfsrsrUploadType = a})

-- | JSONP
pldsfsrsrCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearchResources (Maybe Text)
pldsfsrsrCallback
  = lens _pldsfsrsrCallback
      (\ s a -> s{_pldsfsrsrCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesSearchResources
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesSearchResources
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesSearchResources
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesSearchResources'{..}
          = go _pldsfsrsrParent _pldsfsrsrResourceType
              _pldsfsrsrXgafv
              _pldsfsrsrUploadProtocol
              _pldsfsrsrAccessToken
              _pldsfsrsrUploadType
              _pldsfsrsrCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesSearchResourcesResource)
                      mempty
