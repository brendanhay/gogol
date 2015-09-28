{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DeploymentManager.Deployments.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a deployment and all of the resources described by the
-- deployment manifest. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.deployments.patch@.
module Network.Google.API.DeploymentManager.Deployments.Patch
    (
    -- * REST Resource
      DeploymentsPatchAPI

    -- * Creating a Request
    , deploymentsPatch'
    , DeploymentsPatch'

    -- * Request Lenses
    , dpCreatePolicy
    , dpQuotaUser
    , dpPrettyPrint
    , dpProject
    , dpUserIp
    , dpUpdatePolicy
    , dpDeletePolicy
    , dpKey
    , dpOauthToken
    , dpFields
    , dpAlt
    , dpDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for deploymentmanager.deployments.patch which the
-- 'DeploymentsPatch'' request conforms to.
type DeploymentsPatchAPI =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             QueryParam "createPolicy"
               DeploymentsPatch'CreatePolicy
               :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "updatePolicy"
                       DeploymentsPatch'UpdatePolicy
                       :>
                       QueryParam "deletePolicy"
                         DeploymentsPatch'DeletePolicy
                         :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Patch '[JSON] Operation

-- | Updates a deployment and all of the resources described by the
-- deployment manifest. This method supports patch semantics.
--
-- /See:/ 'deploymentsPatch'' smart constructor.
data DeploymentsPatch' = DeploymentsPatch'
    { _dpCreatePolicy :: !DeploymentsPatch'CreatePolicy
    , _dpQuotaUser    :: !(Maybe Text)
    , _dpPrettyPrint  :: !Bool
    , _dpProject      :: !Text
    , _dpUserIp       :: !(Maybe Text)
    , _dpUpdatePolicy :: !DeploymentsPatch'UpdatePolicy
    , _dpDeletePolicy :: !DeploymentsPatch'DeletePolicy
    , _dpKey          :: !(Maybe Text)
    , _dpOauthToken   :: !(Maybe Text)
    , _dpFields       :: !(Maybe Text)
    , _dpAlt          :: !Alt
    , _dpDeployment   :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpCreatePolicy'
--
-- * 'dpQuotaUser'
--
-- * 'dpPrettyPrint'
--
-- * 'dpProject'
--
-- * 'dpUserIp'
--
-- * 'dpUpdatePolicy'
--
-- * 'dpDeletePolicy'
--
-- * 'dpKey'
--
-- * 'dpOauthToken'
--
-- * 'dpFields'
--
-- * 'dpAlt'
--
-- * 'dpDeployment'
deploymentsPatch'
    :: Text -- ^ 'project'
    -> Text -- ^ 'deployment'
    -> DeploymentsPatch'
deploymentsPatch' pDpProject_ pDpDeployment_ =
    DeploymentsPatch'
    { _dpCreatePolicy = CreateOrAcquire
    , _dpQuotaUser = Nothing
    , _dpPrettyPrint = True
    , _dpProject = pDpProject_
    , _dpUserIp = Nothing
    , _dpUpdatePolicy = DPUPPatch
    , _dpDeletePolicy = DPDPDelete
    , _dpKey = Nothing
    , _dpOauthToken = Nothing
    , _dpFields = Nothing
    , _dpAlt = JSON
    , _dpDeployment = pDpDeployment_
    }

-- | Sets the policy to use for creating new resources.
dpCreatePolicy :: Lens' DeploymentsPatch' DeploymentsPatch'CreatePolicy
dpCreatePolicy
  = lens _dpCreatePolicy
      (\ s a -> s{_dpCreatePolicy = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dpQuotaUser :: Lens' DeploymentsPatch' (Maybe Text)
dpQuotaUser
  = lens _dpQuotaUser (\ s a -> s{_dpQuotaUser = a})

-- | Returns response with indentations and line breaks.
dpPrettyPrint :: Lens' DeploymentsPatch' Bool
dpPrettyPrint
  = lens _dpPrettyPrint
      (\ s a -> s{_dpPrettyPrint = a})

-- | The project ID for this request.
dpProject :: Lens' DeploymentsPatch' Text
dpProject
  = lens _dpProject (\ s a -> s{_dpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dpUserIp :: Lens' DeploymentsPatch' (Maybe Text)
dpUserIp = lens _dpUserIp (\ s a -> s{_dpUserIp = a})

-- | Sets the policy to use for updating resources.
dpUpdatePolicy :: Lens' DeploymentsPatch' DeploymentsPatch'UpdatePolicy
dpUpdatePolicy
  = lens _dpUpdatePolicy
      (\ s a -> s{_dpUpdatePolicy = a})

-- | Sets the policy to use for deleting resources.
dpDeletePolicy :: Lens' DeploymentsPatch' DeploymentsPatch'DeletePolicy
dpDeletePolicy
  = lens _dpDeletePolicy
      (\ s a -> s{_dpDeletePolicy = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dpKey :: Lens' DeploymentsPatch' (Maybe Text)
dpKey = lens _dpKey (\ s a -> s{_dpKey = a})

-- | OAuth 2.0 token for the current user.
dpOauthToken :: Lens' DeploymentsPatch' (Maybe Text)
dpOauthToken
  = lens _dpOauthToken (\ s a -> s{_dpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dpFields :: Lens' DeploymentsPatch' (Maybe Text)
dpFields = lens _dpFields (\ s a -> s{_dpFields = a})

-- | Data format for the response.
dpAlt :: Lens' DeploymentsPatch' Alt
dpAlt = lens _dpAlt (\ s a -> s{_dpAlt = a})

-- | The name of the deployment for this request.
dpDeployment :: Lens' DeploymentsPatch' Text
dpDeployment
  = lens _dpDeployment (\ s a -> s{_dpDeployment = a})

instance GoogleRequest DeploymentsPatch' where
        type Rs DeploymentsPatch' = Operation
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u DeploymentsPatch'{..}
          = go (Just _dpCreatePolicy) _dpQuotaUser
              (Just _dpPrettyPrint)
              _dpProject
              _dpUserIp
              (Just _dpUpdatePolicy)
              (Just _dpDeletePolicy)
              _dpKey
              _dpOauthToken
              _dpFields
              (Just _dpAlt)
              _dpDeployment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DeploymentsPatchAPI)
                      r
                      u
