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
-- Module      : Network.Google.Resource.DeploymentManager.Operations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specific operation.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.operations.get@.
module Network.Google.Resource.DeploymentManager.Operations.Get
    (
    -- * REST Resource
      OperationsGetResource

    -- * Creating a Request
    , operationsGet
    , OperationsGet

    -- * Request Lenses
    , ogXgafv
    , ogUploadProtocol
    , ogProject
    , ogOperation
    , ogAccessToken
    , ogUploadType
    , ogCallback
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.operations.get@ method which the
-- 'OperationsGet' request conforms to.
type OperationsGetResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "operations" :>
                 Capture "operation" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets information about a specific operation.
--
-- /See:/ 'operationsGet' smart constructor.
data OperationsGet =
  OperationsGet'
    { _ogXgafv :: !(Maybe Xgafv)
    , _ogUploadProtocol :: !(Maybe Text)
    , _ogProject :: !Text
    , _ogOperation :: !Text
    , _ogAccessToken :: !(Maybe Text)
    , _ogUploadType :: !(Maybe Text)
    , _ogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogXgafv'
--
-- * 'ogUploadProtocol'
--
-- * 'ogProject'
--
-- * 'ogOperation'
--
-- * 'ogAccessToken'
--
-- * 'ogUploadType'
--
-- * 'ogCallback'
operationsGet
    :: Text -- ^ 'ogProject'
    -> Text -- ^ 'ogOperation'
    -> OperationsGet
operationsGet pOgProject_ pOgOperation_ =
  OperationsGet'
    { _ogXgafv = Nothing
    , _ogUploadProtocol = Nothing
    , _ogProject = pOgProject_
    , _ogOperation = pOgOperation_
    , _ogAccessToken = Nothing
    , _ogUploadType = Nothing
    , _ogCallback = Nothing
    }


-- | V1 error format.
ogXgafv :: Lens' OperationsGet (Maybe Xgafv)
ogXgafv = lens _ogXgafv (\ s a -> s{_ogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogUploadProtocol :: Lens' OperationsGet (Maybe Text)
ogUploadProtocol
  = lens _ogUploadProtocol
      (\ s a -> s{_ogUploadProtocol = a})

-- | The project ID for this request.
ogProject :: Lens' OperationsGet Text
ogProject
  = lens _ogProject (\ s a -> s{_ogProject = a})

-- | The name of the operation for this request.
ogOperation :: Lens' OperationsGet Text
ogOperation
  = lens _ogOperation (\ s a -> s{_ogOperation = a})

-- | OAuth access token.
ogAccessToken :: Lens' OperationsGet (Maybe Text)
ogAccessToken
  = lens _ogAccessToken
      (\ s a -> s{_ogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogUploadType :: Lens' OperationsGet (Maybe Text)
ogUploadType
  = lens _ogUploadType (\ s a -> s{_ogUploadType = a})

-- | JSONP
ogCallback :: Lens' OperationsGet (Maybe Text)
ogCallback
  = lens _ogCallback (\ s a -> s{_ogCallback = a})

instance GoogleRequest OperationsGet where
        type Rs OperationsGet = Operation
        type Scopes OperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly"]
        requestClient OperationsGet'{..}
          = go _ogProject _ogOperation _ogXgafv
              _ogUploadProtocol
              _ogAccessToken
              _ogUploadType
              _ogCallback
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy OperationsGetResource)
                      mempty
