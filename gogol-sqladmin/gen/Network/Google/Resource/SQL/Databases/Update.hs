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
-- Module      : Network.Google.Resource.SQL.Databases.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLDatabasesUpdate@.
module Network.Google.Resource.SQL.Databases.Update
    (
    -- * REST Resource
      DatabasesUpdateResource

    -- * Creating a Request
    , databasesUpdate'
    , DatabasesUpdate'

    -- * Request Lenses
    , duQuotaUser
    , duPrettyPrint
    , duProject
    , duDatabase
    , duUserIP
    , duPayload
    , duKey
    , duOAuthToken
    , duFields
    , duInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLDatabasesUpdate@ method which the
-- 'DatabasesUpdate'' request conforms to.
type DatabasesUpdateResource =
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
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Database :> Put '[JSON] Operation

-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesUpdate'' smart constructor.
data DatabasesUpdate' = DatabasesUpdate'
    { _duQuotaUser   :: !(Maybe Text)
    , _duPrettyPrint :: !Bool
    , _duProject     :: !Text
    , _duDatabase    :: !Text
    , _duUserIP      :: !(Maybe Text)
    , _duPayload     :: !Database
    , _duKey         :: !(Maybe AuthKey)
    , _duOAuthToken  :: !(Maybe OAuthToken)
    , _duFields      :: !(Maybe Text)
    , _duInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duQuotaUser'
--
-- * 'duPrettyPrint'
--
-- * 'duProject'
--
-- * 'duDatabase'
--
-- * 'duUserIP'
--
-- * 'duPayload'
--
-- * 'duKey'
--
-- * 'duOAuthToken'
--
-- * 'duFields'
--
-- * 'duInstance'
databasesUpdate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'database'
    -> Database -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> DatabasesUpdate'
databasesUpdate' pDuProject_ pDuDatabase_ pDuPayload_ pDuInstance_ =
    DatabasesUpdate'
    { _duQuotaUser = Nothing
    , _duPrettyPrint = True
    , _duProject = pDuProject_
    , _duDatabase = pDuDatabase_
    , _duUserIP = Nothing
    , _duPayload = pDuPayload_
    , _duKey = Nothing
    , _duOAuthToken = Nothing
    , _duFields = Nothing
    , _duInstance = pDuInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
duQuotaUser :: Lens' DatabasesUpdate' (Maybe Text)
duQuotaUser
  = lens _duQuotaUser (\ s a -> s{_duQuotaUser = a})

-- | Returns response with indentations and line breaks.
duPrettyPrint :: Lens' DatabasesUpdate' Bool
duPrettyPrint
  = lens _duPrettyPrint
      (\ s a -> s{_duPrettyPrint = a})

-- | Project ID of the project that contains the instance.
duProject :: Lens' DatabasesUpdate' Text
duProject
  = lens _duProject (\ s a -> s{_duProject = a})

-- | Name of the database to be updated in the instance.
duDatabase :: Lens' DatabasesUpdate' Text
duDatabase
  = lens _duDatabase (\ s a -> s{_duDatabase = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
duUserIP :: Lens' DatabasesUpdate' (Maybe Text)
duUserIP = lens _duUserIP (\ s a -> s{_duUserIP = a})

-- | Multipart request metadata.
duPayload :: Lens' DatabasesUpdate' Database
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
duKey :: Lens' DatabasesUpdate' (Maybe AuthKey)
duKey = lens _duKey (\ s a -> s{_duKey = a})

-- | OAuth 2.0 token for the current user.
duOAuthToken :: Lens' DatabasesUpdate' (Maybe OAuthToken)
duOAuthToken
  = lens _duOAuthToken (\ s a -> s{_duOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
duFields :: Lens' DatabasesUpdate' (Maybe Text)
duFields = lens _duFields (\ s a -> s{_duFields = a})

-- | Database instance ID. This does not include the project ID.
duInstance :: Lens' DatabasesUpdate' Text
duInstance
  = lens _duInstance (\ s a -> s{_duInstance = a})

instance GoogleAuth DatabasesUpdate' where
        _AuthKey = duKey . _Just
        _AuthToken = duOAuthToken . _Just

instance GoogleRequest DatabasesUpdate' where
        type Rs DatabasesUpdate' = Operation
        request = requestWith sQLAdminRequest
        requestWith rq DatabasesUpdate'{..}
          = go _duProject _duInstance _duDatabase _duQuotaUser
              (Just _duPrettyPrint)
              _duUserIP
              _duFields
              _duKey
              _duOAuthToken
              (Just AltJSON)
              _duPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DatabasesUpdateResource)
                      rq
