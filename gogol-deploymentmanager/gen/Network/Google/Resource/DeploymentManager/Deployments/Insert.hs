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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerDeploymentsInsert@.
module Network.Google.Resource.DeploymentManager.Deployments.Insert
    (
    -- * REST Resource
      DeploymentsInsertResource

    -- * Creating a Request
    , deploymentsInsert'
    , DeploymentsInsert'

    -- * Request Lenses
    , diQuotaUser
    , diPrettyPrint
    , diProject
    , diUserIP
    , diKey
    , diOAuthToken
    , diDeployment
    , diFields
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerDeploymentsInsert@ which the
-- 'DeploymentsInsert'' request conforms to.
type DeploymentsInsertResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Deployment :> Post '[JSON] Operation

-- | Creates a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ 'deploymentsInsert'' smart constructor.
data DeploymentsInsert' = DeploymentsInsert'
    { _diQuotaUser   :: !(Maybe Text)
    , _diPrettyPrint :: !Bool
    , _diProject     :: !Text
    , _diUserIP      :: !(Maybe Text)
    , _diKey         :: !(Maybe Key)
    , _diOAuthToken  :: !(Maybe OAuthToken)
    , _diDeployment  :: !Deployment
    , _diFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diQuotaUser'
--
-- * 'diPrettyPrint'
--
-- * 'diProject'
--
-- * 'diUserIP'
--
-- * 'diKey'
--
-- * 'diOAuthToken'
--
-- * 'diDeployment'
--
-- * 'diFields'
deploymentsInsert'
    :: Text -- ^ 'project'
    -> Deployment -- ^ 'Deployment'
    -> DeploymentsInsert'
deploymentsInsert' pDiProject_ pDiDeployment_ =
    DeploymentsInsert'
    { _diQuotaUser = Nothing
    , _diPrettyPrint = True
    , _diProject = pDiProject_
    , _diUserIP = Nothing
    , _diKey = Nothing
    , _diOAuthToken = Nothing
    , _diDeployment = pDiDeployment_
    , _diFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
diQuotaUser :: Lens' DeploymentsInsert' (Maybe Text)
diQuotaUser
  = lens _diQuotaUser (\ s a -> s{_diQuotaUser = a})

-- | Returns response with indentations and line breaks.
diPrettyPrint :: Lens' DeploymentsInsert' Bool
diPrettyPrint
  = lens _diPrettyPrint
      (\ s a -> s{_diPrettyPrint = a})

-- | The project ID for this request.
diProject :: Lens' DeploymentsInsert' Text
diProject
  = lens _diProject (\ s a -> s{_diProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
diUserIP :: Lens' DeploymentsInsert' (Maybe Text)
diUserIP = lens _diUserIP (\ s a -> s{_diUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
diKey :: Lens' DeploymentsInsert' (Maybe Key)
diKey = lens _diKey (\ s a -> s{_diKey = a})

-- | OAuth 2.0 token for the current user.
diOAuthToken :: Lens' DeploymentsInsert' (Maybe OAuthToken)
diOAuthToken
  = lens _diOAuthToken (\ s a -> s{_diOAuthToken = a})

-- | Multipart request metadata.
diDeployment :: Lens' DeploymentsInsert' Deployment
diDeployment
  = lens _diDeployment (\ s a -> s{_diDeployment = a})

-- | Selector specifying which fields to include in a partial response.
diFields :: Lens' DeploymentsInsert' (Maybe Text)
diFields = lens _diFields (\ s a -> s{_diFields = a})

instance GoogleAuth DeploymentsInsert' where
        authKey = diKey . _Just
        authToken = diOAuthToken . _Just

instance GoogleRequest DeploymentsInsert' where
        type Rs DeploymentsInsert' = Operation
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u DeploymentsInsert'{..}
          = go _diProject _diQuotaUser (Just _diPrettyPrint)
              _diUserIP
              _diFields
              _diKey
              _diOAuthToken
              (Just AltJSON)
              _diDeployment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DeploymentsInsertResource)
                      r
                      u
