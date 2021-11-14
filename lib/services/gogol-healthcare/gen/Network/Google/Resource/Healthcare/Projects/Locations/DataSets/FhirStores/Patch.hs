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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the configuration of the specified FHIR store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.patch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Patch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresPatch
    , ProjectsLocationsDataSetsFhirStoresPatch

    -- * Request Lenses
    , pldsfspXgafv
    , pldsfspUploadProtocol
    , pldsfspUpdateMask
    , pldsfspAccessToken
    , pldsfspUploadType
    , pldsfspPayload
    , pldsfspName
    , pldsfspCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.patch@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresPatch' request conforms to.
type ProjectsLocationsDataSetsFhirStoresPatchResource
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
                       ReqBody '[JSON] FhirStore :> Patch '[JSON] FhirStore

-- | Updates the configuration of the specified FHIR store.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresPatch' smart constructor.
data ProjectsLocationsDataSetsFhirStoresPatch =
  ProjectsLocationsDataSetsFhirStoresPatch'
    { _pldsfspXgafv :: !(Maybe Xgafv)
    , _pldsfspUploadProtocol :: !(Maybe Text)
    , _pldsfspUpdateMask :: !(Maybe GFieldMask)
    , _pldsfspAccessToken :: !(Maybe Text)
    , _pldsfspUploadType :: !(Maybe Text)
    , _pldsfspPayload :: !FhirStore
    , _pldsfspName :: !Text
    , _pldsfspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfspXgafv'
--
-- * 'pldsfspUploadProtocol'
--
-- * 'pldsfspUpdateMask'
--
-- * 'pldsfspAccessToken'
--
-- * 'pldsfspUploadType'
--
-- * 'pldsfspPayload'
--
-- * 'pldsfspName'
--
-- * 'pldsfspCallback'
projectsLocationsDataSetsFhirStoresPatch
    :: FhirStore -- ^ 'pldsfspPayload'
    -> Text -- ^ 'pldsfspName'
    -> ProjectsLocationsDataSetsFhirStoresPatch
projectsLocationsDataSetsFhirStoresPatch pPldsfspPayload_ pPldsfspName_ =
  ProjectsLocationsDataSetsFhirStoresPatch'
    { _pldsfspXgafv = Nothing
    , _pldsfspUploadProtocol = Nothing
    , _pldsfspUpdateMask = Nothing
    , _pldsfspAccessToken = Nothing
    , _pldsfspUploadType = Nothing
    , _pldsfspPayload = pPldsfspPayload_
    , _pldsfspName = pPldsfspName_
    , _pldsfspCallback = Nothing
    }


-- | V1 error format.
pldsfspXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresPatch (Maybe Xgafv)
pldsfspXgafv
  = lens _pldsfspXgafv (\ s a -> s{_pldsfspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfspUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresPatch (Maybe Text)
pldsfspUploadProtocol
  = lens _pldsfspUploadProtocol
      (\ s a -> s{_pldsfspUploadProtocol = a})

-- | The update mask applies to the resource. For the \`FieldMask\`
-- definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
pldsfspUpdateMask :: Lens' ProjectsLocationsDataSetsFhirStoresPatch (Maybe GFieldMask)
pldsfspUpdateMask
  = lens _pldsfspUpdateMask
      (\ s a -> s{_pldsfspUpdateMask = a})

-- | OAuth access token.
pldsfspAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresPatch (Maybe Text)
pldsfspAccessToken
  = lens _pldsfspAccessToken
      (\ s a -> s{_pldsfspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfspUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresPatch (Maybe Text)
pldsfspUploadType
  = lens _pldsfspUploadType
      (\ s a -> s{_pldsfspUploadType = a})

-- | Multipart request metadata.
pldsfspPayload :: Lens' ProjectsLocationsDataSetsFhirStoresPatch FhirStore
pldsfspPayload
  = lens _pldsfspPayload
      (\ s a -> s{_pldsfspPayload = a})

-- | Output only. Resource name of the FHIR store, of the form
-- \`projects\/{project_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
pldsfspName :: Lens' ProjectsLocationsDataSetsFhirStoresPatch Text
pldsfspName
  = lens _pldsfspName (\ s a -> s{_pldsfspName = a})

-- | JSONP
pldsfspCallback :: Lens' ProjectsLocationsDataSetsFhirStoresPatch (Maybe Text)
pldsfspCallback
  = lens _pldsfspCallback
      (\ s a -> s{_pldsfspCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresPatch
         where
        type Rs ProjectsLocationsDataSetsFhirStoresPatch =
             FhirStore
        type Scopes ProjectsLocationsDataSetsFhirStoresPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresPatch'{..}
          = go _pldsfspName _pldsfspXgafv
              _pldsfspUploadProtocol
              _pldsfspUpdateMask
              _pldsfspAccessToken
              _pldsfspUploadType
              _pldsfspCallback
              (Just AltJSON)
              _pldsfspPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresPatchResource)
                      mempty
