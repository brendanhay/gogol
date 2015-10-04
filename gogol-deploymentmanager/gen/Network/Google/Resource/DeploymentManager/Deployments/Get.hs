{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets information about a specific deployment.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerDeploymentsGet@.
module Network.Google.Resource.DeploymentManager.Deployments.Get
    (
    -- * REST Resource
      DeploymentsGetResource

    -- * Creating a Request
    , deploymentsGet'
    , DeploymentsGet'

    -- * Request Lenses
    , dgQuotaUser
    , dgPrettyPrint
    , dgProject
    , dgUserIP
    , dgKey
    , dgOAuthToken
    , dgFields
    , dgDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerDeploymentsGet@ which the
-- 'DeploymentsGet'' request conforms to.
type DeploymentsGetResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Deployment

-- | Gets information about a specific deployment.
--
-- /See:/ 'deploymentsGet'' smart constructor.
data DeploymentsGet' = DeploymentsGet'
    { _dgQuotaUser   :: !(Maybe Text)
    , _dgPrettyPrint :: !Bool
    , _dgProject     :: !Text
    , _dgUserIP      :: !(Maybe Text)
    , _dgKey         :: !(Maybe Key)
    , _dgOAuthToken  :: !(Maybe OAuthToken)
    , _dgFields      :: !(Maybe Text)
    , _dgDeployment  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgQuotaUser'
--
-- * 'dgPrettyPrint'
--
-- * 'dgProject'
--
-- * 'dgUserIP'
--
-- * 'dgKey'
--
-- * 'dgOAuthToken'
--
-- * 'dgFields'
--
-- * 'dgDeployment'
deploymentsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'deployment'
    -> DeploymentsGet'
deploymentsGet' pDgProject_ pDgDeployment_ =
    DeploymentsGet'
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgProject = pDgProject_
    , _dgUserIP = Nothing
    , _dgKey = Nothing
    , _dgOAuthToken = Nothing
    , _dgFields = Nothing
    , _dgDeployment = pDgDeployment_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dgQuotaUser :: Lens' DeploymentsGet' (Maybe Text)
dgQuotaUser
  = lens _dgQuotaUser (\ s a -> s{_dgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dgPrettyPrint :: Lens' DeploymentsGet' Bool
dgPrettyPrint
  = lens _dgPrettyPrint
      (\ s a -> s{_dgPrettyPrint = a})

-- | The project ID for this request.
dgProject :: Lens' DeploymentsGet' Text
dgProject
  = lens _dgProject (\ s a -> s{_dgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dgUserIP :: Lens' DeploymentsGet' (Maybe Text)
dgUserIP = lens _dgUserIP (\ s a -> s{_dgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DeploymentsGet' (Maybe Key)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | OAuth 2.0 token for the current user.
dgOAuthToken :: Lens' DeploymentsGet' (Maybe OAuthToken)
dgOAuthToken
  = lens _dgOAuthToken (\ s a -> s{_dgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DeploymentsGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

-- | The name of the deployment for this request.
dgDeployment :: Lens' DeploymentsGet' Text
dgDeployment
  = lens _dgDeployment (\ s a -> s{_dgDeployment = a})

instance GoogleAuth DeploymentsGet' where
        authKey = dgKey . _Just
        authToken = dgOAuthToken . _Just

instance GoogleRequest DeploymentsGet' where
        type Rs DeploymentsGet' = Deployment
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u DeploymentsGet'{..}
          = go _dgProject _dgDeployment _dgQuotaUser
              (Just _dgPrettyPrint)
              _dgUserIP
              _dgFields
              _dgKey
              _dgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DeploymentsGetResource)
                      r
                      u
