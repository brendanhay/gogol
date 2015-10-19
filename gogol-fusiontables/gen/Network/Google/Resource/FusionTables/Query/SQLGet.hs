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
-- Executes a SQL statement which can be any of - SELECT - SHOW - DESCRIBE
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.query.sqlGet@.
module Network.Google.Resource.FusionTables.Query.SQLGet
    (
    -- * REST Resource
      QuerySQLGetResource

    -- * Creating a Request
    , querySQLGet'
    , QuerySQLGet'

    -- * Request Lenses
    , qsqlgTyped
    , qsqlgHdrs
    , qsqlgSQL
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.query.sqlGet@ method which the
-- 'QuerySQLGet'' request conforms to.
type QuerySQLGetResource =
     "query" :>
       QueryParam "sql" Text :>
         QueryParam "typed" Bool :>
           QueryParam "hdrs" Bool :>
             QueryParam "alt" AltJSON :> Get '[JSON] SQLresponse
       :<|>
       "query" :>
         QueryParam "sql" Text :>
           QueryParam "typed" Bool :>
             QueryParam "hdrs" Bool :>
               QueryParam "alt" AltMedia :>
                 Get '[OctetStream] Stream

-- | Executes a SQL statement which can be any of - SELECT - SHOW - DESCRIBE
--
-- /See:/ 'querySQLGet'' smart constructor.
data QuerySQLGet' = QuerySQLGet'
    { _qsqlgTyped :: !(Maybe Bool)
    , _qsqlgHdrs  :: !(Maybe Bool)
    , _qsqlgSQL   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuerySQLGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsqlgTyped'
--
-- * 'qsqlgHdrs'
--
-- * 'qsqlgSQL'
querySQLGet'
    :: Text -- ^ 'qsqlgSQL'
    -> QuerySQLGet'
querySQLGet' pQsqlgSQL_ =
    QuerySQLGet'
    { _qsqlgTyped = Nothing
    , _qsqlgHdrs = Nothing
    , _qsqlgSQL = pQsqlgSQL_
    }

-- | Whether typed values are returned in the (JSON) response: numbers for
-- numeric values and parsed geometries for KML values. Default is true.
qsqlgTyped :: Lens' QuerySQLGet' (Maybe Bool)
qsqlgTyped
  = lens _qsqlgTyped (\ s a -> s{_qsqlgTyped = a})

-- | Whether column names are included (in the first row). Default is true.
qsqlgHdrs :: Lens' QuerySQLGet' (Maybe Bool)
qsqlgHdrs
  = lens _qsqlgHdrs (\ s a -> s{_qsqlgHdrs = a})

-- | A SQL statement which can be any of - SELECT - SHOW - DESCRIBE
qsqlgSQL :: Lens' QuerySQLGet' Text
qsqlgSQL = lens _qsqlgSQL (\ s a -> s{_qsqlgSQL = a})

instance GoogleRequest QuerySQLGet' where
        type Rs QuerySQLGet' = SQLresponse
        requestClient QuerySQLGet'{..}
          = go (Just _qsqlgSQL) _qsqlgTyped _qsqlgHdrs
              (Just AltJSON)
              fusionTablesService
          where go :<|> _
                  = buildClient (Proxy :: Proxy QuerySQLGetResource)
                      mempty

instance GoogleRequest (MediaDownload QuerySQLGet')
         where
        type Rs (MediaDownload QuerySQLGet') = Stream
        requestClient (MediaDownload QuerySQLGet'{..})
          = go (Just _qsqlgSQL) _qsqlgTyped _qsqlgHdrs
              (Just AltMedia)
              fusionTablesService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy QuerySQLGetResource)
                      mempty
