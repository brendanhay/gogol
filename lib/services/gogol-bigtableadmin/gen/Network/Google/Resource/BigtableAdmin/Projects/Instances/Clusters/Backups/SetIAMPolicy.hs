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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on a Table resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.setIamPolicy@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsInstancesClustersBackupsSetIAMPolicyResource

    -- * Creating a Request
    , projectsInstancesClustersBackupsSetIAMPolicy
    , ProjectsInstancesClustersBackupsSetIAMPolicy

    -- * Request Lenses
    , picbsipXgafv
    , picbsipUploadProtocol
    , picbsipAccessToken
    , picbsipUploadType
    , picbsipPayload
    , picbsipResource
    , picbsipCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.setIamPolicy@ method which the
-- 'ProjectsInstancesClustersBackupsSetIAMPolicy' request conforms to.
type ProjectsInstancesClustersBackupsSetIAMPolicyResource
     =
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

-- | Sets the access control policy on a Table resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsInstancesClustersBackupsSetIAMPolicy' smart constructor.
data ProjectsInstancesClustersBackupsSetIAMPolicy =
  ProjectsInstancesClustersBackupsSetIAMPolicy'
    { _picbsipXgafv :: !(Maybe Xgafv)
    , _picbsipUploadProtocol :: !(Maybe Text)
    , _picbsipAccessToken :: !(Maybe Text)
    , _picbsipUploadType :: !(Maybe Text)
    , _picbsipPayload :: !SetIAMPolicyRequest
    , _picbsipResource :: !Text
    , _picbsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesClustersBackupsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picbsipXgafv'
--
-- * 'picbsipUploadProtocol'
--
-- * 'picbsipAccessToken'
--
-- * 'picbsipUploadType'
--
-- * 'picbsipPayload'
--
-- * 'picbsipResource'
--
-- * 'picbsipCallback'
projectsInstancesClustersBackupsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'picbsipPayload'
    -> Text -- ^ 'picbsipResource'
    -> ProjectsInstancesClustersBackupsSetIAMPolicy
projectsInstancesClustersBackupsSetIAMPolicy pPicbsipPayload_ pPicbsipResource_ =
  ProjectsInstancesClustersBackupsSetIAMPolicy'
    { _picbsipXgafv = Nothing
    , _picbsipUploadProtocol = Nothing
    , _picbsipAccessToken = Nothing
    , _picbsipUploadType = Nothing
    , _picbsipPayload = pPicbsipPayload_
    , _picbsipResource = pPicbsipResource_
    , _picbsipCallback = Nothing
    }


-- | V1 error format.
picbsipXgafv :: Lens' ProjectsInstancesClustersBackupsSetIAMPolicy (Maybe Xgafv)
picbsipXgafv
  = lens _picbsipXgafv (\ s a -> s{_picbsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picbsipUploadProtocol :: Lens' ProjectsInstancesClustersBackupsSetIAMPolicy (Maybe Text)
picbsipUploadProtocol
  = lens _picbsipUploadProtocol
      (\ s a -> s{_picbsipUploadProtocol = a})

-- | OAuth access token.
picbsipAccessToken :: Lens' ProjectsInstancesClustersBackupsSetIAMPolicy (Maybe Text)
picbsipAccessToken
  = lens _picbsipAccessToken
      (\ s a -> s{_picbsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picbsipUploadType :: Lens' ProjectsInstancesClustersBackupsSetIAMPolicy (Maybe Text)
picbsipUploadType
  = lens _picbsipUploadType
      (\ s a -> s{_picbsipUploadType = a})

-- | Multipart request metadata.
picbsipPayload :: Lens' ProjectsInstancesClustersBackupsSetIAMPolicy SetIAMPolicyRequest
picbsipPayload
  = lens _picbsipPayload
      (\ s a -> s{_picbsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
picbsipResource :: Lens' ProjectsInstancesClustersBackupsSetIAMPolicy Text
picbsipResource
  = lens _picbsipResource
      (\ s a -> s{_picbsipResource = a})

-- | JSONP
picbsipCallback :: Lens' ProjectsInstancesClustersBackupsSetIAMPolicy (Maybe Text)
picbsipCallback
  = lens _picbsipCallback
      (\ s a -> s{_picbsipCallback = a})

instance GoogleRequest
           ProjectsInstancesClustersBackupsSetIAMPolicy
         where
        type Rs ProjectsInstancesClustersBackupsSetIAMPolicy
             = Policy
        type Scopes
               ProjectsInstancesClustersBackupsSetIAMPolicy
             =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesClustersBackupsSetIAMPolicy'{..}
          = go _picbsipResource _picbsipXgafv
              _picbsipUploadProtocol
              _picbsipAccessToken
              _picbsipUploadType
              _picbsipCallback
              (Just AltJSON)
              _picbsipPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesClustersBackupsSetIAMPolicyResource)
                      mempty
