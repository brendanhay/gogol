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
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerDeploymentsUpdate@.
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
    , duDeletePolicy
    , duKey
    , duPreview
    , duOAuthToken
    , duFields
    , duDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerDeploymentsUpdate@ method which the
-- 'DeploymentsUpdate'' request conforms to.
type DeploymentsUpdateResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             QueryParam "createPolicy"
               DeploymentsUpdateCreatePolicy
               :>
               QueryParam "deletePolicy"
                 DeploymentsUpdateDeletePolicy
                 :>
                 QueryParam "preview" Bool :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Deployment :>
                                   Put '[JSON] Operation

-- | Updates a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ 'deploymentsUpdate'' smart constructor.
data DeploymentsUpdate' = DeploymentsUpdate'
    { _duCreatePolicy :: !DeploymentsUpdateCreatePolicy
    , _duQuotaUser    :: !(Maybe Text)
    , _duPrettyPrint  :: !Bool
    , _duProject      :: !Text
    , _duUserIP       :: !(Maybe Text)
    , _duPayload      :: !Deployment
    , _duDeletePolicy :: !DeploymentsUpdateDeletePolicy
    , _duKey          :: !(Maybe AuthKey)
    , _duPreview      :: !Bool
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
-- * 'duDeletePolicy'
--
-- * 'duKey'
--
-- * 'duPreview'
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
    { _duCreatePolicy = CreateOrAcquire
    , _duQuotaUser = Nothing
    , _duPrettyPrint = True
    , _duProject = pDuProject_
    , _duUserIP = Nothing
    , _duPayload = pDuPayload_
    , _duDeletePolicy = Delete'
    , _duKey = Nothing
    , _duPreview = False
    , _duOAuthToken = Nothing
    , _duFields = Nothing
    , _duDeployment = pDuDeployment_
    }

-- | Sets the policy to use for creating new resources.
duCreatePolicy :: Lens' DeploymentsUpdate' DeploymentsUpdateCreatePolicy
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

-- | Sets the policy to use for deleting resources.
duDeletePolicy :: Lens' DeploymentsUpdate' DeploymentsUpdateDeletePolicy
duDeletePolicy
  = lens _duDeletePolicy
      (\ s a -> s{_duDeletePolicy = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
duKey :: Lens' DeploymentsUpdate' (Maybe AuthKey)
duKey = lens _duKey (\ s a -> s{_duKey = a})

-- | If set to true, updates the deployment and creates and updates the
-- \"shell\" resources but does not actually alter or instantiate these
-- resources. This allows you to preview what your deployment looks like.
-- You can use this intent to preview how an update would affect your
-- deployment. You must provide a target.config with a configuration if
-- this is set to true. After previewing a deployment, you can deploy your
-- resources by making a request with the update() or you can
-- cancelPreview() to remove the preview altogether. Note that the
-- deployment will still exist after you cancel the preview and you must
-- separately delete this deployment if you want to remove it.
duPreview :: Lens' DeploymentsUpdate' Bool
duPreview
  = lens _duPreview (\ s a -> s{_duPreview = a})

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
        _AuthKey = duKey . _Just
        _AuthToken = duOAuthToken . _Just

instance GoogleRequest DeploymentsUpdate' where
        type Rs DeploymentsUpdate' = Operation
        request = requestWith deploymentManagerRequest
        requestWith rq DeploymentsUpdate'{..}
          = go _duProject _duDeployment (Just _duCreatePolicy)
              (Just _duDeletePolicy)
              (Just _duPreview)
              _duQuotaUser
              (Just _duPrettyPrint)
              _duUserIP
              _duFields
              _duKey
              _duOAuthToken
              (Just AltJSON)
              _duPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DeploymentsUpdateResource)
                      rq
