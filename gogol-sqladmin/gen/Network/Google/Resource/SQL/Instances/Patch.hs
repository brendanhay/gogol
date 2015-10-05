{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.SQL.Instances.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates settings of a Cloud SQL instance. Caution: This is not a partial
-- update, so you must include values for all the settings that you want to
-- retain. For partial updates, use patch.. This method supports patch
-- semantics.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesPatch@.
module Network.Google.Resource.SQL.Instances.Patch
    (
    -- * REST Resource
      InstancesPatchResource

    -- * Creating a Request
    , instancesPatch'
    , InstancesPatch'

    -- * Request Lenses
    , ipQuotaUser
    , ipPrettyPrint
    , ipProject
    , ipUserIP
    , ipPayload
    , ipKey
    , ipOAuthToken
    , ipFields
    , ipInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesPatch@ which the
-- 'InstancesPatch'' request conforms to.
type InstancesPatchResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] DatabaseInstance :>
                             Patch '[JSON] Operation

-- | Updates settings of a Cloud SQL instance. Caution: This is not a partial
-- update, so you must include values for all the settings that you want to
-- retain. For partial updates, use patch.. This method supports patch
-- semantics.
--
-- /See:/ 'instancesPatch'' smart constructor.
data InstancesPatch' = InstancesPatch'
    { _ipQuotaUser   :: !(Maybe Text)
    , _ipPrettyPrint :: !Bool
    , _ipProject     :: !Text
    , _ipUserIP      :: !(Maybe Text)
    , _ipPayload     :: !DatabaseInstance
    , _ipKey         :: !(Maybe Key)
    , _ipOAuthToken  :: !(Maybe OAuthToken)
    , _ipFields      :: !(Maybe Text)
    , _ipInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipQuotaUser'
--
-- * 'ipPrettyPrint'
--
-- * 'ipProject'
--
-- * 'ipUserIP'
--
-- * 'ipPayload'
--
-- * 'ipKey'
--
-- * 'ipOAuthToken'
--
-- * 'ipFields'
--
-- * 'ipInstance'
instancesPatch'
    :: Text -- ^ 'project'
    -> DatabaseInstance -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesPatch'
instancesPatch' pIpProject_ pIpPayload_ pIpInstance_ =
    InstancesPatch'
    { _ipQuotaUser = Nothing
    , _ipPrettyPrint = True
    , _ipProject = pIpProject_
    , _ipUserIP = Nothing
    , _ipPayload = pIpPayload_
    , _ipKey = Nothing
    , _ipOAuthToken = Nothing
    , _ipFields = Nothing
    , _ipInstance = pIpInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ipQuotaUser :: Lens' InstancesPatch' (Maybe Text)
ipQuotaUser
  = lens _ipQuotaUser (\ s a -> s{_ipQuotaUser = a})

-- | Returns response with indentations and line breaks.
ipPrettyPrint :: Lens' InstancesPatch' Bool
ipPrettyPrint
  = lens _ipPrettyPrint
      (\ s a -> s{_ipPrettyPrint = a})

-- | Project ID of the project that contains the instance.
ipProject :: Lens' InstancesPatch' Text
ipProject
  = lens _ipProject (\ s a -> s{_ipProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ipUserIP :: Lens' InstancesPatch' (Maybe Text)
ipUserIP = lens _ipUserIP (\ s a -> s{_ipUserIP = a})

-- | Multipart request metadata.
ipPayload :: Lens' InstancesPatch' DatabaseInstance
ipPayload
  = lens _ipPayload (\ s a -> s{_ipPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ipKey :: Lens' InstancesPatch' (Maybe Key)
ipKey = lens _ipKey (\ s a -> s{_ipKey = a})

-- | OAuth 2.0 token for the current user.
ipOAuthToken :: Lens' InstancesPatch' (Maybe OAuthToken)
ipOAuthToken
  = lens _ipOAuthToken (\ s a -> s{_ipOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ipFields :: Lens' InstancesPatch' (Maybe Text)
ipFields = lens _ipFields (\ s a -> s{_ipFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
ipInstance :: Lens' InstancesPatch' Text
ipInstance
  = lens _ipInstance (\ s a -> s{_ipInstance = a})

instance GoogleAuth InstancesPatch' where
        authKey = ipKey . _Just
        authToken = ipOAuthToken . _Just

instance GoogleRequest InstancesPatch' where
        type Rs InstancesPatch' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesPatch'{..}
          = go _ipProject _ipInstance _ipQuotaUser
              (Just _ipPrettyPrint)
              _ipUserIP
              _ipFields
              _ipKey
              _ipOAuthToken
              (Just AltJSON)
              _ipPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesPatchResource)
                      r
                      u
