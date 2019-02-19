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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches resources in the given FHIR store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources._search@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Search
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesSearchResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesSearch
    , ProjectsLocationsDataSetsFhirStoresResourcesSearch

    -- * Request Lenses
    , pldsfsrsParent
    , pldsfsrsXgafv
    , pldsfsrsUploadProtocol
    , pldsfsrsAccessToken
    , pldsfsrsUploadType
    , pldsfsrsPayload
    , pldsfsrsCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources._search@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesSearch' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesSearchResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "resources" :>
           "_search" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SearchResourcesRequest :>
                           Post '[JSON] HTTPBody

-- | Searches resources in the given FHIR store.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesSearch' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesSearch =
  ProjectsLocationsDataSetsFhirStoresResourcesSearch'
    { _pldsfsrsParent         :: !Text
    , _pldsfsrsXgafv          :: !(Maybe Xgafv)
    , _pldsfsrsUploadProtocol :: !(Maybe Text)
    , _pldsfsrsAccessToken    :: !(Maybe Text)
    , _pldsfsrsUploadType     :: !(Maybe Text)
    , _pldsfsrsPayload        :: !SearchResourcesRequest
    , _pldsfsrsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrsParent'
--
-- * 'pldsfsrsXgafv'
--
-- * 'pldsfsrsUploadProtocol'
--
-- * 'pldsfsrsAccessToken'
--
-- * 'pldsfsrsUploadType'
--
-- * 'pldsfsrsPayload'
--
-- * 'pldsfsrsCallback'
projectsLocationsDataSetsFhirStoresResourcesSearch
    :: Text -- ^ 'pldsfsrsParent'
    -> SearchResourcesRequest -- ^ 'pldsfsrsPayload'
    -> ProjectsLocationsDataSetsFhirStoresResourcesSearch
projectsLocationsDataSetsFhirStoresResourcesSearch pPldsfsrsParent_ pPldsfsrsPayload_ =
  ProjectsLocationsDataSetsFhirStoresResourcesSearch'
    { _pldsfsrsParent = pPldsfsrsParent_
    , _pldsfsrsXgafv = Nothing
    , _pldsfsrsUploadProtocol = Nothing
    , _pldsfsrsAccessToken = Nothing
    , _pldsfsrsUploadType = Nothing
    , _pldsfsrsPayload = pPldsfsrsPayload_
    , _pldsfsrsCallback = Nothing
    }


-- | Name of the FHIR store to retrieve resources from.
pldsfsrsParent :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearch Text
pldsfsrsParent
  = lens _pldsfsrsParent
      (\ s a -> s{_pldsfsrsParent = a})

-- | V1 error format.
pldsfsrsXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearch (Maybe Xgafv)
pldsfsrsXgafv
  = lens _pldsfsrsXgafv
      (\ s a -> s{_pldsfsrsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrsUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearch (Maybe Text)
pldsfsrsUploadProtocol
  = lens _pldsfsrsUploadProtocol
      (\ s a -> s{_pldsfsrsUploadProtocol = a})

-- | OAuth access token.
pldsfsrsAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearch (Maybe Text)
pldsfsrsAccessToken
  = lens _pldsfsrsAccessToken
      (\ s a -> s{_pldsfsrsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrsUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearch (Maybe Text)
pldsfsrsUploadType
  = lens _pldsfsrsUploadType
      (\ s a -> s{_pldsfsrsUploadType = a})

-- | Multipart request metadata.
pldsfsrsPayload :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearch SearchResourcesRequest
pldsfsrsPayload
  = lens _pldsfsrsPayload
      (\ s a -> s{_pldsfsrsPayload = a})

-- | JSONP
pldsfsrsCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesSearch (Maybe Text)
pldsfsrsCallback
  = lens _pldsfsrsCallback
      (\ s a -> s{_pldsfsrsCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesSearch
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesSearch
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesSearch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesSearch'{..}
          = go _pldsfsrsParent _pldsfsrsXgafv
              _pldsfsrsUploadProtocol
              _pldsfsrsAccessToken
              _pldsfsrsUploadType
              _pldsfsrsCallback
              (Just AltJSON)
              _pldsfsrsPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesSearchResource)
                      mempty
