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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.getIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresGetIAMPolicy
    , ProjectsLocationsDataSetsConsentStoresGetIAMPolicy

    -- * Request Lenses
    , pldscsgipOptionsRequestedPolicyVersion
    , pldscsgipXgafv
    , pldscsgipUploadProtocol
    , pldscsgipAccessToken
    , pldscsgipUploadType
    , pldscsgipResource
    , pldscsgipCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.getIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresGetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsConsentStoresGetIAMPolicyResource
     =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "options.requestedPolicyVersion"
           (Textual Int32)
           :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresGetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsConsentStoresGetIAMPolicy =
  ProjectsLocationsDataSetsConsentStoresGetIAMPolicy'
    { _pldscsgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _pldscsgipXgafv :: !(Maybe Xgafv)
    , _pldscsgipUploadProtocol :: !(Maybe Text)
    , _pldscsgipAccessToken :: !(Maybe Text)
    , _pldscsgipUploadType :: !(Maybe Text)
    , _pldscsgipResource :: !Text
    , _pldscsgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsgipOptionsRequestedPolicyVersion'
--
-- * 'pldscsgipXgafv'
--
-- * 'pldscsgipUploadProtocol'
--
-- * 'pldscsgipAccessToken'
--
-- * 'pldscsgipUploadType'
--
-- * 'pldscsgipResource'
--
-- * 'pldscsgipCallback'
projectsLocationsDataSetsConsentStoresGetIAMPolicy
    :: Text -- ^ 'pldscsgipResource'
    -> ProjectsLocationsDataSetsConsentStoresGetIAMPolicy
projectsLocationsDataSetsConsentStoresGetIAMPolicy pPldscsgipResource_ =
  ProjectsLocationsDataSetsConsentStoresGetIAMPolicy'
    { _pldscsgipOptionsRequestedPolicyVersion = Nothing
    , _pldscsgipXgafv = Nothing
    , _pldscsgipUploadProtocol = Nothing
    , _pldscsgipAccessToken = Nothing
    , _pldscsgipUploadType = Nothing
    , _pldscsgipResource = pPldscsgipResource_
    , _pldscsgipCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pldscsgipOptionsRequestedPolicyVersion :: Lens' ProjectsLocationsDataSetsConsentStoresGetIAMPolicy (Maybe Int32)
pldscsgipOptionsRequestedPolicyVersion
  = lens _pldscsgipOptionsRequestedPolicyVersion
      (\ s a ->
         s{_pldscsgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
pldscsgipXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresGetIAMPolicy (Maybe Xgafv)
pldscsgipXgafv
  = lens _pldscsgipXgafv
      (\ s a -> s{_pldscsgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsgipUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresGetIAMPolicy (Maybe Text)
pldscsgipUploadProtocol
  = lens _pldscsgipUploadProtocol
      (\ s a -> s{_pldscsgipUploadProtocol = a})

-- | OAuth access token.
pldscsgipAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresGetIAMPolicy (Maybe Text)
pldscsgipAccessToken
  = lens _pldscsgipAccessToken
      (\ s a -> s{_pldscsgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsgipUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresGetIAMPolicy (Maybe Text)
pldscsgipUploadType
  = lens _pldscsgipUploadType
      (\ s a -> s{_pldscsgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pldscsgipResource :: Lens' ProjectsLocationsDataSetsConsentStoresGetIAMPolicy Text
pldscsgipResource
  = lens _pldscsgipResource
      (\ s a -> s{_pldscsgipResource = a})

-- | JSONP
pldscsgipCallback :: Lens' ProjectsLocationsDataSetsConsentStoresGetIAMPolicy (Maybe Text)
pldscsgipCallback
  = lens _pldscsgipCallback
      (\ s a -> s{_pldscsgipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresGetIAMPolicy
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresGetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsDataSetsConsentStoresGetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresGetIAMPolicy'{..}
          = go _pldscsgipResource
              _pldscsgipOptionsRequestedPolicyVersion
              _pldscsgipXgafv
              _pldscsgipUploadProtocol
              _pldscsgipAccessToken
              _pldscsgipUploadType
              _pldscsgipCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresGetIAMPolicyResource)
                      mempty
