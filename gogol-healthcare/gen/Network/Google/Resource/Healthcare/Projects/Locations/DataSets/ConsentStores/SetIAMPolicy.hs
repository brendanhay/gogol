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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.setIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresSetIAMPolicy
    , ProjectsLocationsDataSetsConsentStoresSetIAMPolicy

    -- * Request Lenses
    , pldscssipXgafv
    , pldscssipUploadProtocol
    , pldscssipAccessToken
    , pldscssipUploadType
    , pldscssipPayload
    , pldscssipResource
    , pldscssipCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.setIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresSetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsConsentStoresSetIAMPolicyResource
     =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresSetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsConsentStoresSetIAMPolicy =
  ProjectsLocationsDataSetsConsentStoresSetIAMPolicy'
    { _pldscssipXgafv :: !(Maybe Xgafv)
    , _pldscssipUploadProtocol :: !(Maybe Text)
    , _pldscssipAccessToken :: !(Maybe Text)
    , _pldscssipUploadType :: !(Maybe Text)
    , _pldscssipPayload :: !SetIAMPolicyRequest
    , _pldscssipResource :: !Text
    , _pldscssipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscssipXgafv'
--
-- * 'pldscssipUploadProtocol'
--
-- * 'pldscssipAccessToken'
--
-- * 'pldscssipUploadType'
--
-- * 'pldscssipPayload'
--
-- * 'pldscssipResource'
--
-- * 'pldscssipCallback'
projectsLocationsDataSetsConsentStoresSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pldscssipPayload'
    -> Text -- ^ 'pldscssipResource'
    -> ProjectsLocationsDataSetsConsentStoresSetIAMPolicy
projectsLocationsDataSetsConsentStoresSetIAMPolicy pPldscssipPayload_ pPldscssipResource_ =
  ProjectsLocationsDataSetsConsentStoresSetIAMPolicy'
    { _pldscssipXgafv = Nothing
    , _pldscssipUploadProtocol = Nothing
    , _pldscssipAccessToken = Nothing
    , _pldscssipUploadType = Nothing
    , _pldscssipPayload = pPldscssipPayload_
    , _pldscssipResource = pPldscssipResource_
    , _pldscssipCallback = Nothing
    }


-- | V1 error format.
pldscssipXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresSetIAMPolicy (Maybe Xgafv)
pldscssipXgafv
  = lens _pldscssipXgafv
      (\ s a -> s{_pldscssipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscssipUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresSetIAMPolicy (Maybe Text)
pldscssipUploadProtocol
  = lens _pldscssipUploadProtocol
      (\ s a -> s{_pldscssipUploadProtocol = a})

-- | OAuth access token.
pldscssipAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresSetIAMPolicy (Maybe Text)
pldscssipAccessToken
  = lens _pldscssipAccessToken
      (\ s a -> s{_pldscssipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscssipUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresSetIAMPolicy (Maybe Text)
pldscssipUploadType
  = lens _pldscssipUploadType
      (\ s a -> s{_pldscssipUploadType = a})

-- | Multipart request metadata.
pldscssipPayload :: Lens' ProjectsLocationsDataSetsConsentStoresSetIAMPolicy SetIAMPolicyRequest
pldscssipPayload
  = lens _pldscssipPayload
      (\ s a -> s{_pldscssipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pldscssipResource :: Lens' ProjectsLocationsDataSetsConsentStoresSetIAMPolicy Text
pldscssipResource
  = lens _pldscssipResource
      (\ s a -> s{_pldscssipResource = a})

-- | JSONP
pldscssipCallback :: Lens' ProjectsLocationsDataSetsConsentStoresSetIAMPolicy (Maybe Text)
pldscssipCallback
  = lens _pldscssipCallback
      (\ s a -> s{_pldscssipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresSetIAMPolicy
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresSetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsDataSetsConsentStoresSetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresSetIAMPolicy'{..}
          = go _pldscssipResource _pldscssipXgafv
              _pldscssipUploadProtocol
              _pldscssipAccessToken
              _pldscssipUploadType
              _pldscssipCallback
              (Just AltJSON)
              _pldscssipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresSetIAMPolicyResource)
                      mempty
