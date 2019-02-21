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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.ConditionalUpdateResource
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the entire resource if the resource exists based on the search
-- criteria specified via query parameters.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources.conditionalUpdateResource@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.ConditionalUpdateResource
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResourceResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource
    , ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource

    -- * Request Lenses
    , pldsfsrcurParent
    , pldsfsrcurXgafv
    , pldsfsrcurUploadProtocol
    , pldsfsrcurAccessToken
    , pldsfsrcurUploadType
    , pldsfsrcurPayload
    , pldsfsrcurType
    , pldsfsrcurCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources.conditionalUpdateResource@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResourceResource
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
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] HTTPBody :> Put '[JSON] HTTPBody

-- | Updates the entire resource if the resource exists based on the search
-- criteria specified via query parameters.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource =
  ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource'
    { _pldsfsrcurParent         :: !Text
    , _pldsfsrcurXgafv          :: !(Maybe Xgafv)
    , _pldsfsrcurUploadProtocol :: !(Maybe Text)
    , _pldsfsrcurAccessToken    :: !(Maybe Text)
    , _pldsfsrcurUploadType     :: !(Maybe Text)
    , _pldsfsrcurPayload        :: !HTTPBody
    , _pldsfsrcurType           :: !Text
    , _pldsfsrcurCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrcurParent'
--
-- * 'pldsfsrcurXgafv'
--
-- * 'pldsfsrcurUploadProtocol'
--
-- * 'pldsfsrcurAccessToken'
--
-- * 'pldsfsrcurUploadType'
--
-- * 'pldsfsrcurPayload'
--
-- * 'pldsfsrcurType'
--
-- * 'pldsfsrcurCallback'
projectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource
    :: Text -- ^ 'pldsfsrcurParent'
    -> HTTPBody -- ^ 'pldsfsrcurPayload'
    -> Text -- ^ 'pldsfsrcurType'
    -> ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource
projectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource pPldsfsrcurParent_ pPldsfsrcurPayload_ pPldsfsrcurType_ =
  ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource'
    { _pldsfsrcurParent = pPldsfsrcurParent_
    , _pldsfsrcurXgafv = Nothing
    , _pldsfsrcurUploadProtocol = Nothing
    , _pldsfsrcurAccessToken = Nothing
    , _pldsfsrcurUploadType = Nothing
    , _pldsfsrcurPayload = pPldsfsrcurPayload_
    , _pldsfsrcurType = pPldsfsrcurType_
    , _pldsfsrcurCallback = Nothing
    }


-- | The name of the FHIR store this resource belongs to.
pldsfsrcurParent :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource Text
pldsfsrcurParent
  = lens _pldsfsrcurParent
      (\ s a -> s{_pldsfsrcurParent = a})

-- | V1 error format.
pldsfsrcurXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource (Maybe Xgafv)
pldsfsrcurXgafv
  = lens _pldsfsrcurXgafv
      (\ s a -> s{_pldsfsrcurXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrcurUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource (Maybe Text)
pldsfsrcurUploadProtocol
  = lens _pldsfsrcurUploadProtocol
      (\ s a -> s{_pldsfsrcurUploadProtocol = a})

-- | OAuth access token.
pldsfsrcurAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource (Maybe Text)
pldsfsrcurAccessToken
  = lens _pldsfsrcurAccessToken
      (\ s a -> s{_pldsfsrcurAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrcurUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource (Maybe Text)
pldsfsrcurUploadType
  = lens _pldsfsrcurUploadType
      (\ s a -> s{_pldsfsrcurUploadType = a})

-- | Multipart request metadata.
pldsfsrcurPayload :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource HTTPBody
pldsfsrcurPayload
  = lens _pldsfsrcurPayload
      (\ s a -> s{_pldsfsrcurPayload = a})

-- | The type of the resource to update.
pldsfsrcurType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource Text
pldsfsrcurType
  = lens _pldsfsrcurType
      (\ s a -> s{_pldsfsrcurType = a})

-- | JSONP
pldsfsrcurCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource (Maybe Text)
pldsfsrcurCallback
  = lens _pldsfsrcurCallback
      (\ s a -> s{_pldsfsrcurCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResource'{..}
          = go _pldsfsrcurParent _pldsfsrcurType
              _pldsfsrcurXgafv
              _pldsfsrcurUploadProtocol
              _pldsfsrcurAccessToken
              _pldsfsrcurUploadType
              _pldsfsrcurCallback
              (Just AltJSON)
              _pldsfsrcurPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesConditionalUpdateResourceResource)
                      mempty
