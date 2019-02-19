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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.ConditionalPatchResource
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates parts of a resource if the resource exists based on the search
-- criteria specified via query parameters.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources.conditionalPatchResource@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.ConditionalPatchResource
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResourceResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource
    , ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource

    -- * Request Lenses
    , pldsfsrcprParent
    , pldsfsrcprXgafv
    , pldsfsrcprUploadProtocol
    , pldsfsrcprAccessToken
    , pldsfsrcprUploadType
    , pldsfsrcprPayload
    , pldsfsrcprType
    , pldsfsrcprCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources.conditionalPatchResource@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResourceResource
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
                         ReqBody '[JSON] HTTPBody :> Patch '[JSON] HTTPBody

-- | Updates parts of a resource if the resource exists based on the search
-- criteria specified via query parameters.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource =
  ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource'
    { _pldsfsrcprParent         :: !Text
    , _pldsfsrcprXgafv          :: !(Maybe Xgafv)
    , _pldsfsrcprUploadProtocol :: !(Maybe Text)
    , _pldsfsrcprAccessToken    :: !(Maybe Text)
    , _pldsfsrcprUploadType     :: !(Maybe Text)
    , _pldsfsrcprPayload        :: !HTTPBody
    , _pldsfsrcprType           :: !Text
    , _pldsfsrcprCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrcprParent'
--
-- * 'pldsfsrcprXgafv'
--
-- * 'pldsfsrcprUploadProtocol'
--
-- * 'pldsfsrcprAccessToken'
--
-- * 'pldsfsrcprUploadType'
--
-- * 'pldsfsrcprPayload'
--
-- * 'pldsfsrcprType'
--
-- * 'pldsfsrcprCallback'
projectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource
    :: Text -- ^ 'pldsfsrcprParent'
    -> HTTPBody -- ^ 'pldsfsrcprPayload'
    -> Text -- ^ 'pldsfsrcprType'
    -> ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource
projectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource pPldsfsrcprParent_ pPldsfsrcprPayload_ pPldsfsrcprType_ =
  ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource'
    { _pldsfsrcprParent = pPldsfsrcprParent_
    , _pldsfsrcprXgafv = Nothing
    , _pldsfsrcprUploadProtocol = Nothing
    , _pldsfsrcprAccessToken = Nothing
    , _pldsfsrcprUploadType = Nothing
    , _pldsfsrcprPayload = pPldsfsrcprPayload_
    , _pldsfsrcprType = pPldsfsrcprType_
    , _pldsfsrcprCallback = Nothing
    }


-- | The name of the FHIR store this resource belongs to.
pldsfsrcprParent :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource Text
pldsfsrcprParent
  = lens _pldsfsrcprParent
      (\ s a -> s{_pldsfsrcprParent = a})

-- | V1 error format.
pldsfsrcprXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource (Maybe Xgafv)
pldsfsrcprXgafv
  = lens _pldsfsrcprXgafv
      (\ s a -> s{_pldsfsrcprXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrcprUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource (Maybe Text)
pldsfsrcprUploadProtocol
  = lens _pldsfsrcprUploadProtocol
      (\ s a -> s{_pldsfsrcprUploadProtocol = a})

-- | OAuth access token.
pldsfsrcprAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource (Maybe Text)
pldsfsrcprAccessToken
  = lens _pldsfsrcprAccessToken
      (\ s a -> s{_pldsfsrcprAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrcprUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource (Maybe Text)
pldsfsrcprUploadType
  = lens _pldsfsrcprUploadType
      (\ s a -> s{_pldsfsrcprUploadType = a})

-- | Multipart request metadata.
pldsfsrcprPayload :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource HTTPBody
pldsfsrcprPayload
  = lens _pldsfsrcprPayload
      (\ s a -> s{_pldsfsrcprPayload = a})

-- | The type of the resource to update.
pldsfsrcprType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource Text
pldsfsrcprType
  = lens _pldsfsrcprType
      (\ s a -> s{_pldsfsrcprType = a})

-- | JSONP
pldsfsrcprCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource (Maybe Text)
pldsfsrcprCallback
  = lens _pldsfsrcprCallback
      (\ s a -> s{_pldsfsrcprCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResource'{..}
          = go _pldsfsrcprParent _pldsfsrcprType
              _pldsfsrcprXgafv
              _pldsfsrcprUploadProtocol
              _pldsfsrcprAccessToken
              _pldsfsrcprUploadType
              _pldsfsrcprCallback
              (Just AltJSON)
              _pldsfsrcprPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesConditionalPatchResourceResource)
                      mempty
