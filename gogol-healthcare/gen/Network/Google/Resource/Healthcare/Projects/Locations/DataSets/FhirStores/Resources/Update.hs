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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the entire resource or creates a new resource with a client
-- specified ID if the resource does not exist and the FHIR store has
-- enable_update_create set.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources.update@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.Update
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesUpdateResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesUpdate
    , ProjectsLocationsDataSetsFhirStoresResourcesUpdate

    -- * Request Lenses
    , pldsfsruXgafv
    , pldsfsruUploadProtocol
    , pldsfsruAccessToken
    , pldsfsruUploadType
    , pldsfsruPayload
    , pldsfsruName
    , pldsfsruCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources.update@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesUpdate' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesUpdateResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] HTTPBody :> Put '[JSON] HTTPBody

-- | Updates the entire resource or creates a new resource with a client
-- specified ID if the resource does not exist and the FHIR store has
-- enable_update_create set.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesUpdate' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesUpdate =
  ProjectsLocationsDataSetsFhirStoresResourcesUpdate'
    { _pldsfsruXgafv          :: !(Maybe Xgafv)
    , _pldsfsruUploadProtocol :: !(Maybe Text)
    , _pldsfsruAccessToken    :: !(Maybe Text)
    , _pldsfsruUploadType     :: !(Maybe Text)
    , _pldsfsruPayload        :: !HTTPBody
    , _pldsfsruName           :: !Text
    , _pldsfsruCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsruXgafv'
--
-- * 'pldsfsruUploadProtocol'
--
-- * 'pldsfsruAccessToken'
--
-- * 'pldsfsruUploadType'
--
-- * 'pldsfsruPayload'
--
-- * 'pldsfsruName'
--
-- * 'pldsfsruCallback'
projectsLocationsDataSetsFhirStoresResourcesUpdate
    :: HTTPBody -- ^ 'pldsfsruPayload'
    -> Text -- ^ 'pldsfsruName'
    -> ProjectsLocationsDataSetsFhirStoresResourcesUpdate
projectsLocationsDataSetsFhirStoresResourcesUpdate pPldsfsruPayload_ pPldsfsruName_ =
  ProjectsLocationsDataSetsFhirStoresResourcesUpdate'
    { _pldsfsruXgafv = Nothing
    , _pldsfsruUploadProtocol = Nothing
    , _pldsfsruAccessToken = Nothing
    , _pldsfsruUploadType = Nothing
    , _pldsfsruPayload = pPldsfsruPayload_
    , _pldsfsruName = pPldsfsruName_
    , _pldsfsruCallback = Nothing
    }

-- | V1 error format.
pldsfsruXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesUpdate (Maybe Xgafv)
pldsfsruXgafv
  = lens _pldsfsruXgafv
      (\ s a -> s{_pldsfsruXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsruUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesUpdate (Maybe Text)
pldsfsruUploadProtocol
  = lens _pldsfsruUploadProtocol
      (\ s a -> s{_pldsfsruUploadProtocol = a})

-- | OAuth access token.
pldsfsruAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesUpdate (Maybe Text)
pldsfsruAccessToken
  = lens _pldsfsruAccessToken
      (\ s a -> s{_pldsfsruAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsruUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesUpdate (Maybe Text)
pldsfsruUploadType
  = lens _pldsfsruUploadType
      (\ s a -> s{_pldsfsruUploadType = a})

-- | Multipart request metadata.
pldsfsruPayload :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesUpdate HTTPBody
pldsfsruPayload
  = lens _pldsfsruPayload
      (\ s a -> s{_pldsfsruPayload = a})

-- | The name of the resource to update.
pldsfsruName :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesUpdate Text
pldsfsruName
  = lens _pldsfsruName (\ s a -> s{_pldsfsruName = a})

-- | JSONP
pldsfsruCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesUpdate (Maybe Text)
pldsfsruCallback
  = lens _pldsfsruCallback
      (\ s a -> s{_pldsfsruCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesUpdate
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesUpdate
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesUpdate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesUpdate'{..}
          = go _pldsfsruName _pldsfsruXgafv
              _pldsfsruUploadProtocol
              _pldsfsruAccessToken
              _pldsfsruUploadType
              _pldsfsruCallback
              (Just AltJSON)
              _pldsfsruPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesUpdateResource)
                      mempty
