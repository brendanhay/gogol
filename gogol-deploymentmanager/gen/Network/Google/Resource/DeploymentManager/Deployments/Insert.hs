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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.deployments.insert@.
module Network.Google.Resource.DeploymentManager.Deployments.Insert
    (
    -- * REST Resource
      DeploymentsInsertResource

    -- * Creating a Request
    , deploymentsInsert
    , DeploymentsInsert

    -- * Request Lenses
    , diProject
    , diPayload
    , diPreview
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.insert@ method which the
-- 'DeploymentsInsert' request conforms to.
type DeploymentsInsertResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 QueryParam "preview" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Deployment :> Post '[JSON] Operation

-- | Creates a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ 'deploymentsInsert' smart constructor.
data DeploymentsInsert = DeploymentsInsert
    { _diProject :: !Text
    , _diPayload :: !Deployment
    , _diPreview :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diProject'
--
-- * 'diPayload'
--
-- * 'diPreview'
deploymentsInsert
    :: Text -- ^ 'diProject'
    -> Deployment -- ^ 'diPayload'
    -> DeploymentsInsert
deploymentsInsert pDiProject_ pDiPayload_ =
    DeploymentsInsert
    { _diProject = pDiProject_
    , _diPayload = pDiPayload_
    , _diPreview = Nothing
    }

-- | The project ID for this request.
diProject :: Lens' DeploymentsInsert Text
diProject
  = lens _diProject (\ s a -> s{_diProject = a})

-- | Multipart request metadata.
diPayload :: Lens' DeploymentsInsert Deployment
diPayload
  = lens _diPayload (\ s a -> s{_diPayload = a})

-- | If set to true, creates a deployment and creates \"shell\" resources but
-- does not actually instantiate these resources. This allows you to
-- preview what your deployment looks like. After previewing a deployment,
-- you can deploy your resources by making a request with the update()
-- method or you can use the cancelPreview() method to cancel the preview
-- altogether. Note that the deployment will still exist after you cancel
-- the preview and you must separately delete this deployment if you want
-- to remove it.
diPreview :: Lens' DeploymentsInsert (Maybe Bool)
diPreview
  = lens _diPreview (\ s a -> s{_diPreview = a})

instance GoogleRequest DeploymentsInsert where
        type Rs DeploymentsInsert = Operation
        type Scopes DeploymentsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient DeploymentsInsert{..}
          = go _diProject _diPreview (Just AltJSON) _diPayload
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsInsertResource)
                      mempty
