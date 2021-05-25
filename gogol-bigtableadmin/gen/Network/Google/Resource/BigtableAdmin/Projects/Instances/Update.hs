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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an instance within a project. This method updates only the
-- display name and type for an Instance. To update other Instance
-- properties, such as labels, use PartialUpdateInstance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.update@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Update
    (
    -- * REST Resource
      ProjectsInstancesUpdateResource

    -- * Creating a Request
    , projectsInstancesUpdate
    , ProjectsInstancesUpdate

    -- * Request Lenses
    , piuXgafv
    , piuUploadProtocol
    , piuAccessToken
    , piuUploadType
    , piuPayload
    , piuName
    , piuCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.update@ method which the
-- 'ProjectsInstancesUpdate' request conforms to.
type ProjectsInstancesUpdateResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Instance :> Put '[JSON] Instance

-- | Updates an instance within a project. This method updates only the
-- display name and type for an Instance. To update other Instance
-- properties, such as labels, use PartialUpdateInstance.
--
-- /See:/ 'projectsInstancesUpdate' smart constructor.
data ProjectsInstancesUpdate =
  ProjectsInstancesUpdate'
    { _piuXgafv :: !(Maybe Xgafv)
    , _piuUploadProtocol :: !(Maybe Text)
    , _piuAccessToken :: !(Maybe Text)
    , _piuUploadType :: !(Maybe Text)
    , _piuPayload :: !Instance
    , _piuName :: !Text
    , _piuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piuXgafv'
--
-- * 'piuUploadProtocol'
--
-- * 'piuAccessToken'
--
-- * 'piuUploadType'
--
-- * 'piuPayload'
--
-- * 'piuName'
--
-- * 'piuCallback'
projectsInstancesUpdate
    :: Instance -- ^ 'piuPayload'
    -> Text -- ^ 'piuName'
    -> ProjectsInstancesUpdate
projectsInstancesUpdate pPiuPayload_ pPiuName_ =
  ProjectsInstancesUpdate'
    { _piuXgafv = Nothing
    , _piuUploadProtocol = Nothing
    , _piuAccessToken = Nothing
    , _piuUploadType = Nothing
    , _piuPayload = pPiuPayload_
    , _piuName = pPiuName_
    , _piuCallback = Nothing
    }


-- | V1 error format.
piuXgafv :: Lens' ProjectsInstancesUpdate (Maybe Xgafv)
piuXgafv = lens _piuXgafv (\ s a -> s{_piuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piuUploadProtocol :: Lens' ProjectsInstancesUpdate (Maybe Text)
piuUploadProtocol
  = lens _piuUploadProtocol
      (\ s a -> s{_piuUploadProtocol = a})

-- | OAuth access token.
piuAccessToken :: Lens' ProjectsInstancesUpdate (Maybe Text)
piuAccessToken
  = lens _piuAccessToken
      (\ s a -> s{_piuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piuUploadType :: Lens' ProjectsInstancesUpdate (Maybe Text)
piuUploadType
  = lens _piuUploadType
      (\ s a -> s{_piuUploadType = a})

-- | Multipart request metadata.
piuPayload :: Lens' ProjectsInstancesUpdate Instance
piuPayload
  = lens _piuPayload (\ s a -> s{_piuPayload = a})

-- | The unique name of the instance. Values are of the form
-- \`projects\/{project}\/instances\/a-z+[a-z0-9]\`.
piuName :: Lens' ProjectsInstancesUpdate Text
piuName = lens _piuName (\ s a -> s{_piuName = a})

-- | JSONP
piuCallback :: Lens' ProjectsInstancesUpdate (Maybe Text)
piuCallback
  = lens _piuCallback (\ s a -> s{_piuCallback = a})

instance GoogleRequest ProjectsInstancesUpdate where
        type Rs ProjectsInstancesUpdate = Instance
        type Scopes ProjectsInstancesUpdate =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesUpdate'{..}
          = go _piuName _piuXgafv _piuUploadProtocol
              _piuAccessToken
              _piuUploadType
              _piuCallback
              (Just AltJSON)
              _piuPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstancesUpdateResource)
                      mempty
