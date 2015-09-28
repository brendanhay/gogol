{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Query.SqlGet
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Executes a SQL statement which can be any of - SELECT - SHOW - DESCRIBE
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.query.sqlGet@.
module Network.Google.API.FusionTables.Query.SqlGet
    (
    -- * REST Resource
      QuerySqlGetAPI

    -- * Creating a Request
    , querySqlGet'
    , QuerySqlGet'

    -- * Request Lenses
    , qsgTyped
    , qsgQuotaUser
    , qsgPrettyPrint
    , qsgHdrs
    , qsgUserIp
    , qsgKey
    , qsgOauthToken
    , qsgSql
    , qsgFields
    , qsgAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.query.sqlGet which the
-- 'QuerySqlGet'' request conforms to.
type QuerySqlGetAPI =
     "query" :>
       QueryParam "typed" Bool :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "hdrs" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "sql" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Sqlresponse

-- | Executes a SQL statement which can be any of - SELECT - SHOW - DESCRIBE
--
-- /See:/ 'querySqlGet'' smart constructor.
data QuerySqlGet' = QuerySqlGet'
    { _qsgTyped       :: !(Maybe Bool)
    , _qsgQuotaUser   :: !(Maybe Text)
    , _qsgPrettyPrint :: !Bool
    , _qsgHdrs        :: !(Maybe Bool)
    , _qsgUserIp      :: !(Maybe Text)
    , _qsgKey         :: !(Maybe Text)
    , _qsgOauthToken  :: !(Maybe Text)
    , _qsgSql         :: !Text
    , _qsgFields      :: !(Maybe Text)
    , _qsgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuerySqlGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsgTyped'
--
-- * 'qsgQuotaUser'
--
-- * 'qsgPrettyPrint'
--
-- * 'qsgHdrs'
--
-- * 'qsgUserIp'
--
-- * 'qsgKey'
--
-- * 'qsgOauthToken'
--
-- * 'qsgSql'
--
-- * 'qsgFields'
--
-- * 'qsgAlt'
querySqlGet'
    :: Text -- ^ 'sql'
    -> QuerySqlGet'
querySqlGet' pQsgSql_ =
    QuerySqlGet'
    { _qsgTyped = Nothing
    , _qsgQuotaUser = Nothing
    , _qsgPrettyPrint = True
    , _qsgHdrs = Nothing
    , _qsgUserIp = Nothing
    , _qsgKey = Nothing
    , _qsgOauthToken = Nothing
    , _qsgSql = pQsgSql_
    , _qsgFields = Nothing
    , _qsgAlt = JSON
    }

-- | Whether typed values are returned in the (JSON) response: numbers for
-- numeric values and parsed geometries for KML values. Default is true.
qsgTyped :: Lens' QuerySqlGet' (Maybe Bool)
qsgTyped = lens _qsgTyped (\ s a -> s{_qsgTyped = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qsgQuotaUser :: Lens' QuerySqlGet' (Maybe Text)
qsgQuotaUser
  = lens _qsgQuotaUser (\ s a -> s{_qsgQuotaUser = a})

-- | Returns response with indentations and line breaks.
qsgPrettyPrint :: Lens' QuerySqlGet' Bool
qsgPrettyPrint
  = lens _qsgPrettyPrint
      (\ s a -> s{_qsgPrettyPrint = a})

-- | Whether column names are included (in the first row). Default is true.
qsgHdrs :: Lens' QuerySqlGet' (Maybe Bool)
qsgHdrs = lens _qsgHdrs (\ s a -> s{_qsgHdrs = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qsgUserIp :: Lens' QuerySqlGet' (Maybe Text)
qsgUserIp
  = lens _qsgUserIp (\ s a -> s{_qsgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qsgKey :: Lens' QuerySqlGet' (Maybe Text)
qsgKey = lens _qsgKey (\ s a -> s{_qsgKey = a})

-- | OAuth 2.0 token for the current user.
qsgOauthToken :: Lens' QuerySqlGet' (Maybe Text)
qsgOauthToken
  = lens _qsgOauthToken
      (\ s a -> s{_qsgOauthToken = a})

-- | A SQL statement which can be any of - SELECT - SHOW - DESCRIBE
qsgSql :: Lens' QuerySqlGet' Text
qsgSql = lens _qsgSql (\ s a -> s{_qsgSql = a})

-- | Selector specifying which fields to include in a partial response.
qsgFields :: Lens' QuerySqlGet' (Maybe Text)
qsgFields
  = lens _qsgFields (\ s a -> s{_qsgFields = a})

-- | Data format for the response.
qsgAlt :: Lens' QuerySqlGet' Alt
qsgAlt = lens _qsgAlt (\ s a -> s{_qsgAlt = a})

instance GoogleRequest QuerySqlGet' where
        type Rs QuerySqlGet' = Sqlresponse
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u QuerySqlGet'{..}
          = go _qsgTyped _qsgQuotaUser (Just _qsgPrettyPrint)
              _qsgHdrs
              _qsgUserIp
              _qsgKey
              _qsgOauthToken
              (Just _qsgSql)
              _qsgFields
              (Just _qsgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy QuerySqlGetAPI) r u
