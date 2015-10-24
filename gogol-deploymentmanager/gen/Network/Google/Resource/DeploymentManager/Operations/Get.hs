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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specific operation.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.operations.get@.
module Network.Google.Resource.DeploymentManager.Operations.Get
    (
    -- * REST Resource
      OperationsGetResource

    -- * Creating a Request
    , operationsGet
    , OperationsGet

    -- * Request Lenses
    , ogProject
    , ogOperation
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

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
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets information about a specific operation.
--
-- /See:/ 'operationsGet' smart constructor.
data OperationsGet = OperationsGet
    { _ogProject   :: !Text
    , _ogOperation :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogProject'
--
-- * 'ogOperation'
operationsGet
    :: Text -- ^ 'ogProject'
    -> Text -- ^ 'ogOperation'
    -> OperationsGet
operationsGet pOgProject_ pOgOperation_ =
    OperationsGet
    { _ogProject = pOgProject_
    , _ogOperation = pOgOperation_
    }

-- | The project ID for this request.
ogProject :: Lens' OperationsGet Text
ogProject
  = lens _ogProject (\ s a -> s{_ogProject = a})

-- | The name of the operation for this request.
ogOperation :: Lens' OperationsGet Text
ogOperation
  = lens _ogOperation (\ s a -> s{_ogOperation = a})

instance GoogleRequest OperationsGet where
        type Rs OperationsGet = Operation
        requestClient OperationsGet{..}
          = go _ogProject _ogOperation (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy OperationsGetResource)
                      mempty
