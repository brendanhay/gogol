{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DeploymentManager.Manifests.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets information about a specific manifest.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.manifests.get@.
module Network.Google.API.DeploymentManager.Manifests.Get
    (
    -- * REST Resource
      ManifestsGetAPI

    -- * Creating a Request
    , manifestsGet'
    , ManifestsGet'

    -- * Request Lenses
    , mgQuotaUser
    , mgPrettyPrint
    , mgProject
    , mgUserIp
    , mgKey
    , mgManifest
    , mgOauthToken
    , mgFields
    , mgAlt
    , mgDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for deploymentmanager.manifests.get which the
-- 'ManifestsGet'' request conforms to.
type ManifestsGetAPI =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "manifests" :>
               Capture "manifest" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] Manifest

-- | Gets information about a specific manifest.
--
-- /See:/ 'manifestsGet'' smart constructor.
data ManifestsGet' = ManifestsGet'
    { _mgQuotaUser   :: !(Maybe Text)
    , _mgPrettyPrint :: !Bool
    , _mgProject     :: !Text
    , _mgUserIp      :: !(Maybe Text)
    , _mgKey         :: !(Maybe Text)
    , _mgManifest    :: !Text
    , _mgOauthToken  :: !(Maybe Text)
    , _mgFields      :: !(Maybe Text)
    , _mgAlt         :: !Alt
    , _mgDeployment  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'mgUserIp'
--
-- * 'mgKey'
--
-- * 'mgManifest'
--
-- * 'mgOauthToken'
--
-- * 'mgFields'
--
-- * 'mgAlt'
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
    , _mgUserIp = Nothing
    , _mgKey = Nothing
    , _mgManifest = pMgManifest_
    , _mgOauthToken = Nothing
    , _mgFields = Nothing
    , _mgAlt = JSON
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
mgUserIp :: Lens' ManifestsGet' (Maybe Text)
mgUserIp = lens _mgUserIp (\ s a -> s{_mgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgKey :: Lens' ManifestsGet' (Maybe Text)
mgKey = lens _mgKey (\ s a -> s{_mgKey = a})

-- | The name of the manifest for this request.
mgManifest :: Lens' ManifestsGet' Text
mgManifest
  = lens _mgManifest (\ s a -> s{_mgManifest = a})

-- | OAuth 2.0 token for the current user.
mgOauthToken :: Lens' ManifestsGet' (Maybe Text)
mgOauthToken
  = lens _mgOauthToken (\ s a -> s{_mgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgFields :: Lens' ManifestsGet' (Maybe Text)
mgFields = lens _mgFields (\ s a -> s{_mgFields = a})

-- | Data format for the response.
mgAlt :: Lens' ManifestsGet' Alt
mgAlt = lens _mgAlt (\ s a -> s{_mgAlt = a})

-- | The name of the deployment for this request.
mgDeployment :: Lens' ManifestsGet' Text
mgDeployment
  = lens _mgDeployment (\ s a -> s{_mgDeployment = a})

instance GoogleRequest ManifestsGet' where
        type Rs ManifestsGet' = Manifest
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u ManifestsGet'{..}
          = go _mgQuotaUser (Just _mgPrettyPrint) _mgProject
              _mgUserIp
              _mgKey
              _mgManifest
              _mgOauthToken
              _mgFields
              (Just _mgAlt)
              _mgDeployment
          where go
                  = clientWithRoute (Proxy :: Proxy ManifestsGetAPI) r
                      u
