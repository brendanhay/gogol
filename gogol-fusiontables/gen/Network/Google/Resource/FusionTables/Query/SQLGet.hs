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
-- Module      : Network.Google.Resource.FusionTables.Query.SQLGet
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Executes a SQL statement which can be any of - SELECT - SHOW - DESCRIBE
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesQuerySQLGet@.
module Network.Google.Resource.FusionTables.Query.SQLGet
    (
    -- * REST Resource
      QuerySQLGetResource

    -- * Creating a Request
    , querySQLGet'
    , QuerySQLGet'

    -- * Request Lenses
    , qsqlgTyped
    , qsqlgQuotaUser
    , qsqlgPrettyPrint
    , qsqlgHdrs
    , qsqlgUserIP
    , qsqlgKey
    , qsqlgOAuthToken
    , qsqlgSQL
    , qsqlgFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesQuerySQLGet@ which the
-- 'QuerySQLGet'' request conforms to.
type QuerySQLGetResource =
     "query" :>
       QueryParam "sql" Text :>
         QueryParam "typed" Bool :>
           QueryParam "hdrs" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] SQLresponse
       :<|>
       "query" :>
         QueryParam "sql" Text :>
           QueryParam "typed" Bool :>
             QueryParam "hdrs" Bool :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltMedia :> Get '[OctetStream] Body

-- | Executes a SQL statement which can be any of - SELECT - SHOW - DESCRIBE
--
-- /See:/ 'querySQLGet'' smart constructor.
data QuerySQLGet' = QuerySQLGet'
    { _qsqlgTyped       :: !(Maybe Bool)
    , _qsqlgQuotaUser   :: !(Maybe Text)
    , _qsqlgPrettyPrint :: !Bool
    , _qsqlgHdrs        :: !(Maybe Bool)
    , _qsqlgUserIP      :: !(Maybe Text)
    , _qsqlgKey         :: !(Maybe AuthKey)
    , _qsqlgOAuthToken  :: !(Maybe OAuthToken)
    , _qsqlgSQL         :: !Text
    , _qsqlgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuerySQLGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsqlgTyped'
--
-- * 'qsqlgQuotaUser'
--
-- * 'qsqlgPrettyPrint'
--
-- * 'qsqlgHdrs'
--
-- * 'qsqlgUserIP'
--
-- * 'qsqlgKey'
--
-- * 'qsqlgOAuthToken'
--
-- * 'qsqlgSQL'
--
-- * 'qsqlgFields'
querySQLGet'
    :: Text -- ^ 'sql'
    -> QuerySQLGet'
querySQLGet' pQsqlgSQL_ =
    QuerySQLGet'
    { _qsqlgTyped = Nothing
    , _qsqlgQuotaUser = Nothing
    , _qsqlgPrettyPrint = True
    , _qsqlgHdrs = Nothing
    , _qsqlgUserIP = Nothing
    , _qsqlgKey = Nothing
    , _qsqlgOAuthToken = Nothing
    , _qsqlgSQL = pQsqlgSQL_
    , _qsqlgFields = Nothing
    }

-- | Whether typed values are returned in the (JSON) response: numbers for
-- numeric values and parsed geometries for KML values. Default is true.
qsqlgTyped :: Lens' QuerySQLGet' (Maybe Bool)
qsqlgTyped
  = lens _qsqlgTyped (\ s a -> s{_qsqlgTyped = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qsqlgQuotaUser :: Lens' QuerySQLGet' (Maybe Text)
qsqlgQuotaUser
  = lens _qsqlgQuotaUser
      (\ s a -> s{_qsqlgQuotaUser = a})

-- | Returns response with indentations and line breaks.
qsqlgPrettyPrint :: Lens' QuerySQLGet' Bool
qsqlgPrettyPrint
  = lens _qsqlgPrettyPrint
      (\ s a -> s{_qsqlgPrettyPrint = a})

-- | Whether column names are included (in the first row). Default is true.
qsqlgHdrs :: Lens' QuerySQLGet' (Maybe Bool)
qsqlgHdrs
  = lens _qsqlgHdrs (\ s a -> s{_qsqlgHdrs = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qsqlgUserIP :: Lens' QuerySQLGet' (Maybe Text)
qsqlgUserIP
  = lens _qsqlgUserIP (\ s a -> s{_qsqlgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qsqlgKey :: Lens' QuerySQLGet' (Maybe AuthKey)
qsqlgKey = lens _qsqlgKey (\ s a -> s{_qsqlgKey = a})

-- | OAuth 2.0 token for the current user.
qsqlgOAuthToken :: Lens' QuerySQLGet' (Maybe OAuthToken)
qsqlgOAuthToken
  = lens _qsqlgOAuthToken
      (\ s a -> s{_qsqlgOAuthToken = a})

-- | A SQL statement which can be any of - SELECT - SHOW - DESCRIBE
qsqlgSQL :: Lens' QuerySQLGet' Text
qsqlgSQL = lens _qsqlgSQL (\ s a -> s{_qsqlgSQL = a})

-- | Selector specifying which fields to include in a partial response.
qsqlgFields :: Lens' QuerySQLGet' (Maybe Text)
qsqlgFields
  = lens _qsqlgFields (\ s a -> s{_qsqlgFields = a})

instance GoogleAuth QuerySQLGet' where
        authKey = qsqlgKey . _Just
        authToken = qsqlgOAuthToken . _Just

instance GoogleRequest QuerySQLGet' where
        type Rs QuerySQLGet' = SQLresponse
        request = requestWith fusionTablesRequest
        requestWith rq QuerySQLGet'{..}
          = go (Just _qsqlgSQL) _qsqlgTyped _qsqlgHdrs
              _qsqlgQuotaUser
              (Just _qsqlgPrettyPrint)
              _qsqlgUserIP
              _qsqlgFields
              _qsqlgKey
              _qsqlgOAuthToken
              (Just AltJSON)
          where go :<|> _
                  = clientBuild (Proxy :: Proxy QuerySQLGetResource) rq

instance GoogleRequest (MediaDownload QuerySQLGet')
         where
        type Rs (MediaDownload QuerySQLGet') = Body
        request = requestWith fusionTablesRequest
        requestWith rq (MediaDownload QuerySQLGet'{..})
          = go (Just _qsqlgSQL) _qsqlgTyped _qsqlgHdrs
              _qsqlgQuotaUser
              (Just _qsqlgPrettyPrint)
              _qsqlgUserIP
              _qsqlgFields
              _qsqlgKey
              _qsqlgOAuthToken
              (Just AltMedia)
          where _ :<|> go
                  = clientBuild (Proxy :: Proxy QuerySQLGetResource) rq
