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
-- Module      : Network.Google.Resource.SQL.Instances.ResetSSLConfig
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
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesResetSSLConfig@.
module Network.Google.Resource.SQL.Instances.ResetSSLConfig
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
    , irscUserIP
    , irscKey
    , irscOAuthToken
    , irscFields
    , irscInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesResetSSLConfig@ which the
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
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

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
    , _irscUserIP      :: !(Maybe Text)
    , _irscKey         :: !(Maybe Key)
    , _irscOAuthToken  :: !(Maybe OAuthToken)
    , _irscFields      :: !(Maybe Text)
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
-- * 'irscUserIP'
--
-- * 'irscKey'
--
-- * 'irscOAuthToken'
--
-- * 'irscFields'
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
    , _irscUserIP = Nothing
    , _irscKey = Nothing
    , _irscOAuthToken = Nothing
    , _irscFields = Nothing
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
irscUserIP :: Lens' InstancesResetSSLConfig' (Maybe Text)
irscUserIP
  = lens _irscUserIP (\ s a -> s{_irscUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
irscKey :: Lens' InstancesResetSSLConfig' (Maybe Key)
irscKey = lens _irscKey (\ s a -> s{_irscKey = a})

-- | OAuth 2.0 token for the current user.
irscOAuthToken :: Lens' InstancesResetSSLConfig' (Maybe OAuthToken)
irscOAuthToken
  = lens _irscOAuthToken
      (\ s a -> s{_irscOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
irscFields :: Lens' InstancesResetSSLConfig' (Maybe Text)
irscFields
  = lens _irscFields (\ s a -> s{_irscFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
irscInstance :: Lens' InstancesResetSSLConfig' Text
irscInstance
  = lens _irscInstance (\ s a -> s{_irscInstance = a})

instance GoogleAuth InstancesResetSSLConfig' where
        authKey = irscKey . _Just
        authToken = irscOAuthToken . _Just

instance GoogleRequest InstancesResetSSLConfig' where
        type Rs InstancesResetSSLConfig' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesResetSSLConfig'{..}
          = go _irscProject _irscInstance _irscQuotaUser
              (Just _irscPrettyPrint)
              _irscUserIP
              _irscFields
              _irscKey
              _irscOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesResetSSLConfigResource)
                      r
                      u
