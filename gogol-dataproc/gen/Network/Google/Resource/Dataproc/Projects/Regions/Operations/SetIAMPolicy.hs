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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Operations.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
-- PERMISSION_DENIED errors.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.operations.setIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Regions.Operations.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsRegionsOperationsSetIAMPolicyResource

    -- * Creating a Request
    , projectsRegionsOperationsSetIAMPolicy
    , ProjectsRegionsOperationsSetIAMPolicy

    -- * Request Lenses
    , prosipXgafv
    , prosipUploadProtocol
    , prosipAccessToken
    , prosipUploadType
    , prosipPayload
    , prosipResource
    , prosipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.operations.setIamPolicy@ method which the
-- 'ProjectsRegionsOperationsSetIAMPolicy' request conforms to.
type ProjectsRegionsOperationsSetIAMPolicyResource =
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
-- existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
-- PERMISSION_DENIED errors.
--
-- /See:/ 'projectsRegionsOperationsSetIAMPolicy' smart constructor.
data ProjectsRegionsOperationsSetIAMPolicy =
  ProjectsRegionsOperationsSetIAMPolicy'
    { _prosipXgafv :: !(Maybe Xgafv)
    , _prosipUploadProtocol :: !(Maybe Text)
    , _prosipAccessToken :: !(Maybe Text)
    , _prosipUploadType :: !(Maybe Text)
    , _prosipPayload :: !SetIAMPolicyRequest
    , _prosipResource :: !Text
    , _prosipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsOperationsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prosipXgafv'
--
-- * 'prosipUploadProtocol'
--
-- * 'prosipAccessToken'
--
-- * 'prosipUploadType'
--
-- * 'prosipPayload'
--
-- * 'prosipResource'
--
-- * 'prosipCallback'
projectsRegionsOperationsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'prosipPayload'
    -> Text -- ^ 'prosipResource'
    -> ProjectsRegionsOperationsSetIAMPolicy
projectsRegionsOperationsSetIAMPolicy pProsipPayload_ pProsipResource_ =
  ProjectsRegionsOperationsSetIAMPolicy'
    { _prosipXgafv = Nothing
    , _prosipUploadProtocol = Nothing
    , _prosipAccessToken = Nothing
    , _prosipUploadType = Nothing
    , _prosipPayload = pProsipPayload_
    , _prosipResource = pProsipResource_
    , _prosipCallback = Nothing
    }


-- | V1 error format.
prosipXgafv :: Lens' ProjectsRegionsOperationsSetIAMPolicy (Maybe Xgafv)
prosipXgafv
  = lens _prosipXgafv (\ s a -> s{_prosipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prosipUploadProtocol :: Lens' ProjectsRegionsOperationsSetIAMPolicy (Maybe Text)
prosipUploadProtocol
  = lens _prosipUploadProtocol
      (\ s a -> s{_prosipUploadProtocol = a})

-- | OAuth access token.
prosipAccessToken :: Lens' ProjectsRegionsOperationsSetIAMPolicy (Maybe Text)
prosipAccessToken
  = lens _prosipAccessToken
      (\ s a -> s{_prosipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prosipUploadType :: Lens' ProjectsRegionsOperationsSetIAMPolicy (Maybe Text)
prosipUploadType
  = lens _prosipUploadType
      (\ s a -> s{_prosipUploadType = a})

-- | Multipart request metadata.
prosipPayload :: Lens' ProjectsRegionsOperationsSetIAMPolicy SetIAMPolicyRequest
prosipPayload
  = lens _prosipPayload
      (\ s a -> s{_prosipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
prosipResource :: Lens' ProjectsRegionsOperationsSetIAMPolicy Text
prosipResource
  = lens _prosipResource
      (\ s a -> s{_prosipResource = a})

-- | JSONP
prosipCallback :: Lens' ProjectsRegionsOperationsSetIAMPolicy (Maybe Text)
prosipCallback
  = lens _prosipCallback
      (\ s a -> s{_prosipCallback = a})

instance GoogleRequest
           ProjectsRegionsOperationsSetIAMPolicy
         where
        type Rs ProjectsRegionsOperationsSetIAMPolicy =
             Policy
        type Scopes ProjectsRegionsOperationsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsOperationsSetIAMPolicy'{..}
          = go _prosipResource _prosipXgafv
              _prosipUploadProtocol
              _prosipAccessToken
              _prosipUploadType
              _prosipCallback
              (Just AltJSON)
              _prosipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsOperationsSetIAMPolicyResource)
                      mempty
