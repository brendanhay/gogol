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
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentmanagerDeploymentsInsert@.
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
    , diUserIp
    , diKey
    , diOauthToken
    , diFields
    , diAlt
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentmanagerDeploymentsInsert@ which the
-- 'DeploymentsInsert'' request conforms to.
type DeploymentsInsertResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ 'deploymentsInsert'' smart constructor.
data DeploymentsInsert' = DeploymentsInsert'
    { _diQuotaUser   :: !(Maybe Text)
    , _diPrettyPrint :: !Bool
    , _diProject     :: !Text
    , _diUserIp      :: !(Maybe Text)
    , _diKey         :: !(Maybe Text)
    , _diOauthToken  :: !(Maybe Text)
    , _diFields      :: !(Maybe Text)
    , _diAlt         :: !Alt
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
-- * 'diUserIp'
--
-- * 'diKey'
--
-- * 'diOauthToken'
--
-- * 'diFields'
--
-- * 'diAlt'
deploymentsInsert'
    :: Text -- ^ 'project'
    -> DeploymentsInsert'
deploymentsInsert' pDiProject_ =
    DeploymentsInsert'
    { _diQuotaUser = Nothing
    , _diPrettyPrint = True
    , _diProject = pDiProject_
    , _diUserIp = Nothing
    , _diKey = Nothing
    , _diOauthToken = Nothing
    , _diFields = Nothing
    , _diAlt = JSON
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
diUserIp :: Lens' DeploymentsInsert' (Maybe Text)
diUserIp = lens _diUserIp (\ s a -> s{_diUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
diKey :: Lens' DeploymentsInsert' (Maybe Text)
diKey = lens _diKey (\ s a -> s{_diKey = a})

-- | OAuth 2.0 token for the current user.
diOauthToken :: Lens' DeploymentsInsert' (Maybe Text)
diOauthToken
  = lens _diOauthToken (\ s a -> s{_diOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
diFields :: Lens' DeploymentsInsert' (Maybe Text)
diFields = lens _diFields (\ s a -> s{_diFields = a})

-- | Data format for the response.
diAlt :: Lens' DeploymentsInsert' Alt
diAlt = lens _diAlt (\ s a -> s{_diAlt = a})

instance GoogleRequest DeploymentsInsert' where
        type Rs DeploymentsInsert' = Operation
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u DeploymentsInsert'{..}
          = go _diQuotaUser (Just _diPrettyPrint) _diProject
              _diUserIp
              _diKey
              _diOauthToken
              _diFields
              (Just _diAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DeploymentsInsertResource)
                      r
                      u
