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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified Consent artifact.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consentArtifacts.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentArtifactsGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentArtifactsGet
    , ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet

    -- * Request Lenses
    , pldscscagXgafv
    , pldscscagUploadProtocol
    , pldscscagAccessToken
    , pldscscagUploadType
    , pldscscagName
    , pldscscagCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consentArtifacts.get@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentArtifactsGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ConsentArtifact

-- | Gets the specified Consent artifact.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentArtifactsGet' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet =
  ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet'
    { _pldscscagXgafv :: !(Maybe Xgafv)
    , _pldscscagUploadProtocol :: !(Maybe Text)
    , _pldscscagAccessToken :: !(Maybe Text)
    , _pldscscagUploadType :: !(Maybe Text)
    , _pldscscagName :: !Text
    , _pldscscagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscagXgafv'
--
-- * 'pldscscagUploadProtocol'
--
-- * 'pldscscagAccessToken'
--
-- * 'pldscscagUploadType'
--
-- * 'pldscscagName'
--
-- * 'pldscscagCallback'
projectsLocationsDataSetsConsentStoresConsentArtifactsGet
    :: Text -- ^ 'pldscscagName'
    -> ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet
projectsLocationsDataSetsConsentStoresConsentArtifactsGet pPldscscagName_ =
  ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet'
    { _pldscscagXgafv = Nothing
    , _pldscscagUploadProtocol = Nothing
    , _pldscscagAccessToken = Nothing
    , _pldscscagUploadType = Nothing
    , _pldscscagName = pPldscscagName_
    , _pldscscagCallback = Nothing
    }


-- | V1 error format.
pldscscagXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet (Maybe Xgafv)
pldscscagXgafv
  = lens _pldscscagXgafv
      (\ s a -> s{_pldscscagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscagUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet (Maybe Text)
pldscscagUploadProtocol
  = lens _pldscscagUploadProtocol
      (\ s a -> s{_pldscscagUploadProtocol = a})

-- | OAuth access token.
pldscscagAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet (Maybe Text)
pldscscagAccessToken
  = lens _pldscscagAccessToken
      (\ s a -> s{_pldscscagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscagUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet (Maybe Text)
pldscscagUploadType
  = lens _pldscscagUploadType
      (\ s a -> s{_pldscscagUploadType = a})

-- | Required. The resource name of the Consent artifact to retrieve.
pldscscagName :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet Text
pldscscagName
  = lens _pldscscagName
      (\ s a -> s{_pldscscagName = a})

-- | JSONP
pldscscagCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet (Maybe Text)
pldscscagCallback
  = lens _pldscscagCallback
      (\ s a -> s{_pldscscagCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet
             = ConsentArtifact
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentArtifactsGet'{..}
          = go _pldscscagName _pldscscagXgafv
              _pldscscagUploadProtocol
              _pldscscagAccessToken
              _pldscscagUploadType
              _pldscscagCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentArtifactsGetResource)
                      mempty
