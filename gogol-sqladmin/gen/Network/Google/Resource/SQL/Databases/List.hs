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
-- Module      : Network.Google.Resource.SQL.Databases.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists databases in the specified Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLDatabasesList@.
module Network.Google.Resource.SQL.Databases.List
    (
    -- * REST Resource
      DatabasesListResource

    -- * Creating a Request
    , databasesList'
    , DatabasesList'

    -- * Request Lenses
    , dlQuotaUser
    , dlPrettyPrint
    , dlProject
    , dlUserIP
    , dlKey
    , dlOAuthToken
    , dlFields
    , dlInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLDatabasesList@ which the
-- 'DatabasesList'' request conforms to.
type DatabasesListResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "databases" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] DatabasesListResponse

-- | Lists databases in the specified Cloud SQL instance.
--
-- /See:/ 'databasesList'' smart constructor.
data DatabasesList' = DatabasesList'
    { _dlQuotaUser   :: !(Maybe Text)
    , _dlPrettyPrint :: !Bool
    , _dlProject     :: !Text
    , _dlUserIP      :: !(Maybe Text)
    , _dlKey         :: !(Maybe AuthKey)
    , _dlOAuthToken  :: !(Maybe OAuthToken)
    , _dlFields      :: !(Maybe Text)
    , _dlInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQuotaUser'
--
-- * 'dlPrettyPrint'
--
-- * 'dlProject'
--
-- * 'dlUserIP'
--
-- * 'dlKey'
--
-- * 'dlOAuthToken'
--
-- * 'dlFields'
--
-- * 'dlInstance'
databasesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> DatabasesList'
databasesList' pDlProject_ pDlInstance_ =
    DatabasesList'
    { _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlProject = pDlProject_
    , _dlUserIP = Nothing
    , _dlKey = Nothing
    , _dlOAuthToken = Nothing
    , _dlFields = Nothing
    , _dlInstance = pDlInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dlQuotaUser :: Lens' DatabasesList' (Maybe Text)
dlQuotaUser
  = lens _dlQuotaUser (\ s a -> s{_dlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dlPrettyPrint :: Lens' DatabasesList' Bool
dlPrettyPrint
  = lens _dlPrettyPrint
      (\ s a -> s{_dlPrettyPrint = a})

-- | Project ID of the project for which to list Cloud SQL instances.
dlProject :: Lens' DatabasesList' Text
dlProject
  = lens _dlProject (\ s a -> s{_dlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dlUserIP :: Lens' DatabasesList' (Maybe Text)
dlUserIP = lens _dlUserIP (\ s a -> s{_dlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DatabasesList' (Maybe AuthKey)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

-- | OAuth 2.0 token for the current user.
dlOAuthToken :: Lens' DatabasesList' (Maybe OAuthToken)
dlOAuthToken
  = lens _dlOAuthToken (\ s a -> s{_dlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DatabasesList' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
dlInstance :: Lens' DatabasesList' Text
dlInstance
  = lens _dlInstance (\ s a -> s{_dlInstance = a})

instance GoogleAuth DatabasesList' where
        authKey = dlKey . _Just
        authToken = dlOAuthToken . _Just

instance GoogleRequest DatabasesList' where
        type Rs DatabasesList' = DatabasesListResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u DatabasesList'{..}
          = go _dlProject _dlInstance _dlQuotaUser
              (Just _dlPrettyPrint)
              _dlUserIP
              _dlFields
              _dlKey
              _dlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DatabasesListResource)
                      r
                      u
