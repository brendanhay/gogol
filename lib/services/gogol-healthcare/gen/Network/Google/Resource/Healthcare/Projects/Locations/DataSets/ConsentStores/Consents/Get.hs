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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified revision of a Consent, or the latest revision if
-- \`revision_id\` is not specified in the resource name.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentsGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentsGet
    , ProjectsLocationsDataSetsConsentStoresConsentsGet

    -- * Request Lenses
    , pldscscgXgafv
    , pldscscgUploadProtocol
    , pldscscgAccessToken
    , pldscscgUploadType
    , pldscscgName
    , pldscscgCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.get@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentsGet' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentsGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Consent

-- | Gets the specified revision of a Consent, or the latest revision if
-- \`revision_id\` is not specified in the resource name.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentsGet' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentsGet =
  ProjectsLocationsDataSetsConsentStoresConsentsGet'
    { _pldscscgXgafv :: !(Maybe Xgafv)
    , _pldscscgUploadProtocol :: !(Maybe Text)
    , _pldscscgAccessToken :: !(Maybe Text)
    , _pldscscgUploadType :: !(Maybe Text)
    , _pldscscgName :: !Text
    , _pldscscgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscgXgafv'
--
-- * 'pldscscgUploadProtocol'
--
-- * 'pldscscgAccessToken'
--
-- * 'pldscscgUploadType'
--
-- * 'pldscscgName'
--
-- * 'pldscscgCallback'
projectsLocationsDataSetsConsentStoresConsentsGet
    :: Text -- ^ 'pldscscgName'
    -> ProjectsLocationsDataSetsConsentStoresConsentsGet
projectsLocationsDataSetsConsentStoresConsentsGet pPldscscgName_ =
  ProjectsLocationsDataSetsConsentStoresConsentsGet'
    { _pldscscgXgafv = Nothing
    , _pldscscgUploadProtocol = Nothing
    , _pldscscgAccessToken = Nothing
    , _pldscscgUploadType = Nothing
    , _pldscscgName = pPldscscgName_
    , _pldscscgCallback = Nothing
    }


-- | V1 error format.
pldscscgXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsGet (Maybe Xgafv)
pldscscgXgafv
  = lens _pldscscgXgafv
      (\ s a -> s{_pldscscgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscgUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsGet (Maybe Text)
pldscscgUploadProtocol
  = lens _pldscscgUploadProtocol
      (\ s a -> s{_pldscscgUploadProtocol = a})

-- | OAuth access token.
pldscscgAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsGet (Maybe Text)
pldscscgAccessToken
  = lens _pldscscgAccessToken
      (\ s a -> s{_pldscscgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscgUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsGet (Maybe Text)
pldscscgUploadType
  = lens _pldscscgUploadType
      (\ s a -> s{_pldscscgUploadType = a})

-- | Required. The resource name of the Consent to retrieve, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\`.
-- In order to retrieve a previous revision of the Consent, also provide
-- the revision ID:
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\'{revision_id}\`
pldscscgName :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsGet Text
pldscscgName
  = lens _pldscscgName (\ s a -> s{_pldscscgName = a})

-- | JSONP
pldscscgCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsGet (Maybe Text)
pldscscgCallback
  = lens _pldscscgCallback
      (\ s a -> s{_pldscscgCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentsGet
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentsGet
             = Consent
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentsGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentsGet'{..}
          = go _pldscscgName _pldscscgXgafv
              _pldscscgUploadProtocol
              _pldscscgAccessToken
              _pldscscgUploadType
              _pldscscgCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentsGetResource)
                      mempty
