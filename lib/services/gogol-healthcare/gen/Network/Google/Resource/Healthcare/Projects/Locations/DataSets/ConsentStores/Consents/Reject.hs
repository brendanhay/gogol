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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Reject
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rejects the latest revision of the specified Consent by committing a new
-- revision with \`state\` updated to \`REJECTED\`. If the latest revision
-- of the specified Consent is in the \`REJECTED\` state, no new revision
-- is committed. A FAILED_PRECONDITION error occurs if the latest revision
-- of the specified Consent is in the \`ACTIVE\` or \`REVOKED\` state.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.reject@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Reject
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentsRejectResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentsReject
    , ProjectsLocationsDataSetsConsentStoresConsentsReject

    -- * Request Lenses
    , pldscscrlXgafv
    , pldscscrlUploadProtocol
    , pldscscrlAccessToken
    , pldscscrlUploadType
    , pldscscrlPayload
    , pldscscrlName
    , pldscscrlCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.reject@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentsReject' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentsRejectResource
     =
     "v1" :>
       CaptureMode "name" "reject" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RejectConsentRequest :>
                       Post '[JSON] Consent

-- | Rejects the latest revision of the specified Consent by committing a new
-- revision with \`state\` updated to \`REJECTED\`. If the latest revision
-- of the specified Consent is in the \`REJECTED\` state, no new revision
-- is committed. A FAILED_PRECONDITION error occurs if the latest revision
-- of the specified Consent is in the \`ACTIVE\` or \`REVOKED\` state.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentsReject' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentsReject =
  ProjectsLocationsDataSetsConsentStoresConsentsReject'
    { _pldscscrlXgafv :: !(Maybe Xgafv)
    , _pldscscrlUploadProtocol :: !(Maybe Text)
    , _pldscscrlAccessToken :: !(Maybe Text)
    , _pldscscrlUploadType :: !(Maybe Text)
    , _pldscscrlPayload :: !RejectConsentRequest
    , _pldscscrlName :: !Text
    , _pldscscrlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentsReject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscrlXgafv'
--
-- * 'pldscscrlUploadProtocol'
--
-- * 'pldscscrlAccessToken'
--
-- * 'pldscscrlUploadType'
--
-- * 'pldscscrlPayload'
--
-- * 'pldscscrlName'
--
-- * 'pldscscrlCallback'
projectsLocationsDataSetsConsentStoresConsentsReject
    :: RejectConsentRequest -- ^ 'pldscscrlPayload'
    -> Text -- ^ 'pldscscrlName'
    -> ProjectsLocationsDataSetsConsentStoresConsentsReject
projectsLocationsDataSetsConsentStoresConsentsReject pPldscscrlPayload_ pPldscscrlName_ =
  ProjectsLocationsDataSetsConsentStoresConsentsReject'
    { _pldscscrlXgafv = Nothing
    , _pldscscrlUploadProtocol = Nothing
    , _pldscscrlAccessToken = Nothing
    , _pldscscrlUploadType = Nothing
    , _pldscscrlPayload = pPldscscrlPayload_
    , _pldscscrlName = pPldscscrlName_
    , _pldscscrlCallback = Nothing
    }


-- | V1 error format.
pldscscrlXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsReject (Maybe Xgafv)
pldscscrlXgafv
  = lens _pldscscrlXgafv
      (\ s a -> s{_pldscscrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscrlUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsReject (Maybe Text)
pldscscrlUploadProtocol
  = lens _pldscscrlUploadProtocol
      (\ s a -> s{_pldscscrlUploadProtocol = a})

-- | OAuth access token.
pldscscrlAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsReject (Maybe Text)
pldscscrlAccessToken
  = lens _pldscscrlAccessToken
      (\ s a -> s{_pldscscrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscrlUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsReject (Maybe Text)
pldscscrlUploadType
  = lens _pldscscrlUploadType
      (\ s a -> s{_pldscscrlUploadType = a})

-- | Multipart request metadata.
pldscscrlPayload :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsReject RejectConsentRequest
pldscscrlPayload
  = lens _pldscscrlPayload
      (\ s a -> s{_pldscscrlPayload = a})

-- | Required. The resource name of the Consent to reject, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\`.
-- An INVALID_ARGUMENT error occurs if \`revision_id\` is specified in the
-- name.
pldscscrlName :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsReject Text
pldscscrlName
  = lens _pldscscrlName
      (\ s a -> s{_pldscscrlName = a})

-- | JSONP
pldscscrlCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsReject (Maybe Text)
pldscscrlCallback
  = lens _pldscscrlCallback
      (\ s a -> s{_pldscscrlCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentsReject
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentsReject
             = Consent
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentsReject
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentsReject'{..}
          = go _pldscscrlName _pldscscrlXgafv
              _pldscscrlUploadProtocol
              _pldscscrlAccessToken
              _pldscscrlUploadType
              _pldscscrlCallback
              (Just AltJSON)
              _pldscscrlPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentsRejectResource)
                      mempty
