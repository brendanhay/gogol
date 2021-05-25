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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Operations.Delete
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
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.operations.delete@.
module Network.Google.Resource.Spanner.Projects.Instances.Operations.Delete
    (
    -- * REST Resource
      ProjectsInstancesOperationsDeleteResource

    -- * Creating a Request
    , projectsInstancesOperationsDelete
    , ProjectsInstancesOperationsDelete

    -- * Request Lenses
    , piodXgafv
    , piodUploadProtocol
    , piodAccessToken
    , piodUploadType
    , piodName
    , piodCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.operations.delete@ method which the
-- 'ProjectsInstancesOperationsDelete' request conforms to.
type ProjectsInstancesOperationsDeleteResource =
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
-- /See:/ 'projectsInstancesOperationsDelete' smart constructor.
data ProjectsInstancesOperationsDelete =
  ProjectsInstancesOperationsDelete'
    { _piodXgafv :: !(Maybe Xgafv)
    , _piodUploadProtocol :: !(Maybe Text)
    , _piodAccessToken :: !(Maybe Text)
    , _piodUploadType :: !(Maybe Text)
    , _piodName :: !Text
    , _piodCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piodXgafv'
--
-- * 'piodUploadProtocol'
--
-- * 'piodAccessToken'
--
-- * 'piodUploadType'
--
-- * 'piodName'
--
-- * 'piodCallback'
projectsInstancesOperationsDelete
    :: Text -- ^ 'piodName'
    -> ProjectsInstancesOperationsDelete
projectsInstancesOperationsDelete pPiodName_ =
  ProjectsInstancesOperationsDelete'
    { _piodXgafv = Nothing
    , _piodUploadProtocol = Nothing
    , _piodAccessToken = Nothing
    , _piodUploadType = Nothing
    , _piodName = pPiodName_
    , _piodCallback = Nothing
    }


-- | V1 error format.
piodXgafv :: Lens' ProjectsInstancesOperationsDelete (Maybe Xgafv)
piodXgafv
  = lens _piodXgafv (\ s a -> s{_piodXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piodUploadProtocol :: Lens' ProjectsInstancesOperationsDelete (Maybe Text)
piodUploadProtocol
  = lens _piodUploadProtocol
      (\ s a -> s{_piodUploadProtocol = a})

-- | OAuth access token.
piodAccessToken :: Lens' ProjectsInstancesOperationsDelete (Maybe Text)
piodAccessToken
  = lens _piodAccessToken
      (\ s a -> s{_piodAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piodUploadType :: Lens' ProjectsInstancesOperationsDelete (Maybe Text)
piodUploadType
  = lens _piodUploadType
      (\ s a -> s{_piodUploadType = a})

-- | The name of the operation resource to be deleted.
piodName :: Lens' ProjectsInstancesOperationsDelete Text
piodName = lens _piodName (\ s a -> s{_piodName = a})

-- | JSONP
piodCallback :: Lens' ProjectsInstancesOperationsDelete (Maybe Text)
piodCallback
  = lens _piodCallback (\ s a -> s{_piodCallback = a})

instance GoogleRequest
           ProjectsInstancesOperationsDelete
         where
        type Rs ProjectsInstancesOperationsDelete = Empty
        type Scopes ProjectsInstancesOperationsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesOperationsDelete'{..}
          = go _piodName _piodXgafv _piodUploadProtocol
              _piodAccessToken
              _piodUploadType
              _piodCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesOperationsDeleteResource)
                      mempty
