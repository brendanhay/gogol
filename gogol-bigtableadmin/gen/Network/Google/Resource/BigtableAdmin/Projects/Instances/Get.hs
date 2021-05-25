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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.get@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Get
    (
    -- * REST Resource
      ProjectsInstancesGetResource

    -- * Creating a Request
    , projectsInstancesGet
    , ProjectsInstancesGet

    -- * Request Lenses
    , pigXgafv
    , pigUploadProtocol
    , pigAccessToken
    , pigUploadType
    , pigName
    , pigCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.get@ method which the
-- 'ProjectsInstancesGet' request conforms to.
type ProjectsInstancesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Instance

-- | Gets information about an instance.
--
-- /See:/ 'projectsInstancesGet' smart constructor.
data ProjectsInstancesGet =
  ProjectsInstancesGet'
    { _pigXgafv :: !(Maybe Xgafv)
    , _pigUploadProtocol :: !(Maybe Text)
    , _pigAccessToken :: !(Maybe Text)
    , _pigUploadType :: !(Maybe Text)
    , _pigName :: !Text
    , _pigCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pigXgafv'
--
-- * 'pigUploadProtocol'
--
-- * 'pigAccessToken'
--
-- * 'pigUploadType'
--
-- * 'pigName'
--
-- * 'pigCallback'
projectsInstancesGet
    :: Text -- ^ 'pigName'
    -> ProjectsInstancesGet
projectsInstancesGet pPigName_ =
  ProjectsInstancesGet'
    { _pigXgafv = Nothing
    , _pigUploadProtocol = Nothing
    , _pigAccessToken = Nothing
    , _pigUploadType = Nothing
    , _pigName = pPigName_
    , _pigCallback = Nothing
    }


-- | V1 error format.
pigXgafv :: Lens' ProjectsInstancesGet (Maybe Xgafv)
pigXgafv = lens _pigXgafv (\ s a -> s{_pigXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pigUploadProtocol :: Lens' ProjectsInstancesGet (Maybe Text)
pigUploadProtocol
  = lens _pigUploadProtocol
      (\ s a -> s{_pigUploadProtocol = a})

-- | OAuth access token.
pigAccessToken :: Lens' ProjectsInstancesGet (Maybe Text)
pigAccessToken
  = lens _pigAccessToken
      (\ s a -> s{_pigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pigUploadType :: Lens' ProjectsInstancesGet (Maybe Text)
pigUploadType
  = lens _pigUploadType
      (\ s a -> s{_pigUploadType = a})

-- | Required. The unique name of the requested instance. Values are of the
-- form \`projects\/{project}\/instances\/{instance}\`.
pigName :: Lens' ProjectsInstancesGet Text
pigName = lens _pigName (\ s a -> s{_pigName = a})

-- | JSONP
pigCallback :: Lens' ProjectsInstancesGet (Maybe Text)
pigCallback
  = lens _pigCallback (\ s a -> s{_pigCallback = a})

instance GoogleRequest ProjectsInstancesGet where
        type Rs ProjectsInstancesGet = Instance
        type Scopes ProjectsInstancesGet =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsInstancesGet'{..}
          = go _pigName _pigXgafv _pigUploadProtocol
              _pigAccessToken
              _pigUploadType
              _pigCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstancesGetResource)
                      mempty
