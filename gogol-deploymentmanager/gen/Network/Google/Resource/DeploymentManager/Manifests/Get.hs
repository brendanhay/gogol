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
-- Module      : Network.Google.Resource.DeploymentManager.Manifests.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets information about a specific manifest.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerManifestsGet@.
module Network.Google.Resource.DeploymentManager.Manifests.Get
    (
    -- * REST Resource
      ManifestsGetResource

    -- * Creating a Request
    , manifestsGet'
    , ManifestsGet'

    -- * Request Lenses
    , mgProject
    , mgManifest
    , mgDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerManifestsGet@ method which the
-- 'ManifestsGet'' request conforms to.
type ManifestsGetResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "manifests" :>
               Capture "manifest" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Manifest

-- | Gets information about a specific manifest.
--
-- /See:/ 'manifestsGet'' smart constructor.
data ManifestsGet' = ManifestsGet'
    { _mgProject    :: !Text
    , _mgManifest   :: !Text
    , _mgDeployment :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManifestsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgProject'
--
-- * 'mgManifest'
--
-- * 'mgDeployment'
manifestsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'manifest'
    -> Text -- ^ 'deployment'
    -> ManifestsGet'
manifestsGet' pMgProject_ pMgManifest_ pMgDeployment_ =
    ManifestsGet'
    { _mgProject = pMgProject_
    , _mgManifest = pMgManifest_
    , _mgDeployment = pMgDeployment_
    }

-- | The project ID for this request.
mgProject :: Lens' ManifestsGet' Text
mgProject
  = lens _mgProject (\ s a -> s{_mgProject = a})

-- | The name of the manifest for this request.
mgManifest :: Lens' ManifestsGet' Text
mgManifest
  = lens _mgManifest (\ s a -> s{_mgManifest = a})

-- | The name of the deployment for this request.
mgDeployment :: Lens' ManifestsGet' Text
mgDeployment
  = lens _mgDeployment (\ s a -> s{_mgDeployment = a})

instance GoogleRequest ManifestsGet' where
        type Rs ManifestsGet' = Manifest
        requestClient ManifestsGet'{..}
          = go _mgProject _mgDeployment _mgManifest
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy ManifestsGetResource)
                      mempty
