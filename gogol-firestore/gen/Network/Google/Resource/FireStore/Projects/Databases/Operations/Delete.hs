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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Operations.Delete
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
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.operations.delete@.
module Network.Google.Resource.FireStore.Projects.Databases.Operations.Delete
    (
    -- * REST Resource
      ProjectsDatabasesOperationsDeleteResource

    -- * Creating a Request
    , projectsDatabasesOperationsDelete
    , ProjectsDatabasesOperationsDelete

    -- * Request Lenses
    , pdodXgafv
    , pdodUploadProtocol
    , pdodAccessToken
    , pdodUploadType
    , pdodName
    , pdodCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.operations.delete@ method which the
-- 'ProjectsDatabasesOperationsDelete' request conforms to.
type ProjectsDatabasesOperationsDeleteResource =
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
-- /See:/ 'projectsDatabasesOperationsDelete' smart constructor.
data ProjectsDatabasesOperationsDelete =
  ProjectsDatabasesOperationsDelete'
    { _pdodXgafv :: !(Maybe Xgafv)
    , _pdodUploadProtocol :: !(Maybe Text)
    , _pdodAccessToken :: !(Maybe Text)
    , _pdodUploadType :: !(Maybe Text)
    , _pdodName :: !Text
    , _pdodCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdodXgafv'
--
-- * 'pdodUploadProtocol'
--
-- * 'pdodAccessToken'
--
-- * 'pdodUploadType'
--
-- * 'pdodName'
--
-- * 'pdodCallback'
projectsDatabasesOperationsDelete
    :: Text -- ^ 'pdodName'
    -> ProjectsDatabasesOperationsDelete
projectsDatabasesOperationsDelete pPdodName_ =
  ProjectsDatabasesOperationsDelete'
    { _pdodXgafv = Nothing
    , _pdodUploadProtocol = Nothing
    , _pdodAccessToken = Nothing
    , _pdodUploadType = Nothing
    , _pdodName = pPdodName_
    , _pdodCallback = Nothing
    }


-- | V1 error format.
pdodXgafv :: Lens' ProjectsDatabasesOperationsDelete (Maybe Xgafv)
pdodXgafv
  = lens _pdodXgafv (\ s a -> s{_pdodXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdodUploadProtocol :: Lens' ProjectsDatabasesOperationsDelete (Maybe Text)
pdodUploadProtocol
  = lens _pdodUploadProtocol
      (\ s a -> s{_pdodUploadProtocol = a})

-- | OAuth access token.
pdodAccessToken :: Lens' ProjectsDatabasesOperationsDelete (Maybe Text)
pdodAccessToken
  = lens _pdodAccessToken
      (\ s a -> s{_pdodAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdodUploadType :: Lens' ProjectsDatabasesOperationsDelete (Maybe Text)
pdodUploadType
  = lens _pdodUploadType
      (\ s a -> s{_pdodUploadType = a})

-- | The name of the operation resource to be deleted.
pdodName :: Lens' ProjectsDatabasesOperationsDelete Text
pdodName = lens _pdodName (\ s a -> s{_pdodName = a})

-- | JSONP
pdodCallback :: Lens' ProjectsDatabasesOperationsDelete (Maybe Text)
pdodCallback
  = lens _pdodCallback (\ s a -> s{_pdodCallback = a})

instance GoogleRequest
           ProjectsDatabasesOperationsDelete
         where
        type Rs ProjectsDatabasesOperationsDelete = Empty
        type Scopes ProjectsDatabasesOperationsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesOperationsDelete'{..}
          = go _pdodName _pdodXgafv _pdodUploadProtocol
              _pdodAccessToken
              _pdodUploadType
              _pdodCallback
              (Just AltJSON)
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesOperationsDeleteResource)
                      mempty
