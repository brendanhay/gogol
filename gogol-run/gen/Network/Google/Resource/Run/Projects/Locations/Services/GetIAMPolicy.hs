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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Services.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the IAM Access Control policy currently in effect for the given
-- Cloud Run service. This result does not include any inherited policies.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.getIamPolicy@.
module Network.Google.Resource.Run.Projects.Locations.Services.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsServicesGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsServicesGetIAMPolicy
    , ProjectsLocationsServicesGetIAMPolicy

    -- * Request Lenses
    , plsgipOptionsRequestedPolicyVersion
    , plsgipXgafv
    , plsgipUploadProtocol
    , plsgipAccessToken
    , plsgipUploadType
    , plsgipResource
    , plsgipCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.services.getIamPolicy@ method which the
-- 'ProjectsLocationsServicesGetIAMPolicy' request conforms to.
type ProjectsLocationsServicesGetIAMPolicyResource =
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

-- | Get the IAM Access Control policy currently in effect for the given
-- Cloud Run service. This result does not include any inherited policies.
--
-- /See:/ 'projectsLocationsServicesGetIAMPolicy' smart constructor.
data ProjectsLocationsServicesGetIAMPolicy =
  ProjectsLocationsServicesGetIAMPolicy'
    { _plsgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _plsgipXgafv :: !(Maybe Xgafv)
    , _plsgipUploadProtocol :: !(Maybe Text)
    , _plsgipAccessToken :: !(Maybe Text)
    , _plsgipUploadType :: !(Maybe Text)
    , _plsgipResource :: !Text
    , _plsgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsServicesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsgipOptionsRequestedPolicyVersion'
--
-- * 'plsgipXgafv'
--
-- * 'plsgipUploadProtocol'
--
-- * 'plsgipAccessToken'
--
-- * 'plsgipUploadType'
--
-- * 'plsgipResource'
--
-- * 'plsgipCallback'
projectsLocationsServicesGetIAMPolicy
    :: Text -- ^ 'plsgipResource'
    -> ProjectsLocationsServicesGetIAMPolicy
projectsLocationsServicesGetIAMPolicy pPlsgipResource_ =
  ProjectsLocationsServicesGetIAMPolicy'
    { _plsgipOptionsRequestedPolicyVersion = Nothing
    , _plsgipXgafv = Nothing
    , _plsgipUploadProtocol = Nothing
    , _plsgipAccessToken = Nothing
    , _plsgipUploadType = Nothing
    , _plsgipResource = pPlsgipResource_
    , _plsgipCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
plsgipOptionsRequestedPolicyVersion :: Lens' ProjectsLocationsServicesGetIAMPolicy (Maybe Int32)
plsgipOptionsRequestedPolicyVersion
  = lens _plsgipOptionsRequestedPolicyVersion
      (\ s a ->
         s{_plsgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
plsgipXgafv :: Lens' ProjectsLocationsServicesGetIAMPolicy (Maybe Xgafv)
plsgipXgafv
  = lens _plsgipXgafv (\ s a -> s{_plsgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsgipUploadProtocol :: Lens' ProjectsLocationsServicesGetIAMPolicy (Maybe Text)
plsgipUploadProtocol
  = lens _plsgipUploadProtocol
      (\ s a -> s{_plsgipUploadProtocol = a})

-- | OAuth access token.
plsgipAccessToken :: Lens' ProjectsLocationsServicesGetIAMPolicy (Maybe Text)
plsgipAccessToken
  = lens _plsgipAccessToken
      (\ s a -> s{_plsgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsgipUploadType :: Lens' ProjectsLocationsServicesGetIAMPolicy (Maybe Text)
plsgipUploadType
  = lens _plsgipUploadType
      (\ s a -> s{_plsgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
plsgipResource :: Lens' ProjectsLocationsServicesGetIAMPolicy Text
plsgipResource
  = lens _plsgipResource
      (\ s a -> s{_plsgipResource = a})

-- | JSONP
plsgipCallback :: Lens' ProjectsLocationsServicesGetIAMPolicy (Maybe Text)
plsgipCallback
  = lens _plsgipCallback
      (\ s a -> s{_plsgipCallback = a})

instance GoogleRequest
           ProjectsLocationsServicesGetIAMPolicy
         where
        type Rs ProjectsLocationsServicesGetIAMPolicy =
             Policy
        type Scopes ProjectsLocationsServicesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsServicesGetIAMPolicy'{..}
          = go _plsgipResource
              _plsgipOptionsRequestedPolicyVersion
              _plsgipXgafv
              _plsgipUploadProtocol
              _plsgipAccessToken
              _plsgipUploadType
              _plsgipCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsServicesGetIAMPolicyResource)
                      mempty
