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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on a Table resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.setIamPolicy@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsInstancesTablesSetIAMPolicyResource

    -- * Creating a Request
    , projectsInstancesTablesSetIAMPolicy
    , ProjectsInstancesTablesSetIAMPolicy

    -- * Request Lenses
    , pitsipXgafv
    , pitsipUploadProtocol
    , pitsipAccessToken
    , pitsipUploadType
    , pitsipPayload
    , pitsipResource
    , pitsipCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.tables.setIamPolicy@ method which the
-- 'ProjectsInstancesTablesSetIAMPolicy' request conforms to.
type ProjectsInstancesTablesSetIAMPolicyResource =
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
-- /See:/ 'projectsInstancesTablesSetIAMPolicy' smart constructor.
data ProjectsInstancesTablesSetIAMPolicy =
  ProjectsInstancesTablesSetIAMPolicy'
    { _pitsipXgafv :: !(Maybe Xgafv)
    , _pitsipUploadProtocol :: !(Maybe Text)
    , _pitsipAccessToken :: !(Maybe Text)
    , _pitsipUploadType :: !(Maybe Text)
    , _pitsipPayload :: !SetIAMPolicyRequest
    , _pitsipResource :: !Text
    , _pitsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesTablesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitsipXgafv'
--
-- * 'pitsipUploadProtocol'
--
-- * 'pitsipAccessToken'
--
-- * 'pitsipUploadType'
--
-- * 'pitsipPayload'
--
-- * 'pitsipResource'
--
-- * 'pitsipCallback'
projectsInstancesTablesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pitsipPayload'
    -> Text -- ^ 'pitsipResource'
    -> ProjectsInstancesTablesSetIAMPolicy
projectsInstancesTablesSetIAMPolicy pPitsipPayload_ pPitsipResource_ =
  ProjectsInstancesTablesSetIAMPolicy'
    { _pitsipXgafv = Nothing
    , _pitsipUploadProtocol = Nothing
    , _pitsipAccessToken = Nothing
    , _pitsipUploadType = Nothing
    , _pitsipPayload = pPitsipPayload_
    , _pitsipResource = pPitsipResource_
    , _pitsipCallback = Nothing
    }


-- | V1 error format.
pitsipXgafv :: Lens' ProjectsInstancesTablesSetIAMPolicy (Maybe Xgafv)
pitsipXgafv
  = lens _pitsipXgafv (\ s a -> s{_pitsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitsipUploadProtocol :: Lens' ProjectsInstancesTablesSetIAMPolicy (Maybe Text)
pitsipUploadProtocol
  = lens _pitsipUploadProtocol
      (\ s a -> s{_pitsipUploadProtocol = a})

-- | OAuth access token.
pitsipAccessToken :: Lens' ProjectsInstancesTablesSetIAMPolicy (Maybe Text)
pitsipAccessToken
  = lens _pitsipAccessToken
      (\ s a -> s{_pitsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitsipUploadType :: Lens' ProjectsInstancesTablesSetIAMPolicy (Maybe Text)
pitsipUploadType
  = lens _pitsipUploadType
      (\ s a -> s{_pitsipUploadType = a})

-- | Multipart request metadata.
pitsipPayload :: Lens' ProjectsInstancesTablesSetIAMPolicy SetIAMPolicyRequest
pitsipPayload
  = lens _pitsipPayload
      (\ s a -> s{_pitsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pitsipResource :: Lens' ProjectsInstancesTablesSetIAMPolicy Text
pitsipResource
  = lens _pitsipResource
      (\ s a -> s{_pitsipResource = a})

-- | JSONP
pitsipCallback :: Lens' ProjectsInstancesTablesSetIAMPolicy (Maybe Text)
pitsipCallback
  = lens _pitsipCallback
      (\ s a -> s{_pitsipCallback = a})

instance GoogleRequest
           ProjectsInstancesTablesSetIAMPolicy
         where
        type Rs ProjectsInstancesTablesSetIAMPolicy = Policy
        type Scopes ProjectsInstancesTablesSetIAMPolicy =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesTablesSetIAMPolicy'{..}
          = go _pitsipResource _pitsipXgafv
              _pitsipUploadProtocol
              _pitsipAccessToken
              _pitsipUploadType
              _pitsipCallback
              (Just AltJSON)
              _pitsipPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesTablesSetIAMPolicyResource)
                      mempty
