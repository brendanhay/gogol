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
-- Module      : Network.Google.Resource.Ml.Projects.Operations.Delete
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
-- /See:/ <https://cloud.google.com/ml/ Cloud Machine Learning Engine Reference> for @ml.projects.operations.delete@.
module Network.Google.Resource.Ml.Projects.Operations.Delete
    (
    -- * REST Resource
      ProjectsOperationsDeleteResource

    -- * Creating a Request
    , projectsOperationsDelete
    , ProjectsOperationsDelete

    -- * Request Lenses
    , podXgafv
    , podUploadProtocol
    , podAccessToken
    , podUploadType
    , podName
    , podCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.operations.delete@ method which the
-- 'ProjectsOperationsDelete' request conforms to.
type ProjectsOperationsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobuf__Empty

-- | Deletes a long-running operation. This method indicates that the client
-- is no longer interested in the operation result. It does not cancel the
-- operation. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`.
--
-- /See:/ 'projectsOperationsDelete' smart constructor.
data ProjectsOperationsDelete = ProjectsOperationsDelete'
    { _podXgafv          :: !(Maybe Xgafv)
    , _podUploadProtocol :: !(Maybe Text)
    , _podAccessToken    :: !(Maybe Text)
    , _podUploadType     :: !(Maybe Text)
    , _podName           :: !Text
    , _podCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'podXgafv'
--
-- * 'podUploadProtocol'
--
-- * 'podAccessToken'
--
-- * 'podUploadType'
--
-- * 'podName'
--
-- * 'podCallback'
projectsOperationsDelete
    :: Text -- ^ 'podName'
    -> ProjectsOperationsDelete
projectsOperationsDelete pPodName_ =
    ProjectsOperationsDelete'
    { _podXgafv = Nothing
    , _podUploadProtocol = Nothing
    , _podAccessToken = Nothing
    , _podUploadType = Nothing
    , _podName = pPodName_
    , _podCallback = Nothing
    }

-- | V1 error format.
podXgafv :: Lens' ProjectsOperationsDelete (Maybe Xgafv)
podXgafv = lens _podXgafv (\ s a -> s{_podXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
podUploadProtocol :: Lens' ProjectsOperationsDelete (Maybe Text)
podUploadProtocol
  = lens _podUploadProtocol
      (\ s a -> s{_podUploadProtocol = a})

-- | OAuth access token.
podAccessToken :: Lens' ProjectsOperationsDelete (Maybe Text)
podAccessToken
  = lens _podAccessToken
      (\ s a -> s{_podAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
podUploadType :: Lens' ProjectsOperationsDelete (Maybe Text)
podUploadType
  = lens _podUploadType
      (\ s a -> s{_podUploadType = a})

-- | The name of the operation resource to be deleted.
podName :: Lens' ProjectsOperationsDelete Text
podName = lens _podName (\ s a -> s{_podName = a})

-- | JSONP
podCallback :: Lens' ProjectsOperationsDelete (Maybe Text)
podCallback
  = lens _podCallback (\ s a -> s{_podCallback = a})

instance GoogleRequest ProjectsOperationsDelete where
        type Rs ProjectsOperationsDelete =
             GoogleProtobuf__Empty
        type Scopes ProjectsOperationsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsOperationsDelete'{..}
          = go _podName _podXgafv _podUploadProtocol
              _podAccessToken
              _podUploadType
              _podCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsOperationsDeleteResource)
                      mempty
