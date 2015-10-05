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
-- Module      : Network.Google.Resource.DeploymentManager.Resources.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets information about a single resource.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerResourcesGet@.
module Network.Google.Resource.DeploymentManager.Resources.Get
    (
    -- * REST Resource
      ResourcesGetResource

    -- * Creating a Request
    , resourcesGet'
    , ResourcesGet'

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgProject
    , rgUserIP
    , rgKey
    , rgResource
    , rgOAuthToken
    , rgFields
    , rgDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerResourcesGet@ which the
-- 'ResourcesGet'' request conforms to.
type ResourcesGetResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "resources" :>
               Capture "resource" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Resource

-- | Gets information about a single resource.
--
-- /See:/ 'resourcesGet'' smart constructor.
data ResourcesGet' = ResourcesGet'
    { _rgQuotaUser   :: !(Maybe Text)
    , _rgPrettyPrint :: !Bool
    , _rgProject     :: !Text
    , _rgUserIP      :: !(Maybe Text)
    , _rgKey         :: !(Maybe Key)
    , _rgResource    :: !Text
    , _rgOAuthToken  :: !(Maybe OAuthToken)
    , _rgFields      :: !(Maybe Text)
    , _rgDeployment  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rgUserIP'
--
-- * 'rgKey'
--
-- * 'rgResource'
--
-- * 'rgOAuthToken'
--
-- * 'rgFields'
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
    , _rgUserIP = Nothing
    , _rgKey = Nothing
    , _rgResource = pRgResource_
    , _rgOAuthToken = Nothing
    , _rgFields = Nothing
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
rgUserIP :: Lens' ResourcesGet' (Maybe Text)
rgUserIP = lens _rgUserIP (\ s a -> s{_rgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' ResourcesGet' (Maybe Key)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | The name of the resource for this request.
rgResource :: Lens' ResourcesGet' Text
rgResource
  = lens _rgResource (\ s a -> s{_rgResource = a})

-- | OAuth 2.0 token for the current user.
rgOAuthToken :: Lens' ResourcesGet' (Maybe OAuthToken)
rgOAuthToken
  = lens _rgOAuthToken (\ s a -> s{_rgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' ResourcesGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

-- | The name of the deployment for this request.
rgDeployment :: Lens' ResourcesGet' Text
rgDeployment
  = lens _rgDeployment (\ s a -> s{_rgDeployment = a})

instance GoogleAuth ResourcesGet' where
        authKey = rgKey . _Just
        authToken = rgOAuthToken . _Just

instance GoogleRequest ResourcesGet' where
        type Rs ResourcesGet' = Resource
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u ResourcesGet'{..}
          = go _rgProject _rgDeployment _rgResource
              _rgQuotaUser
              (Just _rgPrettyPrint)
              _rgUserIP
              _rgFields
              _rgKey
              _rgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ResourcesGetResource)
                      r
                      u
