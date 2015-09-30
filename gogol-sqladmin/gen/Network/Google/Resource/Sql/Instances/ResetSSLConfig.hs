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
-- Module      : Network.Google.Resource.Sql.Instances.ResetSSLConfig
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes all client certificates and generates a new server SSL
-- certificate for the instance. The changes will not take effect until the
-- instance is restarted. Existing instances without a server certificate
-- will need to call this once to set a server certificate.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlInstancesResetSSLConfig@.
module Network.Google.Resource.Sql.Instances.ResetSSLConfig
    (
    -- * REST Resource
      InstancesResetSSLConfigResource

    -- * Creating a Request
    , instancesResetSSLConfig'
    , InstancesResetSSLConfig'

    -- * Request Lenses
    , irscQuotaUser
    , irscPrettyPrint
    , irscProject
    , irscUserIp
    , irscKey
    , irscOauthToken
    , irscFields
    , irscAlt
    , irscInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlInstancesResetSSLConfig@ which the
-- 'InstancesResetSSLConfig'' request conforms to.
type InstancesResetSSLConfigResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "resetSslConfig" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Deletes all client certificates and generates a new server SSL
-- certificate for the instance. The changes will not take effect until the
-- instance is restarted. Existing instances without a server certificate
-- will need to call this once to set a server certificate.
--
-- /See:/ 'instancesResetSSLConfig'' smart constructor.
data InstancesResetSSLConfig' = InstancesResetSSLConfig'
    { _irscQuotaUser   :: !(Maybe Text)
    , _irscPrettyPrint :: !Bool
    , _irscProject     :: !Text
    , _irscUserIp      :: !(Maybe Text)
    , _irscKey         :: !(Maybe Text)
    , _irscOauthToken  :: !(Maybe Text)
    , _irscFields      :: !(Maybe Text)
    , _irscAlt         :: !Alt
    , _irscInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesResetSSLConfig'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irscQuotaUser'
--
-- * 'irscPrettyPrint'
--
-- * 'irscProject'
--
-- * 'irscUserIp'
--
-- * 'irscKey'
--
-- * 'irscOauthToken'
--
-- * 'irscFields'
--
-- * 'irscAlt'
--
-- * 'irscInstance'
instancesResetSSLConfig'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesResetSSLConfig'
instancesResetSSLConfig' pIrscProject_ pIrscInstance_ =
    InstancesResetSSLConfig'
    { _irscQuotaUser = Nothing
    , _irscPrettyPrint = True
    , _irscProject = pIrscProject_
    , _irscUserIp = Nothing
    , _irscKey = Nothing
    , _irscOauthToken = Nothing
    , _irscFields = Nothing
    , _irscAlt = JSON
    , _irscInstance = pIrscInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
irscQuotaUser :: Lens' InstancesResetSSLConfig' (Maybe Text)
irscQuotaUser
  = lens _irscQuotaUser
      (\ s a -> s{_irscQuotaUser = a})

-- | Returns response with indentations and line breaks.
irscPrettyPrint :: Lens' InstancesResetSSLConfig' Bool
irscPrettyPrint
  = lens _irscPrettyPrint
      (\ s a -> s{_irscPrettyPrint = a})

-- | Project ID of the project that contains the instance.
irscProject :: Lens' InstancesResetSSLConfig' Text
irscProject
  = lens _irscProject (\ s a -> s{_irscProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
irscUserIp :: Lens' InstancesResetSSLConfig' (Maybe Text)
irscUserIp
  = lens _irscUserIp (\ s a -> s{_irscUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
irscKey :: Lens' InstancesResetSSLConfig' (Maybe Text)
irscKey = lens _irscKey (\ s a -> s{_irscKey = a})

-- | OAuth 2.0 token for the current user.
irscOauthToken :: Lens' InstancesResetSSLConfig' (Maybe Text)
irscOauthToken
  = lens _irscOauthToken
      (\ s a -> s{_irscOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
irscFields :: Lens' InstancesResetSSLConfig' (Maybe Text)
irscFields
  = lens _irscFields (\ s a -> s{_irscFields = a})

-- | Data format for the response.
irscAlt :: Lens' InstancesResetSSLConfig' Alt
irscAlt = lens _irscAlt (\ s a -> s{_irscAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
irscInstance :: Lens' InstancesResetSSLConfig' Text
irscInstance
  = lens _irscInstance (\ s a -> s{_irscInstance = a})

instance GoogleRequest InstancesResetSSLConfig' where
        type Rs InstancesResetSSLConfig' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesResetSSLConfig'{..}
          = go _irscQuotaUser (Just _irscPrettyPrint)
              _irscProject
              _irscUserIp
              _irscKey
              _irscOauthToken
              _irscFields
              (Just _irscAlt)
              _irscInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesResetSSLConfigResource)
                      r
                      u
