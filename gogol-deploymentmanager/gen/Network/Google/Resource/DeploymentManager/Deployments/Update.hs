{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentmanagerDeploymentsUpdate@.
module DeploymentManager.Deployments.Update
    (
    -- * REST Resource
      DeploymentsUpdateAPI

    -- * Creating a Request
    , deploymentsUpdate
    , DeploymentsUpdate

    -- * Request Lenses
    , duCreatePolicy
    , duQuotaUser
    , duPrettyPrint
    , duProject
    , duUserIp
    , duUpdatePolicy
    , duDeletePolicy
    , duKey
    , duOauthToken
    , duFields
    , duAlt
    , duDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentmanagerDeploymentsUpdate@ which the
-- 'DeploymentsUpdate' request conforms to.
type DeploymentsUpdateAPI =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             QueryParam "createPolicy" Text :>
               QueryParam "updatePolicy" Text :>
                 QueryParam "deletePolicy" Text :>
                   Put '[JSON] Operation

-- | Updates a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ 'deploymentsUpdate' smart constructor.
data DeploymentsUpdate = DeploymentsUpdate
    { _duCreatePolicy :: !Text
    , _duQuotaUser    :: !(Maybe Text)
    , _duPrettyPrint  :: !Bool
    , _duProject      :: !Text
    , _duUserIp       :: !(Maybe Text)
    , _duUpdatePolicy :: !Text
    , _duDeletePolicy :: !Text
    , _duKey          :: !(Maybe Text)
    , _duOauthToken   :: !(Maybe Text)
    , _duFields       :: !(Maybe Text)
    , _duAlt          :: !Text
    , _duDeployment   :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'duUserIp'
--
-- * 'duUpdatePolicy'
--
-- * 'duDeletePolicy'
--
-- * 'duKey'
--
-- * 'duOauthToken'
--
-- * 'duFields'
--
-- * 'duAlt'
--
-- * 'duDeployment'
deploymentsUpdate
    :: Text -- ^ 'project'
    -> Text -- ^ 'deployment'
    -> DeploymentsUpdate
deploymentsUpdate pDuProject_ pDuDeployment_ =
    DeploymentsUpdate
    { _duCreatePolicy = "CREATE_OR_ACQUIRE"
    , _duQuotaUser = Nothing
    , _duPrettyPrint = True
    , _duProject = pDuProject_
    , _duUserIp = Nothing
    , _duUpdatePolicy = "PATCH"
    , _duDeletePolicy = "DELETE"
    , _duKey = Nothing
    , _duOauthToken = Nothing
    , _duFields = Nothing
    , _duAlt = "json"
    , _duDeployment = pDuDeployment_
    }

-- | Sets the policy to use for creating new resources.
duCreatePolicy :: Lens' DeploymentsUpdate' Text
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
duUserIp :: Lens' DeploymentsUpdate' (Maybe Text)
duUserIp = lens _duUserIp (\ s a -> s{_duUserIp = a})

-- | Sets the policy to use for updating resources.
duUpdatePolicy :: Lens' DeploymentsUpdate' Text
duUpdatePolicy
  = lens _duUpdatePolicy
      (\ s a -> s{_duUpdatePolicy = a})

-- | Sets the policy to use for deleting resources.
duDeletePolicy :: Lens' DeploymentsUpdate' Text
duDeletePolicy
  = lens _duDeletePolicy
      (\ s a -> s{_duDeletePolicy = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
duKey :: Lens' DeploymentsUpdate' (Maybe Text)
duKey = lens _duKey (\ s a -> s{_duKey = a})

-- | OAuth 2.0 token for the current user.
duOauthToken :: Lens' DeploymentsUpdate' (Maybe Text)
duOauthToken
  = lens _duOauthToken (\ s a -> s{_duOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
duFields :: Lens' DeploymentsUpdate' (Maybe Text)
duFields = lens _duFields (\ s a -> s{_duFields = a})

-- | Data format for the response.
duAlt :: Lens' DeploymentsUpdate' Text
duAlt = lens _duAlt (\ s a -> s{_duAlt = a})

-- | The name of the deployment for this request.
duDeployment :: Lens' DeploymentsUpdate' Text
duDeployment
  = lens _duDeployment (\ s a -> s{_duDeployment = a})

instance GoogleRequest DeploymentsUpdate' where
        type Rs DeploymentsUpdate' = Operation
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u DeploymentsUpdate{..}
          = go (Just _duCreatePolicy) _duQuotaUser
              _duPrettyPrint
              _duProject
              _duUserIp
              (Just _duUpdatePolicy)
              (Just _duDeletePolicy)
              _duKey
              _duOauthToken
              _duFields
              _duAlt
              _duDeployment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DeploymentsUpdateAPI)
                      r
                      u
