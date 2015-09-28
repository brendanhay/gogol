{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.Instances.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates settings of a Cloud SQL instance. Caution: This is not a partial
-- update, so you must include values for all the settings that you want to
-- retain. For partial updates, use patch.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.update@.
module Network.Google.API.Sql.Instances.Update
    (
    -- * REST Resource
      InstancesUpdateAPI

    -- * Creating a Request
    , instancesUpdate'
    , InstancesUpdate'

    -- * Request Lenses
    , iuQuotaUser
    , iuPrettyPrint
    , iuProject
    , iuUserIp
    , iuKey
    , iuOauthToken
    , iuFields
    , iuAlt
    , iuInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.instances.update which the
-- 'InstancesUpdate'' request conforms to.
type InstancesUpdateAPI =
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
                         QueryParam "alt" Alt :> Put '[JSON] Operation

-- | Updates settings of a Cloud SQL instance. Caution: This is not a partial
-- update, so you must include values for all the settings that you want to
-- retain. For partial updates, use patch.
--
-- /See:/ 'instancesUpdate'' smart constructor.
data InstancesUpdate' = InstancesUpdate'
    { _iuQuotaUser   :: !(Maybe Text)
    , _iuPrettyPrint :: !Bool
    , _iuProject     :: !Text
    , _iuUserIp      :: !(Maybe Text)
    , _iuKey         :: !(Maybe Text)
    , _iuOauthToken  :: !(Maybe Text)
    , _iuFields      :: !(Maybe Text)
    , _iuAlt         :: !Alt
    , _iuInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuQuotaUser'
--
-- * 'iuPrettyPrint'
--
-- * 'iuProject'
--
-- * 'iuUserIp'
--
-- * 'iuKey'
--
-- * 'iuOauthToken'
--
-- * 'iuFields'
--
-- * 'iuAlt'
--
-- * 'iuInstance'
instancesUpdate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesUpdate'
instancesUpdate' pIuProject_ pIuInstance_ =
    InstancesUpdate'
    { _iuQuotaUser = Nothing
    , _iuPrettyPrint = True
    , _iuProject = pIuProject_
    , _iuUserIp = Nothing
    , _iuKey = Nothing
    , _iuOauthToken = Nothing
    , _iuFields = Nothing
    , _iuAlt = JSON
    , _iuInstance = pIuInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iuQuotaUser :: Lens' InstancesUpdate' (Maybe Text)
iuQuotaUser
  = lens _iuQuotaUser (\ s a -> s{_iuQuotaUser = a})

-- | Returns response with indentations and line breaks.
iuPrettyPrint :: Lens' InstancesUpdate' Bool
iuPrettyPrint
  = lens _iuPrettyPrint
      (\ s a -> s{_iuPrettyPrint = a})

-- | Project ID of the project that contains the instance.
iuProject :: Lens' InstancesUpdate' Text
iuProject
  = lens _iuProject (\ s a -> s{_iuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iuUserIp :: Lens' InstancesUpdate' (Maybe Text)
iuUserIp = lens _iuUserIp (\ s a -> s{_iuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iuKey :: Lens' InstancesUpdate' (Maybe Text)
iuKey = lens _iuKey (\ s a -> s{_iuKey = a})

-- | OAuth 2.0 token for the current user.
iuOauthToken :: Lens' InstancesUpdate' (Maybe Text)
iuOauthToken
  = lens _iuOauthToken (\ s a -> s{_iuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iuFields :: Lens' InstancesUpdate' (Maybe Text)
iuFields = lens _iuFields (\ s a -> s{_iuFields = a})

-- | Data format for the response.
iuAlt :: Lens' InstancesUpdate' Alt
iuAlt = lens _iuAlt (\ s a -> s{_iuAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
iuInstance :: Lens' InstancesUpdate' Text
iuInstance
  = lens _iuInstance (\ s a -> s{_iuInstance = a})

instance GoogleRequest InstancesUpdate' where
        type Rs InstancesUpdate' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesUpdate'{..}
          = go _iuQuotaUser (Just _iuPrettyPrint) _iuProject
              _iuUserIp
              _iuKey
              _iuOauthToken
              _iuFields
              (Just _iuAlt)
              _iuInstance
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesUpdateAPI)
                      r
                      u
