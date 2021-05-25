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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a Table resource. Returns an empty
-- policy if the resource exists but does not have a policy set.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.getIamPolicy@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsInstancesClustersBackupsGetIAMPolicyResource

    -- * Creating a Request
    , projectsInstancesClustersBackupsGetIAMPolicy
    , ProjectsInstancesClustersBackupsGetIAMPolicy

    -- * Request Lenses
    , picbgipXgafv
    , picbgipUploadProtocol
    , picbgipAccessToken
    , picbgipUploadType
    , picbgipPayload
    , picbgipResource
    , picbgipCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.getIamPolicy@ method which the
-- 'ProjectsInstancesClustersBackupsGetIAMPolicy' request conforms to.
type ProjectsInstancesClustersBackupsGetIAMPolicyResource
     =
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
-- /See:/ 'projectsInstancesClustersBackupsGetIAMPolicy' smart constructor.
data ProjectsInstancesClustersBackupsGetIAMPolicy =
  ProjectsInstancesClustersBackupsGetIAMPolicy'
    { _picbgipXgafv :: !(Maybe Xgafv)
    , _picbgipUploadProtocol :: !(Maybe Text)
    , _picbgipAccessToken :: !(Maybe Text)
    , _picbgipUploadType :: !(Maybe Text)
    , _picbgipPayload :: !GetIAMPolicyRequest
    , _picbgipResource :: !Text
    , _picbgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesClustersBackupsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picbgipXgafv'
--
-- * 'picbgipUploadProtocol'
--
-- * 'picbgipAccessToken'
--
-- * 'picbgipUploadType'
--
-- * 'picbgipPayload'
--
-- * 'picbgipResource'
--
-- * 'picbgipCallback'
projectsInstancesClustersBackupsGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'picbgipPayload'
    -> Text -- ^ 'picbgipResource'
    -> ProjectsInstancesClustersBackupsGetIAMPolicy
projectsInstancesClustersBackupsGetIAMPolicy pPicbgipPayload_ pPicbgipResource_ =
  ProjectsInstancesClustersBackupsGetIAMPolicy'
    { _picbgipXgafv = Nothing
    , _picbgipUploadProtocol = Nothing
    , _picbgipAccessToken = Nothing
    , _picbgipUploadType = Nothing
    , _picbgipPayload = pPicbgipPayload_
    , _picbgipResource = pPicbgipResource_
    , _picbgipCallback = Nothing
    }


-- | V1 error format.
picbgipXgafv :: Lens' ProjectsInstancesClustersBackupsGetIAMPolicy (Maybe Xgafv)
picbgipXgafv
  = lens _picbgipXgafv (\ s a -> s{_picbgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picbgipUploadProtocol :: Lens' ProjectsInstancesClustersBackupsGetIAMPolicy (Maybe Text)
picbgipUploadProtocol
  = lens _picbgipUploadProtocol
      (\ s a -> s{_picbgipUploadProtocol = a})

-- | OAuth access token.
picbgipAccessToken :: Lens' ProjectsInstancesClustersBackupsGetIAMPolicy (Maybe Text)
picbgipAccessToken
  = lens _picbgipAccessToken
      (\ s a -> s{_picbgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picbgipUploadType :: Lens' ProjectsInstancesClustersBackupsGetIAMPolicy (Maybe Text)
picbgipUploadType
  = lens _picbgipUploadType
      (\ s a -> s{_picbgipUploadType = a})

-- | Multipart request metadata.
picbgipPayload :: Lens' ProjectsInstancesClustersBackupsGetIAMPolicy GetIAMPolicyRequest
picbgipPayload
  = lens _picbgipPayload
      (\ s a -> s{_picbgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
picbgipResource :: Lens' ProjectsInstancesClustersBackupsGetIAMPolicy Text
picbgipResource
  = lens _picbgipResource
      (\ s a -> s{_picbgipResource = a})

-- | JSONP
picbgipCallback :: Lens' ProjectsInstancesClustersBackupsGetIAMPolicy (Maybe Text)
picbgipCallback
  = lens _picbgipCallback
      (\ s a -> s{_picbgipCallback = a})

instance GoogleRequest
           ProjectsInstancesClustersBackupsGetIAMPolicy
         where
        type Rs ProjectsInstancesClustersBackupsGetIAMPolicy
             = Policy
        type Scopes
               ProjectsInstancesClustersBackupsGetIAMPolicy
             =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesClustersBackupsGetIAMPolicy'{..}
          = go _picbgipResource _picbgipXgafv
              _picbgipUploadProtocol
              _picbgipAccessToken
              _picbgipUploadType
              _picbgipCallback
              (Just AltJSON)
              _picbgipPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesClustersBackupsGetIAMPolicyResource)
                      mempty
