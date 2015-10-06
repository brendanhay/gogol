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
-- Module      : Network.Google.Resource.SQL.Databases.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance. This method supports patch semantics.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLDatabasesPatch@.
module Network.Google.Resource.SQL.Databases.Patch
    (
    -- * REST Resource
      DatabasesPatchResource

    -- * Creating a Request
    , databasesPatch'
    , DatabasesPatch'

    -- * Request Lenses
    , dpQuotaUser
    , dpPrettyPrint
    , dpProject
    , dpDatabase
    , dpUserIP
    , dpPayload
    , dpKey
    , dpOAuthToken
    , dpFields
    , dpInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLDatabasesPatch@ which the
-- 'DatabasesPatch'' request conforms to.
type DatabasesPatchResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "databases" :>
               Capture "database" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Database :>
                                 Patch '[JSON] Operation

-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance. This method supports patch semantics.
--
-- /See:/ 'databasesPatch'' smart constructor.
data DatabasesPatch' = DatabasesPatch'
    { _dpQuotaUser   :: !(Maybe Text)
    , _dpPrettyPrint :: !Bool
    , _dpProject     :: !Text
    , _dpDatabase    :: !Text
    , _dpUserIP      :: !(Maybe Text)
    , _dpPayload     :: !Database
    , _dpKey         :: !(Maybe AuthKey)
    , _dpOAuthToken  :: !(Maybe OAuthToken)
    , _dpFields      :: !(Maybe Text)
    , _dpInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpQuotaUser'
--
-- * 'dpPrettyPrint'
--
-- * 'dpProject'
--
-- * 'dpDatabase'
--
-- * 'dpUserIP'
--
-- * 'dpPayload'
--
-- * 'dpKey'
--
-- * 'dpOAuthToken'
--
-- * 'dpFields'
--
-- * 'dpInstance'
databasesPatch'
    :: Text -- ^ 'project'
    -> Text -- ^ 'database'
    -> Database -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> DatabasesPatch'
databasesPatch' pDpProject_ pDpDatabase_ pDpPayload_ pDpInstance_ =
    DatabasesPatch'
    { _dpQuotaUser = Nothing
    , _dpPrettyPrint = True
    , _dpProject = pDpProject_
    , _dpDatabase = pDpDatabase_
    , _dpUserIP = Nothing
    , _dpPayload = pDpPayload_
    , _dpKey = Nothing
    , _dpOAuthToken = Nothing
    , _dpFields = Nothing
    , _dpInstance = pDpInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dpQuotaUser :: Lens' DatabasesPatch' (Maybe Text)
dpQuotaUser
  = lens _dpQuotaUser (\ s a -> s{_dpQuotaUser = a})

-- | Returns response with indentations and line breaks.
dpPrettyPrint :: Lens' DatabasesPatch' Bool
dpPrettyPrint
  = lens _dpPrettyPrint
      (\ s a -> s{_dpPrettyPrint = a})

-- | Project ID of the project that contains the instance.
dpProject :: Lens' DatabasesPatch' Text
dpProject
  = lens _dpProject (\ s a -> s{_dpProject = a})

-- | Name of the database to be updated in the instance.
dpDatabase :: Lens' DatabasesPatch' Text
dpDatabase
  = lens _dpDatabase (\ s a -> s{_dpDatabase = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dpUserIP :: Lens' DatabasesPatch' (Maybe Text)
dpUserIP = lens _dpUserIP (\ s a -> s{_dpUserIP = a})

-- | Multipart request metadata.
dpPayload :: Lens' DatabasesPatch' Database
dpPayload
  = lens _dpPayload (\ s a -> s{_dpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dpKey :: Lens' DatabasesPatch' (Maybe AuthKey)
dpKey = lens _dpKey (\ s a -> s{_dpKey = a})

-- | OAuth 2.0 token for the current user.
dpOAuthToken :: Lens' DatabasesPatch' (Maybe OAuthToken)
dpOAuthToken
  = lens _dpOAuthToken (\ s a -> s{_dpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dpFields :: Lens' DatabasesPatch' (Maybe Text)
dpFields = lens _dpFields (\ s a -> s{_dpFields = a})

-- | Database instance ID. This does not include the project ID.
dpInstance :: Lens' DatabasesPatch' Text
dpInstance
  = lens _dpInstance (\ s a -> s{_dpInstance = a})

instance GoogleAuth DatabasesPatch' where
        authKey = dpKey . _Just
        authToken = dpOAuthToken . _Just

instance GoogleRequest DatabasesPatch' where
        type Rs DatabasesPatch' = Operation
        request = requestWith sQLAdminRequest
        requestWith rq DatabasesPatch'{..}
          = go _dpProject _dpInstance _dpDatabase _dpQuotaUser
              (Just _dpPrettyPrint)
              _dpUserIP
              _dpFields
              _dpKey
              _dpOAuthToken
              (Just AltJSON)
              _dpPayload
          where go
                  = clientBuild (Proxy :: Proxy DatabasesPatchResource)
                      rq
