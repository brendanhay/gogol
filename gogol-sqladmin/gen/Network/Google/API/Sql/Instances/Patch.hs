{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.Instances.Patch
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
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.patch@.
module Network.Google.API.Sql.Instances.Patch
    (
    -- * REST Resource
      InstancesPatchAPI

    -- * Creating a Request
    , instancesPatch'
    , InstancesPatch'

    -- * Request Lenses
    , ipQuotaUser
    , ipPrettyPrint
    , ipProject
    , ipUserIp
    , ipKey
    , ipOauthToken
    , ipFields
    , ipAlt
    , ipInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.instances.patch which the
-- 'InstancesPatch'' request conforms to.
type InstancesPatchAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Operation

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
    , _ipUserIp      :: !(Maybe Text)
    , _ipKey         :: !(Maybe Text)
    , _ipOauthToken  :: !(Maybe Text)
    , _ipFields      :: !(Maybe Text)
    , _ipAlt         :: !Alt
    , _ipInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ipUserIp'
--
-- * 'ipKey'
--
-- * 'ipOauthToken'
--
-- * 'ipFields'
--
-- * 'ipAlt'
--
-- * 'ipInstance'
instancesPatch'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesPatch'
instancesPatch' pIpProject_ pIpInstance_ =
    InstancesPatch'
    { _ipQuotaUser = Nothing
    , _ipPrettyPrint = True
    , _ipProject = pIpProject_
    , _ipUserIp = Nothing
    , _ipKey = Nothing
    , _ipOauthToken = Nothing
    , _ipFields = Nothing
    , _ipAlt = JSON
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
ipUserIp :: Lens' InstancesPatch' (Maybe Text)
ipUserIp = lens _ipUserIp (\ s a -> s{_ipUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ipKey :: Lens' InstancesPatch' (Maybe Text)
ipKey = lens _ipKey (\ s a -> s{_ipKey = a})

-- | OAuth 2.0 token for the current user.
ipOauthToken :: Lens' InstancesPatch' (Maybe Text)
ipOauthToken
  = lens _ipOauthToken (\ s a -> s{_ipOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ipFields :: Lens' InstancesPatch' (Maybe Text)
ipFields = lens _ipFields (\ s a -> s{_ipFields = a})

-- | Data format for the response.
ipAlt :: Lens' InstancesPatch' Alt
ipAlt = lens _ipAlt (\ s a -> s{_ipAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
ipInstance :: Lens' InstancesPatch' Text
ipInstance
  = lens _ipInstance (\ s a -> s{_ipInstance = a})

instance GoogleRequest InstancesPatch' where
        type Rs InstancesPatch' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesPatch'{..}
          = go _ipQuotaUser (Just _ipPrettyPrint) _ipProject
              _ipUserIp
              _ipKey
              _ipOauthToken
              _ipFields
              (Just _ipAlt)
              _ipInstance
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesPatchAPI)
                      r
                      u
