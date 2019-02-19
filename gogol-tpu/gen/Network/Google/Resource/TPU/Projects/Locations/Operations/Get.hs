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
-- Module      : Network.Google.Resource.TPU.Projects.Locations.Operations.Get
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
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.operations.get@.
module Network.Google.Resource.TPU.Projects.Locations.Operations.Get
    (
    -- * REST Resource
      ProjectsLocationsOperationsGetResource

    -- * Creating a Request
    , projectsLocationsOperationsGet
    , ProjectsLocationsOperationsGet

    -- * Request Lenses
    , plogXgafv
    , plogUploadProtocol
    , plogAccessToken
    , plogUploadType
    , plogName
    , plogCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.operations.get@ method which the
-- 'ProjectsLocationsOperationsGet' request conforms to.
type ProjectsLocationsOperationsGetResource =
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
-- /See:/ 'projectsLocationsOperationsGet' smart constructor.
data ProjectsLocationsOperationsGet =
  ProjectsLocationsOperationsGet'
    { _plogXgafv          :: !(Maybe Xgafv)
    , _plogUploadProtocol :: !(Maybe Text)
    , _plogAccessToken    :: !(Maybe Text)
    , _plogUploadType     :: !(Maybe Text)
    , _plogName           :: !Text
    , _plogCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plogXgafv'
--
-- * 'plogUploadProtocol'
--
-- * 'plogAccessToken'
--
-- * 'plogUploadType'
--
-- * 'plogName'
--
-- * 'plogCallback'
projectsLocationsOperationsGet
    :: Text -- ^ 'plogName'
    -> ProjectsLocationsOperationsGet
projectsLocationsOperationsGet pPlogName_ =
  ProjectsLocationsOperationsGet'
    { _plogXgafv = Nothing
    , _plogUploadProtocol = Nothing
    , _plogAccessToken = Nothing
    , _plogUploadType = Nothing
    , _plogName = pPlogName_
    , _plogCallback = Nothing
    }

-- | V1 error format.
plogXgafv :: Lens' ProjectsLocationsOperationsGet (Maybe Xgafv)
plogXgafv
  = lens _plogXgafv (\ s a -> s{_plogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plogUploadProtocol :: Lens' ProjectsLocationsOperationsGet (Maybe Text)
plogUploadProtocol
  = lens _plogUploadProtocol
      (\ s a -> s{_plogUploadProtocol = a})

-- | OAuth access token.
plogAccessToken :: Lens' ProjectsLocationsOperationsGet (Maybe Text)
plogAccessToken
  = lens _plogAccessToken
      (\ s a -> s{_plogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plogUploadType :: Lens' ProjectsLocationsOperationsGet (Maybe Text)
plogUploadType
  = lens _plogUploadType
      (\ s a -> s{_plogUploadType = a})

-- | The name of the operation resource.
plogName :: Lens' ProjectsLocationsOperationsGet Text
plogName = lens _plogName (\ s a -> s{_plogName = a})

-- | JSONP
plogCallback :: Lens' ProjectsLocationsOperationsGet (Maybe Text)
plogCallback
  = lens _plogCallback (\ s a -> s{_plogCallback = a})

instance GoogleRequest ProjectsLocationsOperationsGet
         where
        type Rs ProjectsLocationsOperationsGet = Operation
        type Scopes ProjectsLocationsOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsOperationsGet'{..}
          = go _plogName _plogXgafv _plogUploadProtocol
              _plogAccessToken
              _plogUploadType
              _plogCallback
              (Just AltJSON)
              tPUService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsOperationsGetResource)
                      mempty
