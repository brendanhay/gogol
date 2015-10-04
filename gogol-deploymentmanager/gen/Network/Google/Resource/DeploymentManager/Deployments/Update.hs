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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerDeploymentsUpdate@.
module Network.Google.Resource.DeploymentManager.Deployments.Update
    (
    -- * REST Resource
      DeploymentsUpdateResource

    -- * Creating a Request
    , deploymentsUpdate'
    , DeploymentsUpdate'

    -- * Request Lenses
    , duCreatePolicy
    , duQuotaUser
    , duPrettyPrint
    , duProject
    , duUserIP
    , duPayload
    , duUpdatePolicy
    , duDeletePolicy
    , duKey
    , duOAuthToken
    , duFields
    , duDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerDeploymentsUpdate@ which the
-- 'DeploymentsUpdate'' request conforms to.
type DeploymentsUpdateResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             QueryParam "createPolicy"
               DeploymentManagerDeploymentsUpdateCreatePolicy
               :>
               QueryParam "updatePolicy"
                 DeploymentManagerDeploymentsUpdateUpdatePolicy
                 :>
                 QueryParam "deletePolicy"
                   DeploymentManagerDeploymentsUpdateDeletePolicy
                   :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Deployment :>
                                   Put '[JSON] Operation

-- | Updates a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ 'deploymentsUpdate'' smart constructor.
data DeploymentsUpdate' = DeploymentsUpdate'
    { _duCreatePolicy :: !DeploymentManagerDeploymentsUpdateCreatePolicy
    , _duQuotaUser    :: !(Maybe Text)
    , _duPrettyPrint  :: !Bool
    , _duProject      :: !Text
    , _duUserIP       :: !(Maybe Text)
    , _duPayload      :: !Deployment
    , _duUpdatePolicy :: !DeploymentManagerDeploymentsUpdateUpdatePolicy
    , _duDeletePolicy :: !DeploymentManagerDeploymentsUpdateDeletePolicy
    , _duKey          :: !(Maybe Key)
    , _duOAuthToken   :: !(Maybe OAuthToken)
    , _duFields       :: !(Maybe Text)
    , _duDeployment   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duCreatePolicy'
--
-- * 'duQuotaUser'
--
-- * 'duPrettyPrint'
--
-- * 'duProject'
--
-- * 'duUserIP'
--
-- * 'duPayload'
--
-- * 'duUpdatePolicy'
--
-- * 'duDeletePolicy'
--
-- * 'duKey'
--
-- * 'duOAuthToken'
--
-- * 'duFields'
--
-- * 'duDeployment'
deploymentsUpdate'
    :: Text -- ^ 'project'
    -> Deployment -- ^ 'payload'
    -> Text -- ^ 'deployment'
    -> DeploymentsUpdate'
deploymentsUpdate' pDuProject_ pDuPayload_ pDuDeployment_ =
    DeploymentsUpdate'
    { _duCreatePolicy = DMDUCPCreateOrAcquire
    , _duQuotaUser = Nothing
    , _duPrettyPrint = True
    , _duProject = pDuProject_
    , _duUserIP = Nothing
    , _duPayload = pDuPayload_
    , _duUpdatePolicy = DMDUUPPatch
    , _duDeletePolicy = Delete
    , _duKey = Nothing
    , _duOAuthToken = Nothing
    , _duFields = Nothing
    , _duDeployment = pDuDeployment_
    }

-- | Sets the policy to use for creating new resources.
duCreatePolicy :: Lens' DeploymentsUpdate' DeploymentManagerDeploymentsUpdateCreatePolicy
duCreatePolicy
  = lens _duCreatePolicy
      (\ s a -> s{_duCreatePolicy = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
duQuotaUser :: Lens' DeploymentsUpdate' (Maybe Text)
duQuotaUser
  = lens _duQuotaUser (\ s a -> s{_duQuotaUser = a})

-- | Returns response with indentations and line breaks.
duPrettyPrint :: Lens' DeploymentsUpdate' Bool
duPrettyPrint
  = lens _duPrettyPrint
      (\ s a -> s{_duPrettyPrint = a})

-- | The project ID for this request.
duProject :: Lens' DeploymentsUpdate' Text
duProject
  = lens _duProject (\ s a -> s{_duProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
duUserIP :: Lens' DeploymentsUpdate' (Maybe Text)
duUserIP = lens _duUserIP (\ s a -> s{_duUserIP = a})

-- | Multipart request metadata.
duPayload :: Lens' DeploymentsUpdate' Deployment
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | Sets the policy to use for updating resources.
duUpdatePolicy :: Lens' DeploymentsUpdate' DeploymentManagerDeploymentsUpdateUpdatePolicy
duUpdatePolicy
  = lens _duUpdatePolicy
      (\ s a -> s{_duUpdatePolicy = a})

-- | Sets the policy to use for deleting resources.
duDeletePolicy :: Lens' DeploymentsUpdate' DeploymentManagerDeploymentsUpdateDeletePolicy
duDeletePolicy
  = lens _duDeletePolicy
      (\ s a -> s{_duDeletePolicy = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
duKey :: Lens' DeploymentsUpdate' (Maybe Key)
duKey = lens _duKey (\ s a -> s{_duKey = a})

-- | OAuth 2.0 token for the current user.
duOAuthToken :: Lens' DeploymentsUpdate' (Maybe OAuthToken)
duOAuthToken
  = lens _duOAuthToken (\ s a -> s{_duOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
duFields :: Lens' DeploymentsUpdate' (Maybe Text)
duFields = lens _duFields (\ s a -> s{_duFields = a})

-- | The name of the deployment for this request.
duDeployment :: Lens' DeploymentsUpdate' Text
duDeployment
  = lens _duDeployment (\ s a -> s{_duDeployment = a})

instance GoogleAuth DeploymentsUpdate' where
        authKey = duKey . _Just
        authToken = duOAuthToken . _Just

instance GoogleRequest DeploymentsUpdate' where
        type Rs DeploymentsUpdate' = Operation
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u DeploymentsUpdate'{..}
          = go _duProject _duDeployment (Just _duCreatePolicy)
              (Just _duUpdatePolicy)
              (Just _duDeletePolicy)
              _duQuotaUser
              (Just _duPrettyPrint)
              _duUserIP
              _duFields
              _duKey
              _duOAuthToken
              (Just AltJSON)
              _duPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DeploymentsUpdateResource)
                      r
                      u
