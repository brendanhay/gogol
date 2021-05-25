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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the HL7v2 store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.patch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.Patch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresPatch
    , ProjectsLocationsDataSetsHl7V2StoresPatch

    -- * Request Lenses
    , pldshvspXgafv
    , pldshvspUploadProtocol
    , pldshvspUpdateMask
    , pldshvspAccessToken
    , pldshvspUploadType
    , pldshvspPayload
    , pldshvspName
    , pldshvspCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.patch@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresPatch' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresPatchResource
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
                       ReqBody '[JSON] Hl7V2Store :>
                         Patch '[JSON] Hl7V2Store

-- | Updates the HL7v2 store.
--
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresPatch' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresPatch =
  ProjectsLocationsDataSetsHl7V2StoresPatch'
    { _pldshvspXgafv :: !(Maybe Xgafv)
    , _pldshvspUploadProtocol :: !(Maybe Text)
    , _pldshvspUpdateMask :: !(Maybe GFieldMask)
    , _pldshvspAccessToken :: !(Maybe Text)
    , _pldshvspUploadType :: !(Maybe Text)
    , _pldshvspPayload :: !Hl7V2Store
    , _pldshvspName :: !Text
    , _pldshvspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvspXgafv'
--
-- * 'pldshvspUploadProtocol'
--
-- * 'pldshvspUpdateMask'
--
-- * 'pldshvspAccessToken'
--
-- * 'pldshvspUploadType'
--
-- * 'pldshvspPayload'
--
-- * 'pldshvspName'
--
-- * 'pldshvspCallback'
projectsLocationsDataSetsHl7V2StoresPatch
    :: Hl7V2Store -- ^ 'pldshvspPayload'
    -> Text -- ^ 'pldshvspName'
    -> ProjectsLocationsDataSetsHl7V2StoresPatch
projectsLocationsDataSetsHl7V2StoresPatch pPldshvspPayload_ pPldshvspName_ =
  ProjectsLocationsDataSetsHl7V2StoresPatch'
    { _pldshvspXgafv = Nothing
    , _pldshvspUploadProtocol = Nothing
    , _pldshvspUpdateMask = Nothing
    , _pldshvspAccessToken = Nothing
    , _pldshvspUploadType = Nothing
    , _pldshvspPayload = pPldshvspPayload_
    , _pldshvspName = pPldshvspName_
    , _pldshvspCallback = Nothing
    }


-- | V1 error format.
pldshvspXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresPatch (Maybe Xgafv)
pldshvspXgafv
  = lens _pldshvspXgafv
      (\ s a -> s{_pldshvspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvspUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresPatch (Maybe Text)
pldshvspUploadProtocol
  = lens _pldshvspUploadProtocol
      (\ s a -> s{_pldshvspUploadProtocol = a})

-- | The update mask applies to the resource. For the \`FieldMask\`
-- definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
pldshvspUpdateMask :: Lens' ProjectsLocationsDataSetsHl7V2StoresPatch (Maybe GFieldMask)
pldshvspUpdateMask
  = lens _pldshvspUpdateMask
      (\ s a -> s{_pldshvspUpdateMask = a})

-- | OAuth access token.
pldshvspAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresPatch (Maybe Text)
pldshvspAccessToken
  = lens _pldshvspAccessToken
      (\ s a -> s{_pldshvspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvspUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresPatch (Maybe Text)
pldshvspUploadType
  = lens _pldshvspUploadType
      (\ s a -> s{_pldshvspUploadType = a})

-- | Multipart request metadata.
pldshvspPayload :: Lens' ProjectsLocationsDataSetsHl7V2StoresPatch Hl7V2Store
pldshvspPayload
  = lens _pldshvspPayload
      (\ s a -> s{_pldshvspPayload = a})

-- | Resource name of the HL7v2 store, of the form
-- \`projects\/{project_id}\/datasets\/{dataset_id}\/hl7V2Stores\/{hl7v2_store_id}\`.
pldshvspName :: Lens' ProjectsLocationsDataSetsHl7V2StoresPatch Text
pldshvspName
  = lens _pldshvspName (\ s a -> s{_pldshvspName = a})

-- | JSONP
pldshvspCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresPatch (Maybe Text)
pldshvspCallback
  = lens _pldshvspCallback
      (\ s a -> s{_pldshvspCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresPatch
         where
        type Rs ProjectsLocationsDataSetsHl7V2StoresPatch =
             Hl7V2Store
        type Scopes ProjectsLocationsDataSetsHl7V2StoresPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresPatch'{..}
          = go _pldshvspName _pldshvspXgafv
              _pldshvspUploadProtocol
              _pldshvspUpdateMask
              _pldshvspAccessToken
              _pldshvspUploadType
              _pldshvspCallback
              (Just AltJSON)
              _pldshvspPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresPatchResource)
                      mempty
