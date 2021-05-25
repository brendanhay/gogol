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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a Table resource. Returns an empty
-- policy if the resource exists but does not have a policy set.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.getIamPolicy@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsInstancesTablesGetIAMPolicyResource

    -- * Creating a Request
    , projectsInstancesTablesGetIAMPolicy
    , ProjectsInstancesTablesGetIAMPolicy

    -- * Request Lenses
    , pitgipXgafv
    , pitgipUploadProtocol
    , pitgipAccessToken
    , pitgipUploadType
    , pitgipPayload
    , pitgipResource
    , pitgipCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.tables.getIamPolicy@ method which the
-- 'ProjectsInstancesTablesGetIAMPolicy' request conforms to.
type ProjectsInstancesTablesGetIAMPolicyResource =
     "v2" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a Table resource. Returns an empty
-- policy if the resource exists but does not have a policy set.
--
-- /See:/ 'projectsInstancesTablesGetIAMPolicy' smart constructor.
data ProjectsInstancesTablesGetIAMPolicy =
  ProjectsInstancesTablesGetIAMPolicy'
    { _pitgipXgafv :: !(Maybe Xgafv)
    , _pitgipUploadProtocol :: !(Maybe Text)
    , _pitgipAccessToken :: !(Maybe Text)
    , _pitgipUploadType :: !(Maybe Text)
    , _pitgipPayload :: !GetIAMPolicyRequest
    , _pitgipResource :: !Text
    , _pitgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesTablesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitgipXgafv'
--
-- * 'pitgipUploadProtocol'
--
-- * 'pitgipAccessToken'
--
-- * 'pitgipUploadType'
--
-- * 'pitgipPayload'
--
-- * 'pitgipResource'
--
-- * 'pitgipCallback'
projectsInstancesTablesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'pitgipPayload'
    -> Text -- ^ 'pitgipResource'
    -> ProjectsInstancesTablesGetIAMPolicy
projectsInstancesTablesGetIAMPolicy pPitgipPayload_ pPitgipResource_ =
  ProjectsInstancesTablesGetIAMPolicy'
    { _pitgipXgafv = Nothing
    , _pitgipUploadProtocol = Nothing
    , _pitgipAccessToken = Nothing
    , _pitgipUploadType = Nothing
    , _pitgipPayload = pPitgipPayload_
    , _pitgipResource = pPitgipResource_
    , _pitgipCallback = Nothing
    }


-- | V1 error format.
pitgipXgafv :: Lens' ProjectsInstancesTablesGetIAMPolicy (Maybe Xgafv)
pitgipXgafv
  = lens _pitgipXgafv (\ s a -> s{_pitgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitgipUploadProtocol :: Lens' ProjectsInstancesTablesGetIAMPolicy (Maybe Text)
pitgipUploadProtocol
  = lens _pitgipUploadProtocol
      (\ s a -> s{_pitgipUploadProtocol = a})

-- | OAuth access token.
pitgipAccessToken :: Lens' ProjectsInstancesTablesGetIAMPolicy (Maybe Text)
pitgipAccessToken
  = lens _pitgipAccessToken
      (\ s a -> s{_pitgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitgipUploadType :: Lens' ProjectsInstancesTablesGetIAMPolicy (Maybe Text)
pitgipUploadType
  = lens _pitgipUploadType
      (\ s a -> s{_pitgipUploadType = a})

-- | Multipart request metadata.
pitgipPayload :: Lens' ProjectsInstancesTablesGetIAMPolicy GetIAMPolicyRequest
pitgipPayload
  = lens _pitgipPayload
      (\ s a -> s{_pitgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pitgipResource :: Lens' ProjectsInstancesTablesGetIAMPolicy Text
pitgipResource
  = lens _pitgipResource
      (\ s a -> s{_pitgipResource = a})

-- | JSONP
pitgipCallback :: Lens' ProjectsInstancesTablesGetIAMPolicy (Maybe Text)
pitgipCallback
  = lens _pitgipCallback
      (\ s a -> s{_pitgipCallback = a})

instance GoogleRequest
           ProjectsInstancesTablesGetIAMPolicy
         where
        type Rs ProjectsInstancesTablesGetIAMPolicy = Policy
        type Scopes ProjectsInstancesTablesGetIAMPolicy =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesTablesGetIAMPolicy'{..}
          = go _pitgipResource _pitgipXgafv
              _pitgipUploadProtocol
              _pitgipAccessToken
              _pitgipUploadType
              _pitgipCallback
              (Just AltJSON)
              _pitgipPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesTablesGetIAMPolicyResource)
                      mempty
