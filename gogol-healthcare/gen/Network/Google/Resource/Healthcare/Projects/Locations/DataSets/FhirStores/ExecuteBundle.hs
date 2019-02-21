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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.ExecuteBundle
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes all the requests in the given Bundle. Conforms to
-- http:\/\/hl7.org\/fhir\/http.html#transaction except that only the
-- transaction update is supported.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.executeBundle@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.ExecuteBundle
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresExecuteBundleResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresExecuteBundle
    , ProjectsLocationsDataSetsFhirStoresExecuteBundle

    -- * Request Lenses
    , pldsfsebParent
    , pldsfsebXgafv
    , pldsfsebUploadProtocol
    , pldsfsebAccessToken
    , pldsfsebUploadType
    , pldsfsebPayload
    , pldsfsebCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.executeBundle@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresExecuteBundle' request conforms to.
type ProjectsLocationsDataSetsFhirStoresExecuteBundleResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] HTTPBody :> Post '[JSON] HTTPBody

-- | Executes all the requests in the given Bundle. Conforms to
-- http:\/\/hl7.org\/fhir\/http.html#transaction except that only the
-- transaction update is supported.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresExecuteBundle' smart constructor.
data ProjectsLocationsDataSetsFhirStoresExecuteBundle =
  ProjectsLocationsDataSetsFhirStoresExecuteBundle'
    { _pldsfsebParent         :: !Text
    , _pldsfsebXgafv          :: !(Maybe Xgafv)
    , _pldsfsebUploadProtocol :: !(Maybe Text)
    , _pldsfsebAccessToken    :: !(Maybe Text)
    , _pldsfsebUploadType     :: !(Maybe Text)
    , _pldsfsebPayload        :: !HTTPBody
    , _pldsfsebCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresExecuteBundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsebParent'
--
-- * 'pldsfsebXgafv'
--
-- * 'pldsfsebUploadProtocol'
--
-- * 'pldsfsebAccessToken'
--
-- * 'pldsfsebUploadType'
--
-- * 'pldsfsebPayload'
--
-- * 'pldsfsebCallback'
projectsLocationsDataSetsFhirStoresExecuteBundle
    :: Text -- ^ 'pldsfsebParent'
    -> HTTPBody -- ^ 'pldsfsebPayload'
    -> ProjectsLocationsDataSetsFhirStoresExecuteBundle
projectsLocationsDataSetsFhirStoresExecuteBundle pPldsfsebParent_ pPldsfsebPayload_ =
  ProjectsLocationsDataSetsFhirStoresExecuteBundle'
    { _pldsfsebParent = pPldsfsebParent_
    , _pldsfsebXgafv = Nothing
    , _pldsfsebUploadProtocol = Nothing
    , _pldsfsebAccessToken = Nothing
    , _pldsfsebUploadType = Nothing
    , _pldsfsebPayload = pPldsfsebPayload_
    , _pldsfsebCallback = Nothing
    }


-- | Name of the FHIR store in which this bundle will be executed.
pldsfsebParent :: Lens' ProjectsLocationsDataSetsFhirStoresExecuteBundle Text
pldsfsebParent
  = lens _pldsfsebParent
      (\ s a -> s{_pldsfsebParent = a})

-- | V1 error format.
pldsfsebXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresExecuteBundle (Maybe Xgafv)
pldsfsebXgafv
  = lens _pldsfsebXgafv
      (\ s a -> s{_pldsfsebXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsebUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresExecuteBundle (Maybe Text)
pldsfsebUploadProtocol
  = lens _pldsfsebUploadProtocol
      (\ s a -> s{_pldsfsebUploadProtocol = a})

-- | OAuth access token.
pldsfsebAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresExecuteBundle (Maybe Text)
pldsfsebAccessToken
  = lens _pldsfsebAccessToken
      (\ s a -> s{_pldsfsebAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsebUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresExecuteBundle (Maybe Text)
pldsfsebUploadType
  = lens _pldsfsebUploadType
      (\ s a -> s{_pldsfsebUploadType = a})

-- | Multipart request metadata.
pldsfsebPayload :: Lens' ProjectsLocationsDataSetsFhirStoresExecuteBundle HTTPBody
pldsfsebPayload
  = lens _pldsfsebPayload
      (\ s a -> s{_pldsfsebPayload = a})

-- | JSONP
pldsfsebCallback :: Lens' ProjectsLocationsDataSetsFhirStoresExecuteBundle (Maybe Text)
pldsfsebCallback
  = lens _pldsfsebCallback
      (\ s a -> s{_pldsfsebCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresExecuteBundle
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresExecuteBundle
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresExecuteBundle
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresExecuteBundle'{..}
          = go _pldsfsebParent _pldsfsebXgafv
              _pldsfsebUploadProtocol
              _pldsfsebAccessToken
              _pldsfsebUploadType
              _pldsfsebCallback
              (Just AltJSON)
              _pldsfsebPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresExecuteBundleResource)
                      mempty
