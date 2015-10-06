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
-- Module      : Network.Google.Resource.SQL.Instances.Restart
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Restarts a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesRestart@.
module Network.Google.Resource.SQL.Instances.Restart
    (
    -- * REST Resource
      InstancesRestartResource

    -- * Creating a Request
    , instancesRestart'
    , InstancesRestart'

    -- * Request Lenses
    , irQuotaUser
    , irPrettyPrint
    , irProject
    , irUserIP
    , irKey
    , irOAuthToken
    , irFields
    , irInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesRestart@ which the
-- 'InstancesRestart'' request conforms to.
type InstancesRestartResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "restart" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Restarts a Cloud SQL instance.
--
-- /See:/ 'instancesRestart'' smart constructor.
data InstancesRestart' = InstancesRestart'
    { _irQuotaUser   :: !(Maybe Text)
    , _irPrettyPrint :: !Bool
    , _irProject     :: !Text
    , _irUserIP      :: !(Maybe Text)
    , _irKey         :: !(Maybe AuthKey)
    , _irOAuthToken  :: !(Maybe OAuthToken)
    , _irFields      :: !(Maybe Text)
    , _irInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesRestart'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irQuotaUser'
--
-- * 'irPrettyPrint'
--
-- * 'irProject'
--
-- * 'irUserIP'
--
-- * 'irKey'
--
-- * 'irOAuthToken'
--
-- * 'irFields'
--
-- * 'irInstance'
instancesRestart'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesRestart'
instancesRestart' pIrProject_ pIrInstance_ =
    InstancesRestart'
    { _irQuotaUser = Nothing
    , _irPrettyPrint = True
    , _irProject = pIrProject_
    , _irUserIP = Nothing
    , _irKey = Nothing
    , _irOAuthToken = Nothing
    , _irFields = Nothing
    , _irInstance = pIrInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
irQuotaUser :: Lens' InstancesRestart' (Maybe Text)
irQuotaUser
  = lens _irQuotaUser (\ s a -> s{_irQuotaUser = a})

-- | Returns response with indentations and line breaks.
irPrettyPrint :: Lens' InstancesRestart' Bool
irPrettyPrint
  = lens _irPrettyPrint
      (\ s a -> s{_irPrettyPrint = a})

-- | Project ID of the project that contains the instance to be restarted.
irProject :: Lens' InstancesRestart' Text
irProject
  = lens _irProject (\ s a -> s{_irProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
irUserIP :: Lens' InstancesRestart' (Maybe Text)
irUserIP = lens _irUserIP (\ s a -> s{_irUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
irKey :: Lens' InstancesRestart' (Maybe AuthKey)
irKey = lens _irKey (\ s a -> s{_irKey = a})

-- | OAuth 2.0 token for the current user.
irOAuthToken :: Lens' InstancesRestart' (Maybe OAuthToken)
irOAuthToken
  = lens _irOAuthToken (\ s a -> s{_irOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
irFields :: Lens' InstancesRestart' (Maybe Text)
irFields = lens _irFields (\ s a -> s{_irFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
irInstance :: Lens' InstancesRestart' Text
irInstance
  = lens _irInstance (\ s a -> s{_irInstance = a})

instance GoogleAuth InstancesRestart' where
        authKey = irKey . _Just
        authToken = irOAuthToken . _Just

instance GoogleRequest InstancesRestart' where
        type Rs InstancesRestart' = Operation
        request = requestWith sQLAdminRequest
        requestWith rq InstancesRestart'{..}
          = go _irProject _irInstance _irQuotaUser
              (Just _irPrettyPrint)
              _irUserIP
              _irFields
              _irKey
              _irOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy InstancesRestartResource)
                      rq
