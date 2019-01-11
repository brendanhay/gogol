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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on an instance resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.setIamPolicy@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsInstancesSetIAMPolicyResource

    -- * Creating a Request
    , projectsInstancesSetIAMPolicy
    , ProjectsInstancesSetIAMPolicy

    -- * Request Lenses
    , pisipXgafv
    , pisipUploadProtocol
    , pisipAccessToken
    , pisipUploadType
    , pisipPayload
    , pisipResource
    , pisipCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.setIamPolicy@ method which the
-- 'ProjectsInstancesSetIAMPolicy' request conforms to.
type ProjectsInstancesSetIAMPolicyResource =
     "v2" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on an instance resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsInstancesSetIAMPolicy' smart constructor.
data ProjectsInstancesSetIAMPolicy = ProjectsInstancesSetIAMPolicy'
    { _pisipXgafv          :: !(Maybe Xgafv)
    , _pisipUploadProtocol :: !(Maybe Text)
    , _pisipAccessToken    :: !(Maybe Text)
    , _pisipUploadType     :: !(Maybe Text)
    , _pisipPayload        :: !SetIAMPolicyRequest
    , _pisipResource       :: !Text
    , _pisipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pisipXgafv'
--
-- * 'pisipUploadProtocol'
--
-- * 'pisipAccessToken'
--
-- * 'pisipUploadType'
--
-- * 'pisipPayload'
--
-- * 'pisipResource'
--
-- * 'pisipCallback'
projectsInstancesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pisipPayload'
    -> Text -- ^ 'pisipResource'
    -> ProjectsInstancesSetIAMPolicy
projectsInstancesSetIAMPolicy pPisipPayload_ pPisipResource_ =
    ProjectsInstancesSetIAMPolicy'
    { _pisipXgafv = Nothing
    , _pisipUploadProtocol = Nothing
    , _pisipAccessToken = Nothing
    , _pisipUploadType = Nothing
    , _pisipPayload = pPisipPayload_
    , _pisipResource = pPisipResource_
    , _pisipCallback = Nothing
    }

-- | V1 error format.
pisipXgafv :: Lens' ProjectsInstancesSetIAMPolicy (Maybe Xgafv)
pisipXgafv
  = lens _pisipXgafv (\ s a -> s{_pisipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pisipUploadProtocol :: Lens' ProjectsInstancesSetIAMPolicy (Maybe Text)
pisipUploadProtocol
  = lens _pisipUploadProtocol
      (\ s a -> s{_pisipUploadProtocol = a})

-- | OAuth access token.
pisipAccessToken :: Lens' ProjectsInstancesSetIAMPolicy (Maybe Text)
pisipAccessToken
  = lens _pisipAccessToken
      (\ s a -> s{_pisipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pisipUploadType :: Lens' ProjectsInstancesSetIAMPolicy (Maybe Text)
pisipUploadType
  = lens _pisipUploadType
      (\ s a -> s{_pisipUploadType = a})

-- | Multipart request metadata.
pisipPayload :: Lens' ProjectsInstancesSetIAMPolicy SetIAMPolicyRequest
pisipPayload
  = lens _pisipPayload (\ s a -> s{_pisipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pisipResource :: Lens' ProjectsInstancesSetIAMPolicy Text
pisipResource
  = lens _pisipResource
      (\ s a -> s{_pisipResource = a})

-- | JSONP
pisipCallback :: Lens' ProjectsInstancesSetIAMPolicy (Maybe Text)
pisipCallback
  = lens _pisipCallback
      (\ s a -> s{_pisipCallback = a})

instance GoogleRequest ProjectsInstancesSetIAMPolicy
         where
        type Rs ProjectsInstancesSetIAMPolicy = Policy
        type Scopes ProjectsInstancesSetIAMPolicy =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesSetIAMPolicy'{..}
          = go _pisipResource _pisipXgafv _pisipUploadProtocol
              _pisipAccessToken
              _pisipUploadType
              _pisipCallback
              (Just AltJSON)
              _pisipPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesSetIAMPolicyResource)
                      mempty
