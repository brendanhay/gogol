{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DeploymentManager.Resources.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets information about a single resource.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.resources.get@.
module Network.Google.API.DeploymentManager.Resources.Get
    (
    -- * REST Resource
      ResourcesGetAPI

    -- * Creating a Request
    , resourcesGet'
    , ResourcesGet'

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgProject
    , rgUserIp
    , rgKey
    , rgResource
    , rgOauthToken
    , rgFields
    , rgAlt
    , rgDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for deploymentmanager.resources.get which the
-- 'ResourcesGet'' request conforms to.
type ResourcesGetAPI =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "resources" :>
               Capture "resource" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] Resource

-- | Gets information about a single resource.
--
-- /See:/ 'resourcesGet'' smart constructor.
data ResourcesGet' = ResourcesGet'
    { _rgQuotaUser   :: !(Maybe Text)
    , _rgPrettyPrint :: !Bool
    , _rgProject     :: !Text
    , _rgUserIp      :: !(Maybe Text)
    , _rgKey         :: !(Maybe Text)
    , _rgResource    :: !Text
    , _rgOauthToken  :: !(Maybe Text)
    , _rgFields      :: !(Maybe Text)
    , _rgAlt         :: !Alt
    , _rgDeployment  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgProject'
--
-- * 'rgUserIp'
--
-- * 'rgKey'
--
-- * 'rgResource'
--
-- * 'rgOauthToken'
--
-- * 'rgFields'
--
-- * 'rgAlt'
--
-- * 'rgDeployment'
resourcesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'resource'
    -> Text -- ^ 'deployment'
    -> ResourcesGet'
resourcesGet' pRgProject_ pRgResource_ pRgDeployment_ =
    ResourcesGet'
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgProject = pRgProject_
    , _rgUserIp = Nothing
    , _rgKey = Nothing
    , _rgResource = pRgResource_
    , _rgOauthToken = Nothing
    , _rgFields = Nothing
    , _rgAlt = JSON
    , _rgDeployment = pRgDeployment_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' ResourcesGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' ResourcesGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | The project ID for this request.
rgProject :: Lens' ResourcesGet' Text
rgProject
  = lens _rgProject (\ s a -> s{_rgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIp :: Lens' ResourcesGet' (Maybe Text)
rgUserIp = lens _rgUserIp (\ s a -> s{_rgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' ResourcesGet' (Maybe Text)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | The name of the resource for this request.
rgResource :: Lens' ResourcesGet' Text
rgResource
  = lens _rgResource (\ s a -> s{_rgResource = a})

-- | OAuth 2.0 token for the current user.
rgOauthToken :: Lens' ResourcesGet' (Maybe Text)
rgOauthToken
  = lens _rgOauthToken (\ s a -> s{_rgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' ResourcesGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

-- | Data format for the response.
rgAlt :: Lens' ResourcesGet' Alt
rgAlt = lens _rgAlt (\ s a -> s{_rgAlt = a})

-- | The name of the deployment for this request.
rgDeployment :: Lens' ResourcesGet' Text
rgDeployment
  = lens _rgDeployment (\ s a -> s{_rgDeployment = a})

instance GoogleRequest ResourcesGet' where
        type Rs ResourcesGet' = Resource
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u ResourcesGet'{..}
          = go _rgQuotaUser (Just _rgPrettyPrint) _rgProject
              _rgUserIp
              _rgKey
              _rgResource
              _rgOauthToken
              _rgFields
              (Just _rgAlt)
              _rgDeployment
          where go
                  = clientWithRoute (Proxy :: Proxy ResourcesGetAPI) r
                      u
