{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a deployment and all of the resources in the deployment.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentmanagerDeploymentsDelete@.
module Network.Google.Resource.DeploymentManager.Deployments.Delete
    (
    -- * REST Resource
      DeploymentsDeleteResource

    -- * Creating a Request
    , deploymentsDelete'
    , DeploymentsDelete'

    -- * Request Lenses
    , ddQuotaUser
    , ddPrettyPrint
    , ddProject
    , ddUserIp
    , ddKey
    , ddOauthToken
    , ddFields
    , ddAlt
    , ddDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentmanagerDeploymentsDelete@ which the
-- 'DeploymentsDelete'' request conforms to.
type DeploymentsDeleteResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes a deployment and all of the resources in the deployment.
--
-- /See:/ 'deploymentsDelete'' smart constructor.
data DeploymentsDelete' = DeploymentsDelete'
    { _ddQuotaUser   :: !(Maybe Text)
    , _ddPrettyPrint :: !Bool
    , _ddProject     :: !Text
    , _ddUserIp      :: !(Maybe Text)
    , _ddKey         :: !(Maybe Text)
    , _ddOauthToken  :: !(Maybe Text)
    , _ddFields      :: !(Maybe Text)
    , _ddAlt         :: !Alt
    , _ddDeployment  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddQuotaUser'
--
-- * 'ddPrettyPrint'
--
-- * 'ddProject'
--
-- * 'ddUserIp'
--
-- * 'ddKey'
--
-- * 'ddOauthToken'
--
-- * 'ddFields'
--
-- * 'ddAlt'
--
-- * 'ddDeployment'
deploymentsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'deployment'
    -> DeploymentsDelete'
deploymentsDelete' pDdProject_ pDdDeployment_ =
    DeploymentsDelete'
    { _ddQuotaUser = Nothing
    , _ddPrettyPrint = True
    , _ddProject = pDdProject_
    , _ddUserIp = Nothing
    , _ddKey = Nothing
    , _ddOauthToken = Nothing
    , _ddFields = Nothing
    , _ddAlt = JSON
    , _ddDeployment = pDdDeployment_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ddQuotaUser :: Lens' DeploymentsDelete' (Maybe Text)
ddQuotaUser
  = lens _ddQuotaUser (\ s a -> s{_ddQuotaUser = a})

-- | Returns response with indentations and line breaks.
ddPrettyPrint :: Lens' DeploymentsDelete' Bool
ddPrettyPrint
  = lens _ddPrettyPrint
      (\ s a -> s{_ddPrettyPrint = a})

-- | The project ID for this request.
ddProject :: Lens' DeploymentsDelete' Text
ddProject
  = lens _ddProject (\ s a -> s{_ddProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ddUserIp :: Lens' DeploymentsDelete' (Maybe Text)
ddUserIp = lens _ddUserIp (\ s a -> s{_ddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddKey :: Lens' DeploymentsDelete' (Maybe Text)
ddKey = lens _ddKey (\ s a -> s{_ddKey = a})

-- | OAuth 2.0 token for the current user.
ddOauthToken :: Lens' DeploymentsDelete' (Maybe Text)
ddOauthToken
  = lens _ddOauthToken (\ s a -> s{_ddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddFields :: Lens' DeploymentsDelete' (Maybe Text)
ddFields = lens _ddFields (\ s a -> s{_ddFields = a})

-- | Data format for the response.
ddAlt :: Lens' DeploymentsDelete' Alt
ddAlt = lens _ddAlt (\ s a -> s{_ddAlt = a})

-- | The name of the deployment for this request.
ddDeployment :: Lens' DeploymentsDelete' Text
ddDeployment
  = lens _ddDeployment (\ s a -> s{_ddDeployment = a})

instance GoogleRequest DeploymentsDelete' where
        type Rs DeploymentsDelete' = Operation
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u DeploymentsDelete'{..}
          = go _ddQuotaUser (Just _ddPrettyPrint) _ddProject
              _ddUserIp
              _ddKey
              _ddOauthToken
              _ddFields
              (Just _ddAlt)
              _ddDeployment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DeploymentsDeleteResource)
                      r
                      u
