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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.PartialUpdateInstance
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Partially updates an instance within a project. This method can modify
-- all fields of an Instance and is the preferred way to update an
-- Instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.partialUpdateInstance@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.PartialUpdateInstance
    (
    -- * REST Resource
      ProjectsInstancesPartialUpdateInstanceResource

    -- * Creating a Request
    , projectsInstancesPartialUpdateInstance
    , ProjectsInstancesPartialUpdateInstance

    -- * Request Lenses
    , pipuiXgafv
    , pipuiUploadProtocol
    , pipuiUpdateMask
    , pipuiAccessToken
    , pipuiUploadType
    , pipuiPayload
    , pipuiName
    , pipuiCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.partialUpdateInstance@ method which the
-- 'ProjectsInstancesPartialUpdateInstance' request conforms to.
type ProjectsInstancesPartialUpdateInstanceResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Instance :> Patch '[JSON] Operation

-- | Partially updates an instance within a project. This method can modify
-- all fields of an Instance and is the preferred way to update an
-- Instance.
--
-- /See:/ 'projectsInstancesPartialUpdateInstance' smart constructor.
data ProjectsInstancesPartialUpdateInstance =
  ProjectsInstancesPartialUpdateInstance'
    { _pipuiXgafv :: !(Maybe Xgafv)
    , _pipuiUploadProtocol :: !(Maybe Text)
    , _pipuiUpdateMask :: !(Maybe GFieldMask)
    , _pipuiAccessToken :: !(Maybe Text)
    , _pipuiUploadType :: !(Maybe Text)
    , _pipuiPayload :: !Instance
    , _pipuiName :: !Text
    , _pipuiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesPartialUpdateInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pipuiXgafv'
--
-- * 'pipuiUploadProtocol'
--
-- * 'pipuiUpdateMask'
--
-- * 'pipuiAccessToken'
--
-- * 'pipuiUploadType'
--
-- * 'pipuiPayload'
--
-- * 'pipuiName'
--
-- * 'pipuiCallback'
projectsInstancesPartialUpdateInstance
    :: Instance -- ^ 'pipuiPayload'
    -> Text -- ^ 'pipuiName'
    -> ProjectsInstancesPartialUpdateInstance
projectsInstancesPartialUpdateInstance pPipuiPayload_ pPipuiName_ =
  ProjectsInstancesPartialUpdateInstance'
    { _pipuiXgafv = Nothing
    , _pipuiUploadProtocol = Nothing
    , _pipuiUpdateMask = Nothing
    , _pipuiAccessToken = Nothing
    , _pipuiUploadType = Nothing
    , _pipuiPayload = pPipuiPayload_
    , _pipuiName = pPipuiName_
    , _pipuiCallback = Nothing
    }


-- | V1 error format.
pipuiXgafv :: Lens' ProjectsInstancesPartialUpdateInstance (Maybe Xgafv)
pipuiXgafv
  = lens _pipuiXgafv (\ s a -> s{_pipuiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pipuiUploadProtocol :: Lens' ProjectsInstancesPartialUpdateInstance (Maybe Text)
pipuiUploadProtocol
  = lens _pipuiUploadProtocol
      (\ s a -> s{_pipuiUploadProtocol = a})

-- | Required. The subset of Instance fields which should be replaced. Must
-- be explicitly set.
pipuiUpdateMask :: Lens' ProjectsInstancesPartialUpdateInstance (Maybe GFieldMask)
pipuiUpdateMask
  = lens _pipuiUpdateMask
      (\ s a -> s{_pipuiUpdateMask = a})

-- | OAuth access token.
pipuiAccessToken :: Lens' ProjectsInstancesPartialUpdateInstance (Maybe Text)
pipuiAccessToken
  = lens _pipuiAccessToken
      (\ s a -> s{_pipuiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pipuiUploadType :: Lens' ProjectsInstancesPartialUpdateInstance (Maybe Text)
pipuiUploadType
  = lens _pipuiUploadType
      (\ s a -> s{_pipuiUploadType = a})

-- | Multipart request metadata.
pipuiPayload :: Lens' ProjectsInstancesPartialUpdateInstance Instance
pipuiPayload
  = lens _pipuiPayload (\ s a -> s{_pipuiPayload = a})

-- | The unique name of the instance. Values are of the form
-- \`projects\/{project}\/instances\/a-z+[a-z0-9]\`.
pipuiName :: Lens' ProjectsInstancesPartialUpdateInstance Text
pipuiName
  = lens _pipuiName (\ s a -> s{_pipuiName = a})

-- | JSONP
pipuiCallback :: Lens' ProjectsInstancesPartialUpdateInstance (Maybe Text)
pipuiCallback
  = lens _pipuiCallback
      (\ s a -> s{_pipuiCallback = a})

instance GoogleRequest
           ProjectsInstancesPartialUpdateInstance
         where
        type Rs ProjectsInstancesPartialUpdateInstance =
             Operation
        type Scopes ProjectsInstancesPartialUpdateInstance =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesPartialUpdateInstance'{..}
          = go _pipuiName _pipuiXgafv _pipuiUploadProtocol
              _pipuiUpdateMask
              _pipuiAccessToken
              _pipuiUploadType
              _pipuiCallback
              (Just AltJSON)
              _pipuiPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesPartialUpdateInstanceResource)
                      mempty
