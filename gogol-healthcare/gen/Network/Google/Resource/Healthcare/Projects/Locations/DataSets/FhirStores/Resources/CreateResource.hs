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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.CreateResource
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a FHIR resource.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.resources.createResource@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Resources.CreateResource
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresResourcesCreateResourceResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresResourcesCreateResource
    , ProjectsLocationsDataSetsFhirStoresResourcesCreateResource

    -- * Request Lenses
    , pldsfsrcrParent
    , pldsfsrcrXgafv
    , pldsfsrcrUploadProtocol
    , pldsfsrcrAccessToken
    , pldsfsrcrUploadType
    , pldsfsrcrPayload
    , pldsfsrcrType
    , pldsfsrcrCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.resources.createResource@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresResourcesCreateResource' request conforms to.
type ProjectsLocationsDataSetsFhirStoresResourcesCreateResourceResource
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
                         ReqBody '[JSON] HTTPBody :> Post '[JSON] HTTPBody

-- | Creates a FHIR resource.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresResourcesCreateResource' smart constructor.
data ProjectsLocationsDataSetsFhirStoresResourcesCreateResource =
  ProjectsLocationsDataSetsFhirStoresResourcesCreateResource'
    { _pldsfsrcrParent         :: !Text
    , _pldsfsrcrXgafv          :: !(Maybe Xgafv)
    , _pldsfsrcrUploadProtocol :: !(Maybe Text)
    , _pldsfsrcrAccessToken    :: !(Maybe Text)
    , _pldsfsrcrUploadType     :: !(Maybe Text)
    , _pldsfsrcrPayload        :: !HTTPBody
    , _pldsfsrcrType           :: !Text
    , _pldsfsrcrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresResourcesCreateResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsrcrParent'
--
-- * 'pldsfsrcrXgafv'
--
-- * 'pldsfsrcrUploadProtocol'
--
-- * 'pldsfsrcrAccessToken'
--
-- * 'pldsfsrcrUploadType'
--
-- * 'pldsfsrcrPayload'
--
-- * 'pldsfsrcrType'
--
-- * 'pldsfsrcrCallback'
projectsLocationsDataSetsFhirStoresResourcesCreateResource
    :: Text -- ^ 'pldsfsrcrParent'
    -> HTTPBody -- ^ 'pldsfsrcrPayload'
    -> Text -- ^ 'pldsfsrcrType'
    -> ProjectsLocationsDataSetsFhirStoresResourcesCreateResource
projectsLocationsDataSetsFhirStoresResourcesCreateResource pPldsfsrcrParent_ pPldsfsrcrPayload_ pPldsfsrcrType_ =
  ProjectsLocationsDataSetsFhirStoresResourcesCreateResource'
    { _pldsfsrcrParent = pPldsfsrcrParent_
    , _pldsfsrcrXgafv = Nothing
    , _pldsfsrcrUploadProtocol = Nothing
    , _pldsfsrcrAccessToken = Nothing
    , _pldsfsrcrUploadType = Nothing
    , _pldsfsrcrPayload = pPldsfsrcrPayload_
    , _pldsfsrcrType = pPldsfsrcrType_
    , _pldsfsrcrCallback = Nothing
    }


-- | The name of the FHIR store this resource belongs to.
pldsfsrcrParent :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesCreateResource Text
pldsfsrcrParent
  = lens _pldsfsrcrParent
      (\ s a -> s{_pldsfsrcrParent = a})

-- | V1 error format.
pldsfsrcrXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesCreateResource (Maybe Xgafv)
pldsfsrcrXgafv
  = lens _pldsfsrcrXgafv
      (\ s a -> s{_pldsfsrcrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsrcrUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesCreateResource (Maybe Text)
pldsfsrcrUploadProtocol
  = lens _pldsfsrcrUploadProtocol
      (\ s a -> s{_pldsfsrcrUploadProtocol = a})

-- | OAuth access token.
pldsfsrcrAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesCreateResource (Maybe Text)
pldsfsrcrAccessToken
  = lens _pldsfsrcrAccessToken
      (\ s a -> s{_pldsfsrcrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsrcrUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesCreateResource (Maybe Text)
pldsfsrcrUploadType
  = lens _pldsfsrcrUploadType
      (\ s a -> s{_pldsfsrcrUploadType = a})

-- | Multipart request metadata.
pldsfsrcrPayload :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesCreateResource HTTPBody
pldsfsrcrPayload
  = lens _pldsfsrcrPayload
      (\ s a -> s{_pldsfsrcrPayload = a})

-- | The type of the resource to create.
pldsfsrcrType :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesCreateResource Text
pldsfsrcrType
  = lens _pldsfsrcrType
      (\ s a -> s{_pldsfsrcrType = a})

-- | JSONP
pldsfsrcrCallback :: Lens' ProjectsLocationsDataSetsFhirStoresResourcesCreateResource (Maybe Text)
pldsfsrcrCallback
  = lens _pldsfsrcrCallback
      (\ s a -> s{_pldsfsrcrCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresResourcesCreateResource
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresResourcesCreateResource
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresResourcesCreateResource
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresResourcesCreateResource'{..}
          = go _pldsfsrcrParent _pldsfsrcrType _pldsfsrcrXgafv
              _pldsfsrcrUploadProtocol
              _pldsfsrcrAccessToken
              _pldsfsrcrUploadType
              _pldsfsrcrCallback
              (Just AltJSON)
              _pldsfsrcrPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresResourcesCreateResourceResource)
                      mempty
