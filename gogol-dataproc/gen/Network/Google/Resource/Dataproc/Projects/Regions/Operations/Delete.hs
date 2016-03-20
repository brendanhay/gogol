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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Operations.Delete
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
-- /See:/ <https://cloud.google.com/dataproc/ Google Cloud Dataproc API Reference> for @dataproc.projects.regions.operations.delete@.
module Network.Google.Resource.Dataproc.Projects.Regions.Operations.Delete
    (
    -- * REST Resource
      ProjectsRegionsOperationsDeleteResource

    -- * Creating a Request
    , projectsRegionsOperationsDelete
    , ProjectsRegionsOperationsDelete

    -- * Request Lenses
    , prodXgafv
    , prodUploadProtocol
    , prodPp
    , prodAccessToken
    , prodUploadType
    , prodBearerToken
    , prodName
    , prodCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.operations.delete@ method which the
-- 'ProjectsRegionsOperationsDelete' request conforms to.
type ProjectsRegionsOperationsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a long-running operation. This method indicates that the client
-- is no longer interested in the operation result. It does not cancel the
-- operation. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`.
--
-- /See:/ 'projectsRegionsOperationsDelete' smart constructor.
data ProjectsRegionsOperationsDelete = ProjectsRegionsOperationsDelete
    { _prodXgafv          :: !(Maybe Text)
    , _prodUploadProtocol :: !(Maybe Text)
    , _prodPp             :: !Bool
    , _prodAccessToken    :: !(Maybe Text)
    , _prodUploadType     :: !(Maybe Text)
    , _prodBearerToken    :: !(Maybe Text)
    , _prodName           :: !Text
    , _prodCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prodXgafv'
--
-- * 'prodUploadProtocol'
--
-- * 'prodPp'
--
-- * 'prodAccessToken'
--
-- * 'prodUploadType'
--
-- * 'prodBearerToken'
--
-- * 'prodName'
--
-- * 'prodCallback'
projectsRegionsOperationsDelete
    :: Text -- ^ 'prodName'
    -> ProjectsRegionsOperationsDelete
projectsRegionsOperationsDelete pProdName_ =
    ProjectsRegionsOperationsDelete
    { _prodXgafv = Nothing
    , _prodUploadProtocol = Nothing
    , _prodPp = True
    , _prodAccessToken = Nothing
    , _prodUploadType = Nothing
    , _prodBearerToken = Nothing
    , _prodName = pProdName_
    , _prodCallback = Nothing
    }

-- | V1 error format.
prodXgafv :: Lens' ProjectsRegionsOperationsDelete (Maybe Text)
prodXgafv
  = lens _prodXgafv (\ s a -> s{_prodXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prodUploadProtocol :: Lens' ProjectsRegionsOperationsDelete (Maybe Text)
prodUploadProtocol
  = lens _prodUploadProtocol
      (\ s a -> s{_prodUploadProtocol = a})

-- | Pretty-print response.
prodPp :: Lens' ProjectsRegionsOperationsDelete Bool
prodPp = lens _prodPp (\ s a -> s{_prodPp = a})

-- | OAuth access token.
prodAccessToken :: Lens' ProjectsRegionsOperationsDelete (Maybe Text)
prodAccessToken
  = lens _prodAccessToken
      (\ s a -> s{_prodAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prodUploadType :: Lens' ProjectsRegionsOperationsDelete (Maybe Text)
prodUploadType
  = lens _prodUploadType
      (\ s a -> s{_prodUploadType = a})

-- | OAuth bearer token.
prodBearerToken :: Lens' ProjectsRegionsOperationsDelete (Maybe Text)
prodBearerToken
  = lens _prodBearerToken
      (\ s a -> s{_prodBearerToken = a})

-- | The name of the operation resource to be deleted.
prodName :: Lens' ProjectsRegionsOperationsDelete Text
prodName = lens _prodName (\ s a -> s{_prodName = a})

-- | JSONP
prodCallback :: Lens' ProjectsRegionsOperationsDelete (Maybe Text)
prodCallback
  = lens _prodCallback (\ s a -> s{_prodCallback = a})

instance GoogleRequest
         ProjectsRegionsOperationsDelete where
        type Rs ProjectsRegionsOperationsDelete = Empty
        requestClient ProjectsRegionsOperationsDelete{..}
          = go _prodName _prodXgafv _prodUploadProtocol
              (Just _prodPp)
              _prodAccessToken
              _prodUploadType
              _prodBearerToken
              _prodCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsOperationsDeleteResource)
                      mempty
