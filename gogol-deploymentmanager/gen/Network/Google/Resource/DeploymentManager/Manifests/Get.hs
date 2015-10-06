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
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerManifestsGet@.
module Network.Google.Resource.DeploymentManager.Manifests.Get
    (
    -- * REST Resource
      ManifestsGetResource

    -- * Creating a Request
    , manifestsGet'
    , ManifestsGet'

    -- * Request Lenses
    , mgQuotaUser
    , mgPrettyPrint
    , mgProject
    , mgUserIP
    , mgKey
    , mgManifest
    , mgOAuthToken
    , mgFields
    , mgDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerManifestsGet@ which the
-- 'ManifestsGet'' request conforms to.
type ManifestsGetResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "manifests" :>
               Capture "manifest" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Manifest

-- | Gets information about a specific manifest.
--
-- /See:/ 'manifestsGet'' smart constructor.
data ManifestsGet' = ManifestsGet'
    { _mgQuotaUser   :: !(Maybe Text)
    , _mgPrettyPrint :: !Bool
    , _mgProject     :: !Text
    , _mgUserIP      :: !(Maybe Text)
    , _mgKey         :: !(Maybe AuthKey)
    , _mgManifest    :: !Text
    , _mgOAuthToken  :: !(Maybe OAuthToken)
    , _mgFields      :: !(Maybe Text)
    , _mgDeployment  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManifestsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgQuotaUser'
--
-- * 'mgPrettyPrint'
--
-- * 'mgProject'
--
-- * 'mgUserIP'
--
-- * 'mgKey'
--
-- * 'mgManifest'
--
-- * 'mgOAuthToken'
--
-- * 'mgFields'
--
-- * 'mgDeployment'
manifestsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'manifest'
    -> Text -- ^ 'deployment'
    -> ManifestsGet'
manifestsGet' pMgProject_ pMgManifest_ pMgDeployment_ =
    ManifestsGet'
    { _mgQuotaUser = Nothing
    , _mgPrettyPrint = True
    , _mgProject = pMgProject_
    , _mgUserIP = Nothing
    , _mgKey = Nothing
    , _mgManifest = pMgManifest_
    , _mgOAuthToken = Nothing
    , _mgFields = Nothing
    , _mgDeployment = pMgDeployment_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgQuotaUser :: Lens' ManifestsGet' (Maybe Text)
mgQuotaUser
  = lens _mgQuotaUser (\ s a -> s{_mgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mgPrettyPrint :: Lens' ManifestsGet' Bool
mgPrettyPrint
  = lens _mgPrettyPrint
      (\ s a -> s{_mgPrettyPrint = a})

-- | The project ID for this request.
mgProject :: Lens' ManifestsGet' Text
mgProject
  = lens _mgProject (\ s a -> s{_mgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgUserIP :: Lens' ManifestsGet' (Maybe Text)
mgUserIP = lens _mgUserIP (\ s a -> s{_mgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgKey :: Lens' ManifestsGet' (Maybe AuthKey)
mgKey = lens _mgKey (\ s a -> s{_mgKey = a})

-- | The name of the manifest for this request.
mgManifest :: Lens' ManifestsGet' Text
mgManifest
  = lens _mgManifest (\ s a -> s{_mgManifest = a})

-- | OAuth 2.0 token for the current user.
mgOAuthToken :: Lens' ManifestsGet' (Maybe OAuthToken)
mgOAuthToken
  = lens _mgOAuthToken (\ s a -> s{_mgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgFields :: Lens' ManifestsGet' (Maybe Text)
mgFields = lens _mgFields (\ s a -> s{_mgFields = a})

-- | The name of the deployment for this request.
mgDeployment :: Lens' ManifestsGet' Text
mgDeployment
  = lens _mgDeployment (\ s a -> s{_mgDeployment = a})

instance GoogleAuth ManifestsGet' where
        authKey = mgKey . _Just
        authToken = mgOAuthToken . _Just

instance GoogleRequest ManifestsGet' where
        type Rs ManifestsGet' = Manifest
        request = requestWith deploymentManagerRequest
        requestWith rq ManifestsGet'{..}
          = go _mgProject _mgDeployment _mgManifest
              _mgQuotaUser
              (Just _mgPrettyPrint)
              _mgUserIP
              _mgFields
              _mgKey
              _mgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ManifestsGetResource)
                      rq
