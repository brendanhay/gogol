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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Activate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activates the latest revision of the specified Consent by committing a
-- new revision with \`state\` updated to \`ACTIVE\`. If the latest
-- revision of the specified Consent is in the \`ACTIVE\` state, no new
-- revision is committed. A FAILED_PRECONDITION error occurs if the latest
-- revision of the specified Consent is in the \`REJECTED\` or \`REVOKED\`
-- state.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.activate@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Activate
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentsActivateResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentsActivate
    , ProjectsLocationsDataSetsConsentStoresConsentsActivate

    -- * Request Lenses
    , pldscscaXgafv
    , pldscscaUploadProtocol
    , pldscscaAccessToken
    , pldscscaUploadType
    , pldscscaPayload
    , pldscscaName
    , pldscscaCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.activate@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentsActivate' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentsActivateResource
     =
     "v1" :>
       CaptureMode "name" "activate" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ActivateConsentRequest :>
                       Post '[JSON] Consent

-- | Activates the latest revision of the specified Consent by committing a
-- new revision with \`state\` updated to \`ACTIVE\`. If the latest
-- revision of the specified Consent is in the \`ACTIVE\` state, no new
-- revision is committed. A FAILED_PRECONDITION error occurs if the latest
-- revision of the specified Consent is in the \`REJECTED\` or \`REVOKED\`
-- state.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentsActivate' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentsActivate =
  ProjectsLocationsDataSetsConsentStoresConsentsActivate'
    { _pldscscaXgafv :: !(Maybe Xgafv)
    , _pldscscaUploadProtocol :: !(Maybe Text)
    , _pldscscaAccessToken :: !(Maybe Text)
    , _pldscscaUploadType :: !(Maybe Text)
    , _pldscscaPayload :: !ActivateConsentRequest
    , _pldscscaName :: !Text
    , _pldscscaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentsActivate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscaXgafv'
--
-- * 'pldscscaUploadProtocol'
--
-- * 'pldscscaAccessToken'
--
-- * 'pldscscaUploadType'
--
-- * 'pldscscaPayload'
--
-- * 'pldscscaName'
--
-- * 'pldscscaCallback'
projectsLocationsDataSetsConsentStoresConsentsActivate
    :: ActivateConsentRequest -- ^ 'pldscscaPayload'
    -> Text -- ^ 'pldscscaName'
    -> ProjectsLocationsDataSetsConsentStoresConsentsActivate
projectsLocationsDataSetsConsentStoresConsentsActivate pPldscscaPayload_ pPldscscaName_ =
  ProjectsLocationsDataSetsConsentStoresConsentsActivate'
    { _pldscscaXgafv = Nothing
    , _pldscscaUploadProtocol = Nothing
    , _pldscscaAccessToken = Nothing
    , _pldscscaUploadType = Nothing
    , _pldscscaPayload = pPldscscaPayload_
    , _pldscscaName = pPldscscaName_
    , _pldscscaCallback = Nothing
    }


-- | V1 error format.
pldscscaXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsActivate (Maybe Xgafv)
pldscscaXgafv
  = lens _pldscscaXgafv
      (\ s a -> s{_pldscscaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscaUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsActivate (Maybe Text)
pldscscaUploadProtocol
  = lens _pldscscaUploadProtocol
      (\ s a -> s{_pldscscaUploadProtocol = a})

-- | OAuth access token.
pldscscaAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsActivate (Maybe Text)
pldscscaAccessToken
  = lens _pldscscaAccessToken
      (\ s a -> s{_pldscscaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscaUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsActivate (Maybe Text)
pldscscaUploadType
  = lens _pldscscaUploadType
      (\ s a -> s{_pldscscaUploadType = a})

-- | Multipart request metadata.
pldscscaPayload :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsActivate ActivateConsentRequest
pldscscaPayload
  = lens _pldscscaPayload
      (\ s a -> s{_pldscscaPayload = a})

-- | Required. The resource name of the Consent to activate, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\`.
-- An INVALID_ARGUMENT error occurs if \`revision_id\` is specified in the
-- name.
pldscscaName :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsActivate Text
pldscscaName
  = lens _pldscscaName (\ s a -> s{_pldscscaName = a})

-- | JSONP
pldscscaCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsActivate (Maybe Text)
pldscscaCallback
  = lens _pldscscaCallback
      (\ s a -> s{_pldscscaCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentsActivate
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentsActivate
             = Consent
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentsActivate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentsActivate'{..}
          = go _pldscscaName _pldscscaXgafv
              _pldscscaUploadProtocol
              _pldscscaAccessToken
              _pldscscaUploadType
              _pldscscaCallback
              (Just AltJSON)
              _pldscscaPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentsActivateResource)
                      mempty
