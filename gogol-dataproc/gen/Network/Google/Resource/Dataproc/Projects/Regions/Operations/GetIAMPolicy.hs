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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Operations.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.operations.getIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Regions.Operations.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsRegionsOperationsGetIAMPolicyResource

    -- * Creating a Request
    , projectsRegionsOperationsGetIAMPolicy
    , ProjectsRegionsOperationsGetIAMPolicy

    -- * Request Lenses
    , progipXgafv
    , progipUploadProtocol
    , progipAccessToken
    , progipUploadType
    , progipPayload
    , progipResource
    , progipCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.operations.getIamPolicy@ method which the
-- 'ProjectsRegionsOperationsGetIAMPolicy' request conforms to.
type ProjectsRegionsOperationsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsRegionsOperationsGetIAMPolicy' smart constructor.
data ProjectsRegionsOperationsGetIAMPolicy =
  ProjectsRegionsOperationsGetIAMPolicy'
    { _progipXgafv          :: !(Maybe Xgafv)
    , _progipUploadProtocol :: !(Maybe Text)
    , _progipAccessToken    :: !(Maybe Text)
    , _progipUploadType     :: !(Maybe Text)
    , _progipPayload        :: !GetIAMPolicyRequest
    , _progipResource       :: !Text
    , _progipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsOperationsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'progipXgafv'
--
-- * 'progipUploadProtocol'
--
-- * 'progipAccessToken'
--
-- * 'progipUploadType'
--
-- * 'progipPayload'
--
-- * 'progipResource'
--
-- * 'progipCallback'
projectsRegionsOperationsGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'progipPayload'
    -> Text -- ^ 'progipResource'
    -> ProjectsRegionsOperationsGetIAMPolicy
projectsRegionsOperationsGetIAMPolicy pProgipPayload_ pProgipResource_ =
  ProjectsRegionsOperationsGetIAMPolicy'
    { _progipXgafv = Nothing
    , _progipUploadProtocol = Nothing
    , _progipAccessToken = Nothing
    , _progipUploadType = Nothing
    , _progipPayload = pProgipPayload_
    , _progipResource = pProgipResource_
    , _progipCallback = Nothing
    }


-- | V1 error format.
progipXgafv :: Lens' ProjectsRegionsOperationsGetIAMPolicy (Maybe Xgafv)
progipXgafv
  = lens _progipXgafv (\ s a -> s{_progipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
progipUploadProtocol :: Lens' ProjectsRegionsOperationsGetIAMPolicy (Maybe Text)
progipUploadProtocol
  = lens _progipUploadProtocol
      (\ s a -> s{_progipUploadProtocol = a})

-- | OAuth access token.
progipAccessToken :: Lens' ProjectsRegionsOperationsGetIAMPolicy (Maybe Text)
progipAccessToken
  = lens _progipAccessToken
      (\ s a -> s{_progipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
progipUploadType :: Lens' ProjectsRegionsOperationsGetIAMPolicy (Maybe Text)
progipUploadType
  = lens _progipUploadType
      (\ s a -> s{_progipUploadType = a})

-- | Multipart request metadata.
progipPayload :: Lens' ProjectsRegionsOperationsGetIAMPolicy GetIAMPolicyRequest
progipPayload
  = lens _progipPayload
      (\ s a -> s{_progipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
progipResource :: Lens' ProjectsRegionsOperationsGetIAMPolicy Text
progipResource
  = lens _progipResource
      (\ s a -> s{_progipResource = a})

-- | JSONP
progipCallback :: Lens' ProjectsRegionsOperationsGetIAMPolicy (Maybe Text)
progipCallback
  = lens _progipCallback
      (\ s a -> s{_progipCallback = a})

instance GoogleRequest
           ProjectsRegionsOperationsGetIAMPolicy
         where
        type Rs ProjectsRegionsOperationsGetIAMPolicy =
             Policy
        type Scopes ProjectsRegionsOperationsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsOperationsGetIAMPolicy'{..}
          = go _progipResource _progipXgafv
              _progipUploadProtocol
              _progipAccessToken
              _progipUploadType
              _progipCallback
              (Just AltJSON)
              _progipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsOperationsGetIAMPolicyResource)
                      mempty
