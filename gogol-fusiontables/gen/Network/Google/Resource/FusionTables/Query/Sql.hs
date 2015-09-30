{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Query.Sql
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Executes a Fusion Tables SQL statement, which can be any of - SELECT -
-- INSERT - UPDATE - DELETE - SHOW - DESCRIBE - CREATE statement.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesQuerySql@.
module FusionTables.Query.Sql
    (
    -- * REST Resource
      QuerySqlAPI

    -- * Creating a Request
    , querySql
    , QuerySql

    -- * Request Lenses
    , qsTyped
    , qsQuotaUser
    , qsPrettyPrint
    , qsHdrs
    , qsUserIp
    , qsKey
    , qsOauthToken
    , qsSql
    , qsFields
    , qsAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesQuerySql@ which the
-- 'QuerySql' request conforms to.
type QuerySqlAPI =
     "query" :>
       QueryParam "typed" Bool :>
         QueryParam "hdrs" Bool :>
           QueryParam "sql" Text :> Post '[JSON] Sqlresponse

-- | Executes a Fusion Tables SQL statement, which can be any of - SELECT -
-- INSERT - UPDATE - DELETE - SHOW - DESCRIBE - CREATE statement.
--
-- /See:/ 'querySql' smart constructor.
data QuerySql = QuerySql
    { _qsTyped       :: !(Maybe Bool)
    , _qsQuotaUser   :: !(Maybe Text)
    , _qsPrettyPrint :: !Bool
    , _qsHdrs        :: !(Maybe Bool)
    , _qsUserIp      :: !(Maybe Text)
    , _qsKey         :: !(Maybe Text)
    , _qsOauthToken  :: !(Maybe Text)
    , _qsSql         :: !Text
    , _qsFields      :: !(Maybe Text)
    , _qsAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuerySql'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsTyped'
--
-- * 'qsQuotaUser'
--
-- * 'qsPrettyPrint'
--
-- * 'qsHdrs'
--
-- * 'qsUserIp'
--
-- * 'qsKey'
--
-- * 'qsOauthToken'
--
-- * 'qsSql'
--
-- * 'qsFields'
--
-- * 'qsAlt'
querySql
    :: Text -- ^ 'sql'
    -> QuerySql
querySql pQsSql_ =
    QuerySql
    { _qsTyped = Nothing
    , _qsQuotaUser = Nothing
    , _qsPrettyPrint = True
    , _qsHdrs = Nothing
    , _qsUserIp = Nothing
    , _qsKey = Nothing
    , _qsOauthToken = Nothing
    , _qsSql = pQsSql_
    , _qsFields = Nothing
    , _qsAlt = "json"
    }

-- | Whether typed values are returned in the (JSON) response: numbers for
-- numeric values and parsed geometries for KML values. Default is true.
qsTyped :: Lens' QuerySql' (Maybe Bool)
qsTyped = lens _qsTyped (\ s a -> s{_qsTyped = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qsQuotaUser :: Lens' QuerySql' (Maybe Text)
qsQuotaUser
  = lens _qsQuotaUser (\ s a -> s{_qsQuotaUser = a})

-- | Returns response with indentations and line breaks.
qsPrettyPrint :: Lens' QuerySql' Bool
qsPrettyPrint
  = lens _qsPrettyPrint
      (\ s a -> s{_qsPrettyPrint = a})

-- | Whether column names are included in the first row. Default is true.
qsHdrs :: Lens' QuerySql' (Maybe Bool)
qsHdrs = lens _qsHdrs (\ s a -> s{_qsHdrs = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qsUserIp :: Lens' QuerySql' (Maybe Text)
qsUserIp = lens _qsUserIp (\ s a -> s{_qsUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qsKey :: Lens' QuerySql' (Maybe Text)
qsKey = lens _qsKey (\ s a -> s{_qsKey = a})

-- | OAuth 2.0 token for the current user.
qsOauthToken :: Lens' QuerySql' (Maybe Text)
qsOauthToken
  = lens _qsOauthToken (\ s a -> s{_qsOauthToken = a})

-- | A Fusion Tables SQL statement, which can be any of - SELECT - INSERT -
-- UPDATE - DELETE - SHOW - DESCRIBE - CREATE
qsSql :: Lens' QuerySql' Text
qsSql = lens _qsSql (\ s a -> s{_qsSql = a})

-- | Selector specifying which fields to include in a partial response.
qsFields :: Lens' QuerySql' (Maybe Text)
qsFields = lens _qsFields (\ s a -> s{_qsFields = a})

-- | Data format for the response.
qsAlt :: Lens' QuerySql' Text
qsAlt = lens _qsAlt (\ s a -> s{_qsAlt = a})

instance GoogleRequest QuerySql' where
        type Rs QuerySql' = Sqlresponse
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u QuerySql{..}
          = go _qsTyped _qsQuotaUser _qsPrettyPrint _qsHdrs
              _qsUserIp
              _qsKey
              _qsOauthToken
              (Just _qsSql)
              _qsFields
              _qsAlt
          where go
                  = clientWithRoute (Proxy :: Proxy QuerySqlAPI) r u
