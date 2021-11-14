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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Operations.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.operations.get@.
module Network.Google.Resource.Spanner.Projects.Instances.Operations.Get
    (
    -- * REST Resource
      ProjectsInstancesOperationsGetResource

    -- * Creating a Request
    , projectsInstancesOperationsGet
    , ProjectsInstancesOperationsGet

    -- * Request Lenses
    , piogXgafv
    , piogUploadProtocol
    , piogAccessToken
    , piogUploadType
    , piogName
    , piogCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.operations.get@ method which the
-- 'ProjectsInstancesOperationsGet' request conforms to.
type ProjectsInstancesOperationsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'projectsInstancesOperationsGet' smart constructor.
data ProjectsInstancesOperationsGet =
  ProjectsInstancesOperationsGet'
    { _piogXgafv :: !(Maybe Xgafv)
    , _piogUploadProtocol :: !(Maybe Text)
    , _piogAccessToken :: !(Maybe Text)
    , _piogUploadType :: !(Maybe Text)
    , _piogName :: !Text
    , _piogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piogXgafv'
--
-- * 'piogUploadProtocol'
--
-- * 'piogAccessToken'
--
-- * 'piogUploadType'
--
-- * 'piogName'
--
-- * 'piogCallback'
projectsInstancesOperationsGet
    :: Text -- ^ 'piogName'
    -> ProjectsInstancesOperationsGet
projectsInstancesOperationsGet pPiogName_ =
  ProjectsInstancesOperationsGet'
    { _piogXgafv = Nothing
    , _piogUploadProtocol = Nothing
    , _piogAccessToken = Nothing
    , _piogUploadType = Nothing
    , _piogName = pPiogName_
    , _piogCallback = Nothing
    }


-- | V1 error format.
piogXgafv :: Lens' ProjectsInstancesOperationsGet (Maybe Xgafv)
piogXgafv
  = lens _piogXgafv (\ s a -> s{_piogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piogUploadProtocol :: Lens' ProjectsInstancesOperationsGet (Maybe Text)
piogUploadProtocol
  = lens _piogUploadProtocol
      (\ s a -> s{_piogUploadProtocol = a})

-- | OAuth access token.
piogAccessToken :: Lens' ProjectsInstancesOperationsGet (Maybe Text)
piogAccessToken
  = lens _piogAccessToken
      (\ s a -> s{_piogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piogUploadType :: Lens' ProjectsInstancesOperationsGet (Maybe Text)
piogUploadType
  = lens _piogUploadType
      (\ s a -> s{_piogUploadType = a})

-- | The name of the operation resource.
piogName :: Lens' ProjectsInstancesOperationsGet Text
piogName = lens _piogName (\ s a -> s{_piogName = a})

-- | JSONP
piogCallback :: Lens' ProjectsInstancesOperationsGet (Maybe Text)
piogCallback
  = lens _piogCallback (\ s a -> s{_piogCallback = a})

instance GoogleRequest ProjectsInstancesOperationsGet
         where
        type Rs ProjectsInstancesOperationsGet = Operation
        type Scopes ProjectsInstancesOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesOperationsGet'{..}
          = go _piogName _piogXgafv _piogUploadProtocol
              _piogAccessToken
              _piogUploadType
              _piogCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesOperationsGetResource)
                      mempty
