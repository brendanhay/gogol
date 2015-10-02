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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a deployment and all of the resources described by the
-- deployment manifest. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerDeploymentsPatch@.
module Network.Google.Resource.DeploymentManager.Deployments.Patch
    (
    -- * REST Resource
      DeploymentsPatchResource

    -- * Creating a Request
    , deploymentsPatch'
    , DeploymentsPatch'

    -- * Request Lenses
    , dpCreatePolicy
    , dpQuotaUser
    , dpPrettyPrint
    , dpProject
    , dpUserIP
    , dpUpdatePolicy
    , dpDeletePolicy
    , dpKey
    , dpOAuthToken
    , dpDeployment
    , dpFields
    , dpDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerDeploymentsPatch@ which the
-- 'DeploymentsPatch'' request conforms to.
type DeploymentsPatchResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             QueryParam "createPolicy"
               DeploymentManagerDeploymentsPatchCreatePolicy
               :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "updatePolicy"
                       DeploymentManagerDeploymentsPatchUpdatePolicy
                       :>
                       QueryParam "deletePolicy"
                         DeploymentManagerDeploymentsPatchDeletePolicy
                         :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Deployment :>
                                   Patch '[JSON] Operation

-- | Updates a deployment and all of the resources described by the
-- deployment manifest. This method supports patch semantics.
--
-- /See:/ 'deploymentsPatch'' smart constructor.
data DeploymentsPatch' = DeploymentsPatch'
    { _dpCreatePolicy :: !DeploymentManagerDeploymentsPatchCreatePolicy
    , _dpQuotaUser    :: !(Maybe Text)
    , _dpPrettyPrint  :: !Bool
    , _dpProject      :: !Text
    , _dpUserIP       :: !(Maybe Text)
    , _dpUpdatePolicy :: !DeploymentManagerDeploymentsPatchUpdatePolicy
    , _dpDeletePolicy :: !DeploymentManagerDeploymentsPatchDeletePolicy
    , _dpKey          :: !(Maybe Key)
    , _dpOAuthToken   :: !(Maybe OAuthToken)
    , _dpDeployment   :: !Deployment
    , _dpFields       :: !(Maybe Text)
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
-- * 'dpUserIP'
--
-- * 'dpUpdatePolicy'
--
-- * 'dpDeletePolicy'
--
-- * 'dpKey'
--
-- * 'dpOAuthToken'
--
-- * 'dpDeployment'
--
-- * 'dpFields'
--
-- * 'dpDeployment'
deploymentsPatch'
    :: Text -- ^ 'project'
    -> Deployment -- ^ 'Deployment'
    -> Text -- ^ 'deployment'
    -> DeploymentsPatch'
deploymentsPatch' pDpProject_ pDpDeployment_ pDpDeployment_ =
    DeploymentsPatch'
    { _dpCreatePolicy = CreateOrAcquire
    , _dpQuotaUser = Nothing
    , _dpPrettyPrint = True
    , _dpProject = pDpProject_
    , _dpUserIP = Nothing
    , _dpUpdatePolicy = Patch
    , _dpDeletePolicy = Delete
    , _dpKey = Nothing
    , _dpOAuthToken = Nothing
    , _dpDeployment = pDpDeployment_
    , _dpFields = Nothing
    , _dpDeployment = pDpDeployment_
    }

-- | Sets the policy to use for creating new resources.
dpCreatePolicy :: Lens' DeploymentsPatch' DeploymentManagerDeploymentsPatchCreatePolicy
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
dpUserIP :: Lens' DeploymentsPatch' (Maybe Text)
dpUserIP = lens _dpUserIP (\ s a -> s{_dpUserIP = a})

-- | Sets the policy to use for updating resources.
dpUpdatePolicy :: Lens' DeploymentsPatch' DeploymentManagerDeploymentsPatchUpdatePolicy
dpUpdatePolicy
  = lens _dpUpdatePolicy
      (\ s a -> s{_dpUpdatePolicy = a})

-- | Sets the policy to use for deleting resources.
dpDeletePolicy :: Lens' DeploymentsPatch' DeploymentManagerDeploymentsPatchDeletePolicy
dpDeletePolicy
  = lens _dpDeletePolicy
      (\ s a -> s{_dpDeletePolicy = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dpKey :: Lens' DeploymentsPatch' (Maybe Key)
dpKey = lens _dpKey (\ s a -> s{_dpKey = a})

-- | OAuth 2.0 token for the current user.
dpOAuthToken :: Lens' DeploymentsPatch' (Maybe OAuthToken)
dpOAuthToken
  = lens _dpOAuthToken (\ s a -> s{_dpOAuthToken = a})

-- | Multipart request metadata.
dpDeployment :: Lens' DeploymentsPatch' Deployment
dpDeployment
  = lens _dpDeployment (\ s a -> s{_dpDeployment = a})

-- | Selector specifying which fields to include in a partial response.
dpFields :: Lens' DeploymentsPatch' (Maybe Text)
dpFields = lens _dpFields (\ s a -> s{_dpFields = a})

-- | The name of the deployment for this request.
dpDeployment :: Lens' DeploymentsPatch' Text
dpDeployment
  = lens _dpDeployment (\ s a -> s{_dpDeployment = a})

instance GoogleAuth DeploymentsPatch' where
        authKey = dpKey . _Just
        authToken = dpOAuthToken . _Just

instance GoogleRequest DeploymentsPatch' where
        type Rs DeploymentsPatch' = Operation
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u DeploymentsPatch'{..}
          = go (Just _dpCreatePolicy) _dpQuotaUser
              (Just _dpPrettyPrint)
              _dpProject
              _dpUserIP
              (Just _dpUpdatePolicy)
              (Just _dpDeletePolicy)
              _dpKey
              _dpOAuthToken
              _dpFields
              _dpDeployment
              (Just AltJSON)
              _dpDeployment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DeploymentsPatchResource)
                      r
                      u
