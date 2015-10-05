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
-- Module      : Network.Google.Resource.SQL.Instances.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesDelete@.
module Network.Google.Resource.SQL.Instances.Delete
    (
    -- * REST Resource
      InstancesDeleteResource

    -- * Creating a Request
    , instancesDelete'
    , InstancesDelete'

    -- * Request Lenses
    , idQuotaUser
    , idPrettyPrint
    , idProject
    , idUserIP
    , idKey
    , idOAuthToken
    , idFields
    , idInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesDelete@ which the
-- 'InstancesDelete'' request conforms to.
type InstancesDeleteResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a Cloud SQL instance.
--
-- /See:/ 'instancesDelete'' smart constructor.
data InstancesDelete' = InstancesDelete'
    { _idQuotaUser   :: !(Maybe Text)
    , _idPrettyPrint :: !Bool
    , _idProject     :: !Text
    , _idUserIP      :: !(Maybe Text)
    , _idKey         :: !(Maybe AuthKey)
    , _idOAuthToken  :: !(Maybe OAuthToken)
    , _idFields      :: !(Maybe Text)
    , _idInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'idUserIP'
--
-- * 'idKey'
--
-- * 'idOAuthToken'
--
-- * 'idFields'
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
    , _idUserIP = Nothing
    , _idKey = Nothing
    , _idOAuthToken = Nothing
    , _idFields = Nothing
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
idUserIP :: Lens' InstancesDelete' (Maybe Text)
idUserIP = lens _idUserIP (\ s a -> s{_idUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
idKey :: Lens' InstancesDelete' (Maybe AuthKey)
idKey = lens _idKey (\ s a -> s{_idKey = a})

-- | OAuth 2.0 token for the current user.
idOAuthToken :: Lens' InstancesDelete' (Maybe OAuthToken)
idOAuthToken
  = lens _idOAuthToken (\ s a -> s{_idOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
idFields :: Lens' InstancesDelete' (Maybe Text)
idFields = lens _idFields (\ s a -> s{_idFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
idInstance :: Lens' InstancesDelete' Text
idInstance
  = lens _idInstance (\ s a -> s{_idInstance = a})

instance GoogleAuth InstancesDelete' where
        authKey = idKey . _Just
        authToken = idOAuthToken . _Just

instance GoogleRequest InstancesDelete' where
        type Rs InstancesDelete' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesDelete'{..}
          = go _idProject _idInstance _idQuotaUser
              (Just _idPrettyPrint)
              _idUserIP
              _idFields
              _idKey
              _idOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesDeleteResource)
                      r
                      u
