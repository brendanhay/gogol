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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Consent artifact in the parent consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consentArtifacts.create@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.Create
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreateResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentArtifactsCreate
    , ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate

    -- * Request Lenses
    , pldscscacParent
    , pldscscacXgafv
    , pldscscacUploadProtocol
    , pldscscacAccessToken
    , pldscscacUploadType
    , pldscscacPayload
    , pldscscacCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consentArtifacts.create@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "consentArtifacts" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ConsentArtifact :>
                         Post '[JSON] ConsentArtifact

-- | Creates a new Consent artifact in the parent consent store.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentArtifactsCreate' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate =
  ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate'
    { _pldscscacParent :: !Text
    , _pldscscacXgafv :: !(Maybe Xgafv)
    , _pldscscacUploadProtocol :: !(Maybe Text)
    , _pldscscacAccessToken :: !(Maybe Text)
    , _pldscscacUploadType :: !(Maybe Text)
    , _pldscscacPayload :: !ConsentArtifact
    , _pldscscacCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscacParent'
--
-- * 'pldscscacXgafv'
--
-- * 'pldscscacUploadProtocol'
--
-- * 'pldscscacAccessToken'
--
-- * 'pldscscacUploadType'
--
-- * 'pldscscacPayload'
--
-- * 'pldscscacCallback'
projectsLocationsDataSetsConsentStoresConsentArtifactsCreate
    :: Text -- ^ 'pldscscacParent'
    -> ConsentArtifact -- ^ 'pldscscacPayload'
    -> ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate
projectsLocationsDataSetsConsentStoresConsentArtifactsCreate pPldscscacParent_ pPldscscacPayload_ =
  ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate'
    { _pldscscacParent = pPldscscacParent_
    , _pldscscacXgafv = Nothing
    , _pldscscacUploadProtocol = Nothing
    , _pldscscacAccessToken = Nothing
    , _pldscscacUploadType = Nothing
    , _pldscscacPayload = pPldscscacPayload_
    , _pldscscacCallback = Nothing
    }


-- | Required. The name of the consent store this Consent artifact belongs
-- to.
pldscscacParent :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate Text
pldscscacParent
  = lens _pldscscacParent
      (\ s a -> s{_pldscscacParent = a})

-- | V1 error format.
pldscscacXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate (Maybe Xgafv)
pldscscacXgafv
  = lens _pldscscacXgafv
      (\ s a -> s{_pldscscacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscacUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate (Maybe Text)
pldscscacUploadProtocol
  = lens _pldscscacUploadProtocol
      (\ s a -> s{_pldscscacUploadProtocol = a})

-- | OAuth access token.
pldscscacAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate (Maybe Text)
pldscscacAccessToken
  = lens _pldscscacAccessToken
      (\ s a -> s{_pldscscacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscacUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate (Maybe Text)
pldscscacUploadType
  = lens _pldscscacUploadType
      (\ s a -> s{_pldscscacUploadType = a})

-- | Multipart request metadata.
pldscscacPayload :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate ConsentArtifact
pldscscacPayload
  = lens _pldscscacPayload
      (\ s a -> s{_pldscscacPayload = a})

-- | JSONP
pldscscacCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate (Maybe Text)
pldscscacCallback
  = lens _pldscscacCallback
      (\ s a -> s{_pldscscacCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate
             = ConsentArtifact
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreate'{..}
          = go _pldscscacParent _pldscscacXgafv
              _pldscscacUploadProtocol
              _pldscscacAccessToken
              _pldscscacUploadType
              _pldscscacCallback
              (Just AltJSON)
              _pldscscacPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentArtifactsCreateResource)
                      mempty
