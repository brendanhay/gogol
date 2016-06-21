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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Operations.Get
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
-- /See:/ <https://cloud.google.com/dataproc/ Google Cloud Dataproc API Reference> for @dataproc.projects.regions.operations.get@.
module Network.Google.Resource.Dataproc.Projects.Regions.Operations.Get
    (
    -- * REST Resource
      ProjectsRegionsOperationsGetResource

    -- * Creating a Request
    , projectsRegionsOperationsGet
    , ProjectsRegionsOperationsGet

    -- * Request Lenses
    , progXgafv
    , progUploadProtocol
    , progPp
    , progAccessToken
    , progUploadType
    , progBearerToken
    , progName
    , progCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.operations.get@ method which the
-- 'ProjectsRegionsOperationsGet' request conforms to.
type ProjectsRegionsOperationsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'projectsRegionsOperationsGet' smart constructor.
data ProjectsRegionsOperationsGet = ProjectsRegionsOperationsGet'
    { _progXgafv          :: !(Maybe Text)
    , _progUploadProtocol :: !(Maybe Text)
    , _progPp             :: !Bool
    , _progAccessToken    :: !(Maybe Text)
    , _progUploadType     :: !(Maybe Text)
    , _progBearerToken    :: !(Maybe Text)
    , _progName           :: !Text
    , _progCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'progXgafv'
--
-- * 'progUploadProtocol'
--
-- * 'progPp'
--
-- * 'progAccessToken'
--
-- * 'progUploadType'
--
-- * 'progBearerToken'
--
-- * 'progName'
--
-- * 'progCallback'
projectsRegionsOperationsGet
    :: Text -- ^ 'progName'
    -> ProjectsRegionsOperationsGet
projectsRegionsOperationsGet pProgName_ =
    ProjectsRegionsOperationsGet'
    { _progXgafv = Nothing
    , _progUploadProtocol = Nothing
    , _progPp = True
    , _progAccessToken = Nothing
    , _progUploadType = Nothing
    , _progBearerToken = Nothing
    , _progName = pProgName_
    , _progCallback = Nothing
    }

-- | V1 error format.
progXgafv :: Lens' ProjectsRegionsOperationsGet (Maybe Text)
progXgafv
  = lens _progXgafv (\ s a -> s{_progXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
progUploadProtocol :: Lens' ProjectsRegionsOperationsGet (Maybe Text)
progUploadProtocol
  = lens _progUploadProtocol
      (\ s a -> s{_progUploadProtocol = a})

-- | Pretty-print response.
progPp :: Lens' ProjectsRegionsOperationsGet Bool
progPp = lens _progPp (\ s a -> s{_progPp = a})

-- | OAuth access token.
progAccessToken :: Lens' ProjectsRegionsOperationsGet (Maybe Text)
progAccessToken
  = lens _progAccessToken
      (\ s a -> s{_progAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
progUploadType :: Lens' ProjectsRegionsOperationsGet (Maybe Text)
progUploadType
  = lens _progUploadType
      (\ s a -> s{_progUploadType = a})

-- | OAuth bearer token.
progBearerToken :: Lens' ProjectsRegionsOperationsGet (Maybe Text)
progBearerToken
  = lens _progBearerToken
      (\ s a -> s{_progBearerToken = a})

-- | The name of the operation resource.
progName :: Lens' ProjectsRegionsOperationsGet Text
progName = lens _progName (\ s a -> s{_progName = a})

-- | JSONP
progCallback :: Lens' ProjectsRegionsOperationsGet (Maybe Text)
progCallback
  = lens _progCallback (\ s a -> s{_progCallback = a})

instance GoogleRequest ProjectsRegionsOperationsGet
         where
        type Rs ProjectsRegionsOperationsGet = Operation
        type Scopes ProjectsRegionsOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsOperationsGet'{..}
          = go _progName _progXgafv _progUploadProtocol
              (Just _progPp)
              _progAccessToken
              _progUploadType
              _progBearerToken
              _progCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRegionsOperationsGetResource)
                      mempty
