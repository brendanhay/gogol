{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentmanagerDeploymentsGet@.
module DeploymentManager.Deployments.Get
    (
    -- * REST Resource
      DeploymentsGetAPI

    -- * Creating a Request
    , deploymentsGet
    , DeploymentsGet

    -- * Request Lenses
    , dgQuotaUser
    , dgPrettyPrint
    , dgProject
    , dgUserIp
    , dgKey
    , dgOauthToken
    , dgFields
    , dgAlt
    , dgDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentmanagerDeploymentsGet@ which the
-- 'DeploymentsGet' request conforms to.
type DeploymentsGetAPI =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :> Get '[JSON] Deployment

-- | Gets information about a specific deployment.
--
-- /See:/ 'deploymentsGet' smart constructor.
data DeploymentsGet = DeploymentsGet
    { _dgQuotaUser   :: !(Maybe Text)
    , _dgPrettyPrint :: !Bool
    , _dgProject     :: !Text
    , _dgUserIp      :: !(Maybe Text)
    , _dgKey         :: !(Maybe Text)
    , _dgOauthToken  :: !(Maybe Text)
    , _dgFields      :: !(Maybe Text)
    , _dgAlt         :: !Text
    , _dgDeployment  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'dgUserIp'
--
-- * 'dgKey'
--
-- * 'dgOauthToken'
--
-- * 'dgFields'
--
-- * 'dgAlt'
--
-- * 'dgDeployment'
deploymentsGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'deployment'
    -> DeploymentsGet
deploymentsGet pDgProject_ pDgDeployment_ =
    DeploymentsGet
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgProject = pDgProject_
    , _dgUserIp = Nothing
    , _dgKey = Nothing
    , _dgOauthToken = Nothing
    , _dgFields = Nothing
    , _dgAlt = "json"
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
dgUserIp :: Lens' DeploymentsGet' (Maybe Text)
dgUserIp = lens _dgUserIp (\ s a -> s{_dgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DeploymentsGet' (Maybe Text)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | OAuth 2.0 token for the current user.
dgOauthToken :: Lens' DeploymentsGet' (Maybe Text)
dgOauthToken
  = lens _dgOauthToken (\ s a -> s{_dgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DeploymentsGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

-- | Data format for the response.
dgAlt :: Lens' DeploymentsGet' Text
dgAlt = lens _dgAlt (\ s a -> s{_dgAlt = a})

-- | The name of the deployment for this request.
dgDeployment :: Lens' DeploymentsGet' Text
dgDeployment
  = lens _dgDeployment (\ s a -> s{_dgDeployment = a})

instance GoogleRequest DeploymentsGet' where
        type Rs DeploymentsGet' = Deployment
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u DeploymentsGet{..}
          = go _dgQuotaUser _dgPrettyPrint _dgProject _dgUserIp
              _dgKey
              _dgOauthToken
              _dgFields
              _dgAlt
              _dgDeployment
          where go
                  = clientWithRoute (Proxy :: Proxy DeploymentsGetAPI)
                      r
                      u
