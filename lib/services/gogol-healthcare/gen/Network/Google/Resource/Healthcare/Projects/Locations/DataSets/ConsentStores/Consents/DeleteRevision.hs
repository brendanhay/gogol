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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.DeleteRevision
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified revision of a Consent. An INVALID_ARGUMENT error
-- occurs if the specified revision is the latest revision.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.deleteRevision@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.DeleteRevision
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevisionResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentsDeleteRevision
    , ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision

    -- * Request Lenses
    , pldscscdrXgafv
    , pldscscdrUploadProtocol
    , pldscscdrAccessToken
    , pldscscdrUploadType
    , pldscscdrName
    , pldscscdrCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.deleteRevision@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevisionResource
     =
     "v1" :>
       CaptureMode "name" "deleteRevision" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified revision of a Consent. An INVALID_ARGUMENT error
-- occurs if the specified revision is the latest revision.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentsDeleteRevision' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision =
  ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision'
    { _pldscscdrXgafv :: !(Maybe Xgafv)
    , _pldscscdrUploadProtocol :: !(Maybe Text)
    , _pldscscdrAccessToken :: !(Maybe Text)
    , _pldscscdrUploadType :: !(Maybe Text)
    , _pldscscdrName :: !Text
    , _pldscscdrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscdrXgafv'
--
-- * 'pldscscdrUploadProtocol'
--
-- * 'pldscscdrAccessToken'
--
-- * 'pldscscdrUploadType'
--
-- * 'pldscscdrName'
--
-- * 'pldscscdrCallback'
projectsLocationsDataSetsConsentStoresConsentsDeleteRevision
    :: Text -- ^ 'pldscscdrName'
    -> ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision
projectsLocationsDataSetsConsentStoresConsentsDeleteRevision pPldscscdrName_ =
  ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision'
    { _pldscscdrXgafv = Nothing
    , _pldscscdrUploadProtocol = Nothing
    , _pldscscdrAccessToken = Nothing
    , _pldscscdrUploadType = Nothing
    , _pldscscdrName = pPldscscdrName_
    , _pldscscdrCallback = Nothing
    }


-- | V1 error format.
pldscscdrXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision (Maybe Xgafv)
pldscscdrXgafv
  = lens _pldscscdrXgafv
      (\ s a -> s{_pldscscdrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscdrUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision (Maybe Text)
pldscscdrUploadProtocol
  = lens _pldscscdrUploadProtocol
      (\ s a -> s{_pldscscdrUploadProtocol = a})

-- | OAuth access token.
pldscscdrAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision (Maybe Text)
pldscscdrAccessToken
  = lens _pldscscdrAccessToken
      (\ s a -> s{_pldscscdrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscdrUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision (Maybe Text)
pldscscdrUploadType
  = lens _pldscscdrUploadType
      (\ s a -> s{_pldscscdrUploadType = a})

-- | Required. The resource name of the Consent revision to delete, of the
-- form
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\'{revision_id}\`.
-- An INVALID_ARGUMENT error occurs if \`revision_id\` is not specified in
-- the name.
pldscscdrName :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision Text
pldscscdrName
  = lens _pldscscdrName
      (\ s a -> s{_pldscscdrName = a})

-- | JSONP
pldscscdrCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision (Maybe Text)
pldscscdrCallback
  = lens _pldscscdrCallback
      (\ s a -> s{_pldscscdrCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision
             = Empty
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevision'{..}
          = go _pldscscdrName _pldscscdrXgafv
              _pldscscdrUploadProtocol
              _pldscscdrAccessToken
              _pldscscdrUploadType
              _pldscscdrCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentsDeleteRevisionResource)
                      mempty
