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
-- Module      : Network.Google.Resource.File.Projects.Locations.Operations.Delete
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
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.operations.delete@.
module Network.Google.Resource.File.Projects.Locations.Operations.Delete
    (
    -- * REST Resource
      ProjectsLocationsOperationsDeleteResource

    -- * Creating a Request
    , projectsLocationsOperationsDelete
    , ProjectsLocationsOperationsDelete

    -- * Request Lenses
    , plodXgafv
    , plodUploadProtocol
    , plodAccessToken
    , plodUploadType
    , plodName
    , plodCallback
    ) where

import           Network.Google.File.Types
import           Network.Google.Prelude

-- | A resource alias for @file.projects.locations.operations.delete@ method which the
-- 'ProjectsLocationsOperationsDelete' request conforms to.
type ProjectsLocationsOperationsDeleteResource =
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
-- /See:/ 'projectsLocationsOperationsDelete' smart constructor.
data ProjectsLocationsOperationsDelete =
  ProjectsLocationsOperationsDelete'
    { _plodXgafv          :: !(Maybe Xgafv)
    , _plodUploadProtocol :: !(Maybe Text)
    , _plodAccessToken    :: !(Maybe Text)
    , _plodUploadType     :: !(Maybe Text)
    , _plodName           :: !Text
    , _plodCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plodXgafv'
--
-- * 'plodUploadProtocol'
--
-- * 'plodAccessToken'
--
-- * 'plodUploadType'
--
-- * 'plodName'
--
-- * 'plodCallback'
projectsLocationsOperationsDelete
    :: Text -- ^ 'plodName'
    -> ProjectsLocationsOperationsDelete
projectsLocationsOperationsDelete pPlodName_ =
  ProjectsLocationsOperationsDelete'
    { _plodXgafv = Nothing
    , _plodUploadProtocol = Nothing
    , _plodAccessToken = Nothing
    , _plodUploadType = Nothing
    , _plodName = pPlodName_
    , _plodCallback = Nothing
    }


-- | V1 error format.
plodXgafv :: Lens' ProjectsLocationsOperationsDelete (Maybe Xgafv)
plodXgafv
  = lens _plodXgafv (\ s a -> s{_plodXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plodUploadProtocol :: Lens' ProjectsLocationsOperationsDelete (Maybe Text)
plodUploadProtocol
  = lens _plodUploadProtocol
      (\ s a -> s{_plodUploadProtocol = a})

-- | OAuth access token.
plodAccessToken :: Lens' ProjectsLocationsOperationsDelete (Maybe Text)
plodAccessToken
  = lens _plodAccessToken
      (\ s a -> s{_plodAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plodUploadType :: Lens' ProjectsLocationsOperationsDelete (Maybe Text)
plodUploadType
  = lens _plodUploadType
      (\ s a -> s{_plodUploadType = a})

-- | The name of the operation resource to be deleted.
plodName :: Lens' ProjectsLocationsOperationsDelete Text
plodName = lens _plodName (\ s a -> s{_plodName = a})

-- | JSONP
plodCallback :: Lens' ProjectsLocationsOperationsDelete (Maybe Text)
plodCallback
  = lens _plodCallback (\ s a -> s{_plodCallback = a})

instance GoogleRequest
           ProjectsLocationsOperationsDelete
         where
        type Rs ProjectsLocationsOperationsDelete = Empty
        type Scopes ProjectsLocationsOperationsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsOperationsDelete'{..}
          = go _plodName _plodXgafv _plodUploadProtocol
              _plodAccessToken
              _plodUploadType
              _plodCallback
              (Just AltJSON)
              fileService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsOperationsDeleteResource)
                      mempty
