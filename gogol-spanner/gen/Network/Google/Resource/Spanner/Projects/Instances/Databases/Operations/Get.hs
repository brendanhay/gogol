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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.operations.get@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Get
    (
    -- * REST Resource
      ProjectsInstancesDatabasesOperationsGetResource

    -- * Creating a Request
    , projectsInstancesDatabasesOperationsGet
    , ProjectsInstancesDatabasesOperationsGet

    -- * Request Lenses
    , pidogXgafv
    , pidogUploadProtocol
    , pidogAccessToken
    , pidogUploadType
    , pidogName
    , pidogCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.operations.get@ method which the
-- 'ProjectsInstancesDatabasesOperationsGet' request conforms to.
type ProjectsInstancesDatabasesOperationsGetResource
     =
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
-- /See:/ 'projectsInstancesDatabasesOperationsGet' smart constructor.
data ProjectsInstancesDatabasesOperationsGet =
  ProjectsInstancesDatabasesOperationsGet'
    { _pidogXgafv          :: !(Maybe Xgafv)
    , _pidogUploadProtocol :: !(Maybe Text)
    , _pidogAccessToken    :: !(Maybe Text)
    , _pidogUploadType     :: !(Maybe Text)
    , _pidogName           :: !Text
    , _pidogCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidogXgafv'
--
-- * 'pidogUploadProtocol'
--
-- * 'pidogAccessToken'
--
-- * 'pidogUploadType'
--
-- * 'pidogName'
--
-- * 'pidogCallback'
projectsInstancesDatabasesOperationsGet
    :: Text -- ^ 'pidogName'
    -> ProjectsInstancesDatabasesOperationsGet
projectsInstancesDatabasesOperationsGet pPidogName_ =
  ProjectsInstancesDatabasesOperationsGet'
    { _pidogXgafv = Nothing
    , _pidogUploadProtocol = Nothing
    , _pidogAccessToken = Nothing
    , _pidogUploadType = Nothing
    , _pidogName = pPidogName_
    , _pidogCallback = Nothing
    }


-- | V1 error format.
pidogXgafv :: Lens' ProjectsInstancesDatabasesOperationsGet (Maybe Xgafv)
pidogXgafv
  = lens _pidogXgafv (\ s a -> s{_pidogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidogUploadProtocol :: Lens' ProjectsInstancesDatabasesOperationsGet (Maybe Text)
pidogUploadProtocol
  = lens _pidogUploadProtocol
      (\ s a -> s{_pidogUploadProtocol = a})

-- | OAuth access token.
pidogAccessToken :: Lens' ProjectsInstancesDatabasesOperationsGet (Maybe Text)
pidogAccessToken
  = lens _pidogAccessToken
      (\ s a -> s{_pidogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidogUploadType :: Lens' ProjectsInstancesDatabasesOperationsGet (Maybe Text)
pidogUploadType
  = lens _pidogUploadType
      (\ s a -> s{_pidogUploadType = a})

-- | The name of the operation resource.
pidogName :: Lens' ProjectsInstancesDatabasesOperationsGet Text
pidogName
  = lens _pidogName (\ s a -> s{_pidogName = a})

-- | JSONP
pidogCallback :: Lens' ProjectsInstancesDatabasesOperationsGet (Maybe Text)
pidogCallback
  = lens _pidogCallback
      (\ s a -> s{_pidogCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesOperationsGet
         where
        type Rs ProjectsInstancesDatabasesOperationsGet =
             Operation
        type Scopes ProjectsInstancesDatabasesOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesDatabasesOperationsGet'{..}
          = go _pidogName _pidogXgafv _pidogUploadProtocol
              _pidogAccessToken
              _pidogUploadType
              _pidogCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesOperationsGetResource)
                      mempty
