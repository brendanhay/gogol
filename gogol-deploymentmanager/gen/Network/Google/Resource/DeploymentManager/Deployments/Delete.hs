{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerDeploymentsDelete@.
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
    , ddUserIP
    , ddKey
    , ddOAuthToken
    , ddFields
    , ddDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerDeploymentsDelete@ which the
-- 'DeploymentsDelete'' request conforms to.
type DeploymentsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a deployment and all of the resources in the deployment.
--
-- /See:/ 'deploymentsDelete'' smart constructor.
data DeploymentsDelete' = DeploymentsDelete'
    { _ddQuotaUser   :: !(Maybe Text)
    , _ddPrettyPrint :: !Bool
    , _ddProject     :: !Text
    , _ddUserIP      :: !(Maybe Text)
    , _ddKey         :: !(Maybe Key)
    , _ddOAuthToken  :: !(Maybe OAuthToken)
    , _ddFields      :: !(Maybe Text)
    , _ddDeployment  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ddUserIP'
--
-- * 'ddKey'
--
-- * 'ddOAuthToken'
--
-- * 'ddFields'
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
    , _ddUserIP = Nothing
    , _ddKey = Nothing
    , _ddOAuthToken = Nothing
    , _ddFields = Nothing
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
ddUserIP :: Lens' DeploymentsDelete' (Maybe Text)
ddUserIP = lens _ddUserIP (\ s a -> s{_ddUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ddKey :: Lens' DeploymentsDelete' (Maybe Key)
ddKey = lens _ddKey (\ s a -> s{_ddKey = a})

-- | OAuth 2.0 token for the current user.
ddOAuthToken :: Lens' DeploymentsDelete' (Maybe OAuthToken)
ddOAuthToken
  = lens _ddOAuthToken (\ s a -> s{_ddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ddFields :: Lens' DeploymentsDelete' (Maybe Text)
ddFields = lens _ddFields (\ s a -> s{_ddFields = a})

-- | The name of the deployment for this request.
ddDeployment :: Lens' DeploymentsDelete' Text
ddDeployment
  = lens _ddDeployment (\ s a -> s{_ddDeployment = a})

instance GoogleAuth DeploymentsDelete' where
        authKey = ddKey . _Just
        authToken = ddOAuthToken . _Just

instance GoogleRequest DeploymentsDelete' where
        type Rs DeploymentsDelete' = Operation
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u DeploymentsDelete'{..}
          = go _ddProject _ddDeployment _ddQuotaUser
              (Just _ddPrettyPrint)
              _ddUserIP
              _ddFields
              _ddKey
              _ddOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DeploymentsDeleteResource)
                      r
                      u
