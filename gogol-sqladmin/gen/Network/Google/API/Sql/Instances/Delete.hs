{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.Instances.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.delete@.
module Network.Google.API.Sql.Instances.Delete
    (
    -- * REST Resource
      InstancesDeleteAPI

    -- * Creating a Request
    , instancesDelete'
    , InstancesDelete'

    -- * Request Lenses
    , idQuotaUser
    , idPrettyPrint
    , idProject
    , idUserIp
    , idKey
    , idOauthToken
    , idFields
    , idAlt
    , idInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.instances.delete which the
-- 'InstancesDelete'' request conforms to.
type InstancesDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes a Cloud SQL instance.
--
-- /See:/ 'instancesDelete'' smart constructor.
data InstancesDelete' = InstancesDelete'
    { _idQuotaUser   :: !(Maybe Text)
    , _idPrettyPrint :: !Bool
    , _idProject     :: !Text
    , _idUserIp      :: !(Maybe Text)
    , _idKey         :: !(Maybe Text)
    , _idOauthToken  :: !(Maybe Text)
    , _idFields      :: !(Maybe Text)
    , _idAlt         :: !Alt
    , _idInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idQuotaUser'
--
-- * 'idPrettyPrint'
--
-- * 'idProject'
--
-- * 'idUserIp'
--
-- * 'idKey'
--
-- * 'idOauthToken'
--
-- * 'idFields'
--
-- * 'idAlt'
--
-- * 'idInstance'
instancesDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesDelete'
instancesDelete' pIdProject_ pIdInstance_ =
    InstancesDelete'
    { _idQuotaUser = Nothing
    , _idPrettyPrint = True
    , _idProject = pIdProject_
    , _idUserIp = Nothing
    , _idKey = Nothing
    , _idOauthToken = Nothing
    , _idFields = Nothing
    , _idAlt = JSON
    , _idInstance = pIdInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
idQuotaUser :: Lens' InstancesDelete' (Maybe Text)
idQuotaUser
  = lens _idQuotaUser (\ s a -> s{_idQuotaUser = a})

-- | Returns response with indentations and line breaks.
idPrettyPrint :: Lens' InstancesDelete' Bool
idPrettyPrint
  = lens _idPrettyPrint
      (\ s a -> s{_idPrettyPrint = a})

-- | Project ID of the project that contains the instance to be deleted.
idProject :: Lens' InstancesDelete' Text
idProject
  = lens _idProject (\ s a -> s{_idProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
idUserIp :: Lens' InstancesDelete' (Maybe Text)
idUserIp = lens _idUserIp (\ s a -> s{_idUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
idKey :: Lens' InstancesDelete' (Maybe Text)
idKey = lens _idKey (\ s a -> s{_idKey = a})

-- | OAuth 2.0 token for the current user.
idOauthToken :: Lens' InstancesDelete' (Maybe Text)
idOauthToken
  = lens _idOauthToken (\ s a -> s{_idOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
idFields :: Lens' InstancesDelete' (Maybe Text)
idFields = lens _idFields (\ s a -> s{_idFields = a})

-- | Data format for the response.
idAlt :: Lens' InstancesDelete' Alt
idAlt = lens _idAlt (\ s a -> s{_idAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
idInstance :: Lens' InstancesDelete' Text
idInstance
  = lens _idInstance (\ s a -> s{_idInstance = a})

instance GoogleRequest InstancesDelete' where
        type Rs InstancesDelete' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesDelete'{..}
          = go _idQuotaUser (Just _idPrettyPrint) _idProject
              _idUserIp
              _idKey
              _idOauthToken
              _idFields
              (Just _idAlt)
              _idInstance
          where go
                  = clientWithRoute (Proxy :: Proxy InstancesDeleteAPI)
                      r
                      u
