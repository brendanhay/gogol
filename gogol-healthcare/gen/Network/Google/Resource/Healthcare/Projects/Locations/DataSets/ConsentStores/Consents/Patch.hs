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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the latest revision of the specified Consent by committing a new
-- revision with the changes. A FAILED_PRECONDITION error occurs if the
-- latest revision of the specified Consent is in the \`REJECTED\` or
-- \`REVOKED\` state.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.patch@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Patch
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentsPatchResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentsPatch
    , ProjectsLocationsDataSetsConsentStoresConsentsPatch

    -- * Request Lenses
    , pldscscpXgafv
    , pldscscpUploadProtocol
    , pldscscpUpdateMask
    , pldscscpAccessToken
    , pldscscpUploadType
    , pldscscpPayload
    , pldscscpName
    , pldscscpCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.patch@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentsPatch' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentsPatchResource
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
                       ReqBody '[JSON] Consent :> Patch '[JSON] Consent

-- | Updates the latest revision of the specified Consent by committing a new
-- revision with the changes. A FAILED_PRECONDITION error occurs if the
-- latest revision of the specified Consent is in the \`REJECTED\` or
-- \`REVOKED\` state.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentsPatch' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentsPatch =
  ProjectsLocationsDataSetsConsentStoresConsentsPatch'
    { _pldscscpXgafv :: !(Maybe Xgafv)
    , _pldscscpUploadProtocol :: !(Maybe Text)
    , _pldscscpUpdateMask :: !(Maybe GFieldMask)
    , _pldscscpAccessToken :: !(Maybe Text)
    , _pldscscpUploadType :: !(Maybe Text)
    , _pldscscpPayload :: !Consent
    , _pldscscpName :: !Text
    , _pldscscpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscpXgafv'
--
-- * 'pldscscpUploadProtocol'
--
-- * 'pldscscpUpdateMask'
--
-- * 'pldscscpAccessToken'
--
-- * 'pldscscpUploadType'
--
-- * 'pldscscpPayload'
--
-- * 'pldscscpName'
--
-- * 'pldscscpCallback'
projectsLocationsDataSetsConsentStoresConsentsPatch
    :: Consent -- ^ 'pldscscpPayload'
    -> Text -- ^ 'pldscscpName'
    -> ProjectsLocationsDataSetsConsentStoresConsentsPatch
projectsLocationsDataSetsConsentStoresConsentsPatch pPldscscpPayload_ pPldscscpName_ =
  ProjectsLocationsDataSetsConsentStoresConsentsPatch'
    { _pldscscpXgafv = Nothing
    , _pldscscpUploadProtocol = Nothing
    , _pldscscpUpdateMask = Nothing
    , _pldscscpAccessToken = Nothing
    , _pldscscpUploadType = Nothing
    , _pldscscpPayload = pPldscscpPayload_
    , _pldscscpName = pPldscscpName_
    , _pldscscpCallback = Nothing
    }


-- | V1 error format.
pldscscpXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsPatch (Maybe Xgafv)
pldscscpXgafv
  = lens _pldscscpXgafv
      (\ s a -> s{_pldscscpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscpUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsPatch (Maybe Text)
pldscscpUploadProtocol
  = lens _pldscscpUploadProtocol
      (\ s a -> s{_pldscscpUploadProtocol = a})

-- | Required. The update mask to apply to the resource. For the
-- \`FieldMask\` definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask.
-- Only the \`user_id\`, \`policies\`, \`consent_artifact\`, and
-- \`metadata\` fields can be updated.
pldscscpUpdateMask :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsPatch (Maybe GFieldMask)
pldscscpUpdateMask
  = lens _pldscscpUpdateMask
      (\ s a -> s{_pldscscpUpdateMask = a})

-- | OAuth access token.
pldscscpAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsPatch (Maybe Text)
pldscscpAccessToken
  = lens _pldscscpAccessToken
      (\ s a -> s{_pldscscpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscpUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsPatch (Maybe Text)
pldscscpUploadType
  = lens _pldscscpUploadType
      (\ s a -> s{_pldscscpUploadType = a})

-- | Multipart request metadata.
pldscscpPayload :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsPatch Consent
pldscscpPayload
  = lens _pldscscpPayload
      (\ s a -> s{_pldscscpPayload = a})

-- | Resource name of the Consent, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\`.
-- Cannot be changed after creation.
pldscscpName :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsPatch Text
pldscscpName
  = lens _pldscscpName (\ s a -> s{_pldscscpName = a})

-- | JSONP
pldscscpCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsPatch (Maybe Text)
pldscscpCallback
  = lens _pldscscpCallback
      (\ s a -> s{_pldscscpCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentsPatch
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentsPatch
             = Consent
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentsPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentsPatch'{..}
          = go _pldscscpName _pldscscpXgafv
              _pldscscpUploadProtocol
              _pldscscpUpdateMask
              _pldscscpAccessToken
              _pldscscpUploadType
              _pldscscpCallback
              (Just AltJSON)
              _pldscscpPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentsPatchResource)
                      mempty
