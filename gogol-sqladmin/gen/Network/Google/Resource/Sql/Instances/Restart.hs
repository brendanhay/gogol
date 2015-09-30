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
-- Module      : Network.Google.Resource.Sql.Instances.Restart
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Restarts a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlInstancesRestart@.
module Network.Google.Resource.Sql.Instances.Restart
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
    , irUserIp
    , irKey
    , irOauthToken
    , irFields
    , irAlt
    , irInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlInstancesRestart@ which the
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Restarts a Cloud SQL instance.
--
-- /See:/ 'instancesRestart'' smart constructor.
data InstancesRestart' = InstancesRestart'
    { _irQuotaUser   :: !(Maybe Text)
    , _irPrettyPrint :: !Bool
    , _irProject     :: !Text
    , _irUserIp      :: !(Maybe Text)
    , _irKey         :: !(Maybe Text)
    , _irOauthToken  :: !(Maybe Text)
    , _irFields      :: !(Maybe Text)
    , _irAlt         :: !Alt
    , _irInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'irUserIp'
--
-- * 'irKey'
--
-- * 'irOauthToken'
--
-- * 'irFields'
--
-- * 'irAlt'
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
    , _irUserIp = Nothing
    , _irKey = Nothing
    , _irOauthToken = Nothing
    , _irFields = Nothing
    , _irAlt = JSON
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
irUserIp :: Lens' InstancesRestart' (Maybe Text)
irUserIp = lens _irUserIp (\ s a -> s{_irUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
irKey :: Lens' InstancesRestart' (Maybe Text)
irKey = lens _irKey (\ s a -> s{_irKey = a})

-- | OAuth 2.0 token for the current user.
irOauthToken :: Lens' InstancesRestart' (Maybe Text)
irOauthToken
  = lens _irOauthToken (\ s a -> s{_irOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
irFields :: Lens' InstancesRestart' (Maybe Text)
irFields = lens _irFields (\ s a -> s{_irFields = a})

-- | Data format for the response.
irAlt :: Lens' InstancesRestart' Alt
irAlt = lens _irAlt (\ s a -> s{_irAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
irInstance :: Lens' InstancesRestart' Text
irInstance
  = lens _irInstance (\ s a -> s{_irInstance = a})

instance GoogleRequest InstancesRestart' where
        type Rs InstancesRestart' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesRestart'{..}
          = go _irQuotaUser (Just _irPrettyPrint) _irProject
              _irUserIp
              _irKey
              _irOauthToken
              _irFields
              (Just _irAlt)
              _irInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesRestartResource)
                      r
                      u
