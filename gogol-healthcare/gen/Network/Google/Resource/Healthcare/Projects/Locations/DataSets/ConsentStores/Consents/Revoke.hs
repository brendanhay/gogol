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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Revoke
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes the latest revision of the specified Consent by committing a new
-- revision with \`state\` updated to \`REVOKED\`. If the latest revision
-- of the specified Consent is in the \`REVOKED\` state, no new revision is
-- committed. A FAILED_PRECONDITION error occurs if the latest revision of
-- the given consent is in \`DRAFT\` or \`REJECTED\` state.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.revoke@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Revoke
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentsRevokeResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentsRevoke
    , ProjectsLocationsDataSetsConsentStoresConsentsRevoke

    -- * Request Lenses
    , pldscscrXgafv
    , pldscscrUploadProtocol
    , pldscscrAccessToken
    , pldscscrUploadType
    , pldscscrPayload
    , pldscscrName
    , pldscscrCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.revoke@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentsRevoke' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentsRevokeResource
     =
     "v1" :>
       CaptureMode "name" "revoke" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RevokeConsentRequest :>
                       Post '[JSON] Consent

-- | Revokes the latest revision of the specified Consent by committing a new
-- revision with \`state\` updated to \`REVOKED\`. If the latest revision
-- of the specified Consent is in the \`REVOKED\` state, no new revision is
-- committed. A FAILED_PRECONDITION error occurs if the latest revision of
-- the given consent is in \`DRAFT\` or \`REJECTED\` state.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentsRevoke' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentsRevoke =
  ProjectsLocationsDataSetsConsentStoresConsentsRevoke'
    { _pldscscrXgafv :: !(Maybe Xgafv)
    , _pldscscrUploadProtocol :: !(Maybe Text)
    , _pldscscrAccessToken :: !(Maybe Text)
    , _pldscscrUploadType :: !(Maybe Text)
    , _pldscscrPayload :: !RevokeConsentRequest
    , _pldscscrName :: !Text
    , _pldscscrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentsRevoke' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscrXgafv'
--
-- * 'pldscscrUploadProtocol'
--
-- * 'pldscscrAccessToken'
--
-- * 'pldscscrUploadType'
--
-- * 'pldscscrPayload'
--
-- * 'pldscscrName'
--
-- * 'pldscscrCallback'
projectsLocationsDataSetsConsentStoresConsentsRevoke
    :: RevokeConsentRequest -- ^ 'pldscscrPayload'
    -> Text -- ^ 'pldscscrName'
    -> ProjectsLocationsDataSetsConsentStoresConsentsRevoke
projectsLocationsDataSetsConsentStoresConsentsRevoke pPldscscrPayload_ pPldscscrName_ =
  ProjectsLocationsDataSetsConsentStoresConsentsRevoke'
    { _pldscscrXgafv = Nothing
    , _pldscscrUploadProtocol = Nothing
    , _pldscscrAccessToken = Nothing
    , _pldscscrUploadType = Nothing
    , _pldscscrPayload = pPldscscrPayload_
    , _pldscscrName = pPldscscrName_
    , _pldscscrCallback = Nothing
    }


-- | V1 error format.
pldscscrXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsRevoke (Maybe Xgafv)
pldscscrXgafv
  = lens _pldscscrXgafv
      (\ s a -> s{_pldscscrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscrUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsRevoke (Maybe Text)
pldscscrUploadProtocol
  = lens _pldscscrUploadProtocol
      (\ s a -> s{_pldscscrUploadProtocol = a})

-- | OAuth access token.
pldscscrAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsRevoke (Maybe Text)
pldscscrAccessToken
  = lens _pldscscrAccessToken
      (\ s a -> s{_pldscscrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscrUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsRevoke (Maybe Text)
pldscscrUploadType
  = lens _pldscscrUploadType
      (\ s a -> s{_pldscscrUploadType = a})

-- | Multipart request metadata.
pldscscrPayload :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsRevoke RevokeConsentRequest
pldscscrPayload
  = lens _pldscscrPayload
      (\ s a -> s{_pldscscrPayload = a})

-- | Required. The resource name of the Consent to revoke, of the form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\`.
-- An INVALID_ARGUMENT error occurs if \`revision_id\` is specified in the
-- name.
pldscscrName :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsRevoke Text
pldscscrName
  = lens _pldscscrName (\ s a -> s{_pldscscrName = a})

-- | JSONP
pldscscrCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsRevoke (Maybe Text)
pldscscrCallback
  = lens _pldscscrCallback
      (\ s a -> s{_pldscscrCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentsRevoke
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentsRevoke
             = Consent
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentsRevoke
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentsRevoke'{..}
          = go _pldscscrName _pldscscrXgafv
              _pldscscrUploadProtocol
              _pldscscrAccessToken
              _pldscscrUploadType
              _pldscscrCallback
              (Just AltJSON)
              _pldscscrPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentsRevokeResource)
                      mempty
