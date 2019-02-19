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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a long-running operation. This method indicates that the client
-- is no longer interested in the operation result. It does not cancel the
-- operation. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.operations.delete@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Operations.Delete
    (
    -- * REST Resource
      ProjectsInstancesDatabasesOperationsDeleteResource

    -- * Creating a Request
    , projectsInstancesDatabasesOperationsDelete
    , ProjectsInstancesDatabasesOperationsDelete

    -- * Request Lenses
    , pidodXgafv
    , pidodUploadProtocol
    , pidodAccessToken
    , pidodUploadType
    , pidodName
    , pidodCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.operations.delete@ method which the
-- 'ProjectsInstancesDatabasesOperationsDelete' request conforms to.
type ProjectsInstancesDatabasesOperationsDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a long-running operation. This method indicates that the client
-- is no longer interested in the operation result. It does not cancel the
-- operation. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`.
--
-- /See:/ 'projectsInstancesDatabasesOperationsDelete' smart constructor.
data ProjectsInstancesDatabasesOperationsDelete =
  ProjectsInstancesDatabasesOperationsDelete'
    { _pidodXgafv          :: !(Maybe Xgafv)
    , _pidodUploadProtocol :: !(Maybe Text)
    , _pidodAccessToken    :: !(Maybe Text)
    , _pidodUploadType     :: !(Maybe Text)
    , _pidodName           :: !Text
    , _pidodCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsInstancesDatabasesOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidodXgafv'
--
-- * 'pidodUploadProtocol'
--
-- * 'pidodAccessToken'
--
-- * 'pidodUploadType'
--
-- * 'pidodName'
--
-- * 'pidodCallback'
projectsInstancesDatabasesOperationsDelete
    :: Text -- ^ 'pidodName'
    -> ProjectsInstancesDatabasesOperationsDelete
projectsInstancesDatabasesOperationsDelete pPidodName_ =
  ProjectsInstancesDatabasesOperationsDelete'
    { _pidodXgafv = Nothing
    , _pidodUploadProtocol = Nothing
    , _pidodAccessToken = Nothing
    , _pidodUploadType = Nothing
    , _pidodName = pPidodName_
    , _pidodCallback = Nothing
    }

-- | V1 error format.
pidodXgafv :: Lens' ProjectsInstancesDatabasesOperationsDelete (Maybe Xgafv)
pidodXgafv
  = lens _pidodXgafv (\ s a -> s{_pidodXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidodUploadProtocol :: Lens' ProjectsInstancesDatabasesOperationsDelete (Maybe Text)
pidodUploadProtocol
  = lens _pidodUploadProtocol
      (\ s a -> s{_pidodUploadProtocol = a})

-- | OAuth access token.
pidodAccessToken :: Lens' ProjectsInstancesDatabasesOperationsDelete (Maybe Text)
pidodAccessToken
  = lens _pidodAccessToken
      (\ s a -> s{_pidodAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidodUploadType :: Lens' ProjectsInstancesDatabasesOperationsDelete (Maybe Text)
pidodUploadType
  = lens _pidodUploadType
      (\ s a -> s{_pidodUploadType = a})

-- | The name of the operation resource to be deleted.
pidodName :: Lens' ProjectsInstancesDatabasesOperationsDelete Text
pidodName
  = lens _pidodName (\ s a -> s{_pidodName = a})

-- | JSONP
pidodCallback :: Lens' ProjectsInstancesDatabasesOperationsDelete (Maybe Text)
pidodCallback
  = lens _pidodCallback
      (\ s a -> s{_pidodCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesOperationsDelete
         where
        type Rs ProjectsInstancesDatabasesOperationsDelete =
             Empty
        type Scopes
               ProjectsInstancesDatabasesOperationsDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesDatabasesOperationsDelete'{..}
          = go _pidodName _pidodXgafv _pidodUploadProtocol
              _pidodAccessToken
              _pidodUploadType
              _pidodCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesOperationsDeleteResource)
                      mempty
