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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.Stop
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Stops an ongoing operation. This does not roll back any work that has
-- already been completed, but prevents any new work from being started.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerDeploymentsStop@.
module Network.Google.Resource.DeploymentManager.Deployments.Stop
    (
    -- * REST Resource
      DeploymentsStopResource

    -- * Creating a Request
    , deploymentsStop'
    , DeploymentsStop'

    -- * Request Lenses
    , dsQuotaUser
    , dsPrettyPrint
    , dsProject
    , dsUserIP
    , dsPayload
    , dsKey
    , dsOAuthToken
    , dsFields
    , dsDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerDeploymentsStop@ method which the
-- 'DeploymentsStop'' request conforms to.
type DeploymentsStopResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "stop" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] DeploymentsStopRequest :>
                               Post '[JSON] Operation

-- | Stops an ongoing operation. This does not roll back any work that has
-- already been completed, but prevents any new work from being started.
--
-- /See:/ 'deploymentsStop'' smart constructor.
data DeploymentsStop' = DeploymentsStop'
    { _dsQuotaUser   :: !(Maybe Text)
    , _dsPrettyPrint :: !Bool
    , _dsProject     :: !Text
    , _dsUserIP      :: !(Maybe Text)
    , _dsPayload     :: !DeploymentsStopRequest
    , _dsKey         :: !(Maybe AuthKey)
    , _dsOAuthToken  :: !(Maybe OAuthToken)
    , _dsFields      :: !(Maybe Text)
    , _dsDeployment  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsStop'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsQuotaUser'
--
-- * 'dsPrettyPrint'
--
-- * 'dsProject'
--
-- * 'dsUserIP'
--
-- * 'dsPayload'
--
-- * 'dsKey'
--
-- * 'dsOAuthToken'
--
-- * 'dsFields'
--
-- * 'dsDeployment'
deploymentsStop'
    :: Text -- ^ 'project'
    -> DeploymentsStopRequest -- ^ 'payload'
    -> Text -- ^ 'deployment'
    -> DeploymentsStop'
deploymentsStop' pDsProject_ pDsPayload_ pDsDeployment_ =
    DeploymentsStop'
    { _dsQuotaUser = Nothing
    , _dsPrettyPrint = True
    , _dsProject = pDsProject_
    , _dsUserIP = Nothing
    , _dsPayload = pDsPayload_
    , _dsKey = Nothing
    , _dsOAuthToken = Nothing
    , _dsFields = Nothing
    , _dsDeployment = pDsDeployment_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dsQuotaUser :: Lens' DeploymentsStop' (Maybe Text)
dsQuotaUser
  = lens _dsQuotaUser (\ s a -> s{_dsQuotaUser = a})

-- | Returns response with indentations and line breaks.
dsPrettyPrint :: Lens' DeploymentsStop' Bool
dsPrettyPrint
  = lens _dsPrettyPrint
      (\ s a -> s{_dsPrettyPrint = a})

-- | The project ID for this request.
dsProject :: Lens' DeploymentsStop' Text
dsProject
  = lens _dsProject (\ s a -> s{_dsProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dsUserIP :: Lens' DeploymentsStop' (Maybe Text)
dsUserIP = lens _dsUserIP (\ s a -> s{_dsUserIP = a})

-- | Multipart request metadata.
dsPayload :: Lens' DeploymentsStop' DeploymentsStopRequest
dsPayload
  = lens _dsPayload (\ s a -> s{_dsPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dsKey :: Lens' DeploymentsStop' (Maybe AuthKey)
dsKey = lens _dsKey (\ s a -> s{_dsKey = a})

-- | OAuth 2.0 token for the current user.
dsOAuthToken :: Lens' DeploymentsStop' (Maybe OAuthToken)
dsOAuthToken
  = lens _dsOAuthToken (\ s a -> s{_dsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dsFields :: Lens' DeploymentsStop' (Maybe Text)
dsFields = lens _dsFields (\ s a -> s{_dsFields = a})

-- | The name of the deployment for this request.
dsDeployment :: Lens' DeploymentsStop' Text
dsDeployment
  = lens _dsDeployment (\ s a -> s{_dsDeployment = a})

instance GoogleAuth DeploymentsStop' where
        _AuthKey = dsKey . _Just
        _AuthToken = dsOAuthToken . _Just

instance GoogleRequest DeploymentsStop' where
        type Rs DeploymentsStop' = Operation
        request = requestWith deploymentManagerRequest
        requestWith rq DeploymentsStop'{..}
          = go _dsProject _dsDeployment _dsQuotaUser
              (Just _dsPrettyPrint)
              _dsUserIP
              _dsFields
              _dsKey
              _dsOAuthToken
              (Just AltJSON)
              _dsPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DeploymentsStopResource)
                      rq
