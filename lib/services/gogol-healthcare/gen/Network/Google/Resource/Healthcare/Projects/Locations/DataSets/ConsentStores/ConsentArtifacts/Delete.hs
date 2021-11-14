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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Consent artifact. Fails if the artifact is
-- referenced by the latest revision of any Consent.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consentArtifacts.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentArtifactsDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentArtifactsDelete
    , ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete

    -- * Request Lenses
    , pldscscadXgafv
    , pldscscadUploadProtocol
    , pldscscadAccessToken
    , pldscscadUploadType
    , pldscscadName
    , pldscscadCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consentArtifacts.delete@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentArtifactsDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified Consent artifact. Fails if the artifact is
-- referenced by the latest revision of any Consent.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentArtifactsDelete' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete =
  ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete'
    { _pldscscadXgafv :: !(Maybe Xgafv)
    , _pldscscadUploadProtocol :: !(Maybe Text)
    , _pldscscadAccessToken :: !(Maybe Text)
    , _pldscscadUploadType :: !(Maybe Text)
    , _pldscscadName :: !Text
    , _pldscscadCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscadXgafv'
--
-- * 'pldscscadUploadProtocol'
--
-- * 'pldscscadAccessToken'
--
-- * 'pldscscadUploadType'
--
-- * 'pldscscadName'
--
-- * 'pldscscadCallback'
projectsLocationsDataSetsConsentStoresConsentArtifactsDelete
    :: Text -- ^ 'pldscscadName'
    -> ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete
projectsLocationsDataSetsConsentStoresConsentArtifactsDelete pPldscscadName_ =
  ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete'
    { _pldscscadXgafv = Nothing
    , _pldscscadUploadProtocol = Nothing
    , _pldscscadAccessToken = Nothing
    , _pldscscadUploadType = Nothing
    , _pldscscadName = pPldscscadName_
    , _pldscscadCallback = Nothing
    }


-- | V1 error format.
pldscscadXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete (Maybe Xgafv)
pldscscadXgafv
  = lens _pldscscadXgafv
      (\ s a -> s{_pldscscadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscadUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete (Maybe Text)
pldscscadUploadProtocol
  = lens _pldscscadUploadProtocol
      (\ s a -> s{_pldscscadUploadProtocol = a})

-- | OAuth access token.
pldscscadAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete (Maybe Text)
pldscscadAccessToken
  = lens _pldscscadAccessToken
      (\ s a -> s{_pldscscadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscadUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete (Maybe Text)
pldscscadUploadType
  = lens _pldscscadUploadType
      (\ s a -> s{_pldscscadUploadType = a})

-- | Required. The resource name of the Consent artifact to delete. To
-- preserve referential integrity, Consent artifacts referenced by the
-- latest revision of a Consent cannot be deleted.
pldscscadName :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete Text
pldscscadName
  = lens _pldscscadName
      (\ s a -> s{_pldscscadName = a})

-- | JSONP
pldscscadCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete (Maybe Text)
pldscscadCallback
  = lens _pldscscadCallback
      (\ s a -> s{_pldscscadCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentArtifactsDelete'{..}
          = go _pldscscadName _pldscscadXgafv
              _pldscscadUploadProtocol
              _pldscscadAccessToken
              _pldscscadUploadType
              _pldscscadCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentArtifactsDeleteResource)
                      mempty
