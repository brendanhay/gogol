{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Query.SQL
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Executes a Fusion Tables SQL statement, which can be any of - SELECT -
-- INSERT - UPDATE - DELETE - SHOW - DESCRIBE - CREATE statement.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesQuerySQL@.
module Network.Google.Resource.FusionTables.Query.SQL
    (
    -- * REST Resource
      QuerySqlResource

    -- * Creating a Request
    , querySQL'
    , QuerySQL'

    -- * Request Lenses
    , qsqlTyped
    , qsqlQuotaUser
    , qsqlPrettyPrint
    , qsqlHdrs
    , qsqlUserIP
    , qsqlKey
    , qsqlOAuthToken
    , qsqlSQL
    , qsqlFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesQuerySQL@ which the
-- 'QuerySQL'' request conforms to.
type QuerySqlResource =
     "query" :>
       QueryParam "typed" Bool :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "hdrs" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "sql" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] SQLresponse
       :<|>
       "query" :>
         QueryParam "typed" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "hdrs" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "sql" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Media :> Post '[OctetStream] Stream

-- | Executes a Fusion Tables SQL statement, which can be any of - SELECT -
-- INSERT - UPDATE - DELETE - SHOW - DESCRIBE - CREATE statement.
--
-- /See:/ 'querySQL'' smart constructor.
data QuerySQL' = QuerySQL'
    { _qsqlTyped       :: !(Maybe Bool)
    , _qsqlQuotaUser   :: !(Maybe Text)
    , _qsqlPrettyPrint :: !Bool
    , _qsqlHdrs        :: !(Maybe Bool)
    , _qsqlUserIP      :: !(Maybe Text)
    , _qsqlKey         :: !(Maybe Key)
    , _qsqlOAuthToken  :: !(Maybe OAuthToken)
    , _qsqlSQL         :: !Text
    , _qsqlFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuerySQL'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsqlTyped'
--
-- * 'qsqlQuotaUser'
--
-- * 'qsqlPrettyPrint'
--
-- * 'qsqlHdrs'
--
-- * 'qsqlUserIP'
--
-- * 'qsqlKey'
--
-- * 'qsqlOAuthToken'
--
-- * 'qsqlSQL'
--
-- * 'qsqlFields'
querySQL'
    :: Text -- ^ 'sql'
    -> QuerySQL'
querySQL' pQsqlSQL_ =
    QuerySQL'
    { _qsqlTyped = Nothing
    , _qsqlQuotaUser = Nothing
    , _qsqlPrettyPrint = True
    , _qsqlHdrs = Nothing
    , _qsqlUserIP = Nothing
    , _qsqlKey = Nothing
    , _qsqlOAuthToken = Nothing
    , _qsqlSQL = pQsqlSQL_
    , _qsqlFields = Nothing
    }

-- | Whether typed values are returned in the (JSON) response: numbers for
-- numeric values and parsed geometries for KML values. Default is true.
qsqlTyped :: Lens' QuerySQL' (Maybe Bool)
qsqlTyped
  = lens _qsqlTyped (\ s a -> s{_qsqlTyped = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qsqlQuotaUser :: Lens' QuerySQL' (Maybe Text)
qsqlQuotaUser
  = lens _qsqlQuotaUser
      (\ s a -> s{_qsqlQuotaUser = a})

-- | Returns response with indentations and line breaks.
qsqlPrettyPrint :: Lens' QuerySQL' Bool
qsqlPrettyPrint
  = lens _qsqlPrettyPrint
      (\ s a -> s{_qsqlPrettyPrint = a})

-- | Whether column names are included in the first row. Default is true.
qsqlHdrs :: Lens' QuerySQL' (Maybe Bool)
qsqlHdrs = lens _qsqlHdrs (\ s a -> s{_qsqlHdrs = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qsqlUserIP :: Lens' QuerySQL' (Maybe Text)
qsqlUserIP
  = lens _qsqlUserIP (\ s a -> s{_qsqlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qsqlKey :: Lens' QuerySQL' (Maybe Key)
qsqlKey = lens _qsqlKey (\ s a -> s{_qsqlKey = a})

-- | OAuth 2.0 token for the current user.
qsqlOAuthToken :: Lens' QuerySQL' (Maybe OAuthToken)
qsqlOAuthToken
  = lens _qsqlOAuthToken
      (\ s a -> s{_qsqlOAuthToken = a})

-- | A Fusion Tables SQL statement, which can be any of - SELECT - INSERT -
-- UPDATE - DELETE - SHOW - DESCRIBE - CREATE
qsqlSQL :: Lens' QuerySQL' Text
qsqlSQL = lens _qsqlSQL (\ s a -> s{_qsqlSQL = a})

-- | Selector specifying which fields to include in a partial response.
qsqlFields :: Lens' QuerySQL' (Maybe Text)
qsqlFields
  = lens _qsqlFields (\ s a -> s{_qsqlFields = a})

instance GoogleAuth QuerySQL' where
        authKey = qsqlKey . _Just
        authToken = qsqlOAuthToken . _Just

instance GoogleRequest QuerySQL' where
        type Rs QuerySQL' = SQLresponse
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u QuerySQL'{..}
          = go _qsqlTyped _qsqlQuotaUser
              (Just _qsqlPrettyPrint)
              _qsqlHdrs
              _qsqlUserIP
              _qsqlKey
              _qsqlOAuthToken
              (Just _qsqlSQL)
              _qsqlFields
              (Just AltJSON)
          where go :<|> _
                  = clientWithRoute (Proxy :: Proxy QuerySqlResource) r
                      u

instance GoogleRequest QuerySQL' where
        type Rs (Download QuerySQL') = Stream
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u QuerySQL'{..}
          = go _qsqlTyped _qsqlQuotaUser
              (Just _qsqlPrettyPrint)
              _qsqlHdrs
              _qsqlUserIP
              _qsqlKey
              _qsqlOAuthToken
              (Just _qsqlSQL)
              _qsqlFields
              (Just Media)
          where go :<|> _
                  = clientWithRoute (Proxy :: Proxy QuerySqlResource) r
                      u
