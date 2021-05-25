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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.patch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Patch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresPatch
    , ProjectsLocationsDataSetsConsentStoresPatch

    -- * Request Lenses
    , pldscspXgafv
    , pldscspUploadProtocol
    , pldscspUpdateMask
    , pldscspAccessToken
    , pldscspUploadType
    , pldscspPayload
    , pldscspName
    , pldscspCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.patch@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresPatch' request conforms to.
type ProjectsLocationsDataSetsConsentStoresPatchResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ConsentStore :>
                         Patch '[JSON] ConsentStore

-- | Updates the specified consent store.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresPatch' smart constructor.
data ProjectsLocationsDataSetsConsentStoresPatch =
  ProjectsLocationsDataSetsConsentStoresPatch'
    { _pldscspXgafv :: !(Maybe Xgafv)
    , _pldscspUploadProtocol :: !(Maybe Text)
    , _pldscspUpdateMask :: !(Maybe GFieldMask)
    , _pldscspAccessToken :: !(Maybe Text)
    , _pldscspUploadType :: !(Maybe Text)
    , _pldscspPayload :: !ConsentStore
    , _pldscspName :: !Text
    , _pldscspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscspXgafv'
--
-- * 'pldscspUploadProtocol'
--
-- * 'pldscspUpdateMask'
--
-- * 'pldscspAccessToken'
--
-- * 'pldscspUploadType'
--
-- * 'pldscspPayload'
--
-- * 'pldscspName'
--
-- * 'pldscspCallback'
projectsLocationsDataSetsConsentStoresPatch
    :: ConsentStore -- ^ 'pldscspPayload'
    -> Text -- ^ 'pldscspName'
    -> ProjectsLocationsDataSetsConsentStoresPatch
projectsLocationsDataSetsConsentStoresPatch pPldscspPayload_ pPldscspName_ =
  ProjectsLocationsDataSetsConsentStoresPatch'
    { _pldscspXgafv = Nothing
    , _pldscspUploadProtocol = Nothing
    , _pldscspUpdateMask = Nothing
    , _pldscspAccessToken = Nothing
    , _pldscspUploadType = Nothing
    , _pldscspPayload = pPldscspPayload_
    , _pldscspName = pPldscspName_
    , _pldscspCallback = Nothing
    }


-- | V1 error format.
pldscspXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresPatch (Maybe Xgafv)
pldscspXgafv
  = lens _pldscspXgafv (\ s a -> s{_pldscspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscspUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresPatch (Maybe Text)
pldscspUploadProtocol
  = lens _pldscspUploadProtocol
      (\ s a -> s{_pldscspUploadProtocol = a})

-- | Required. The update mask that applies to the resource. For the
-- \`FieldMask\` definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask.
-- Only the \`labels\`, \`default_consent_ttl\`, and
-- \`enable_consent_create_on_update\` fields are allowed to be updated.
pldscspUpdateMask :: Lens' ProjectsLocationsDataSetsConsentStoresPatch (Maybe GFieldMask)
pldscspUpdateMask
  = lens _pldscspUpdateMask
      (\ s a -> s{_pldscspUpdateMask = a})

-- | OAuth access token.
pldscspAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresPatch (Maybe Text)
pldscspAccessToken
  = lens _pldscspAccessToken
      (\ s a -> s{_pldscspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscspUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresPatch (Maybe Text)
pldscspUploadType
  = lens _pldscspUploadType
      (\ s a -> s{_pldscspUploadType = a})

-- | Multipart request metadata.
pldscspPayload :: Lens' ProjectsLocationsDataSetsConsentStoresPatch ConsentStore
pldscspPayload
  = lens _pldscspPayload
      (\ s a -> s{_pldscspPayload = a})

-- | Resource name of the consent store, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\`.
-- Cannot be changed after creation.
pldscspName :: Lens' ProjectsLocationsDataSetsConsentStoresPatch Text
pldscspName
  = lens _pldscspName (\ s a -> s{_pldscspName = a})

-- | JSONP
pldscspCallback :: Lens' ProjectsLocationsDataSetsConsentStoresPatch (Maybe Text)
pldscspCallback
  = lens _pldscspCallback
      (\ s a -> s{_pldscspCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresPatch
         where
        type Rs ProjectsLocationsDataSetsConsentStoresPatch =
             ConsentStore
        type Scopes
               ProjectsLocationsDataSetsConsentStoresPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresPatch'{..}
          = go _pldscspName _pldscspXgafv
              _pldscspUploadProtocol
              _pldscspUpdateMask
              _pldscspAccessToken
              _pldscspUploadType
              _pldscspCallback
              (Just AltJSON)
              _pldscspPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresPatchResource)
                      mempty
