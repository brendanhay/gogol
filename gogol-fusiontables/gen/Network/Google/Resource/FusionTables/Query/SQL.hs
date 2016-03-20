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
-- Module      : Network.Google.Resource.FusionTables.Query.SQL
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes a Fusion Tables SQL statement, which can be any of - SELECT -
-- INSERT - UPDATE - DELETE - SHOW - DESCRIBE - CREATE statement.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.query.sql@.
module Network.Google.Resource.FusionTables.Query.SQL
    (
    -- * REST Resource
      QuerySQLResource

    -- * Creating a Request
    , querySQL
    , QuerySQL

    -- * Request Lenses
    , qsqlTyped
    , qsqlHdrs
    , qsqlSQL
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.query.sql@ method which the
-- 'QuerySQL' request conforms to.
type QuerySQLResource =
     "fusiontables" :>
       "v2" :>
         "query" :>
           QueryParam "sql" Text :>
             QueryParam "typed" Bool :>
               QueryParam "hdrs" Bool :>
                 QueryParam "alt" AltJSON :> Post '[JSON] SQLresponse
       :<|>
       "fusiontables" :>
         "v2" :>
           "query" :>
             QueryParam "sql" Text :>
               QueryParam "typed" Bool :>
                 QueryParam "hdrs" Bool :>
                   QueryParam "alt" AltMedia :>
                     Post '[OctetStream] Stream

-- | Executes a Fusion Tables SQL statement, which can be any of - SELECT -
-- INSERT - UPDATE - DELETE - SHOW - DESCRIBE - CREATE statement.
--
-- /See:/ 'querySQL' smart constructor.
data QuerySQL = QuerySQL
    { _qsqlTyped :: !(Maybe Bool)
    , _qsqlHdrs  :: !(Maybe Bool)
    , _qsqlSQL   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuerySQL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsqlTyped'
--
-- * 'qsqlHdrs'
--
-- * 'qsqlSQL'
querySQL
    :: Text -- ^ 'qsqlSQL'
    -> QuerySQL
querySQL pQsqlSQL_ =
    QuerySQL
    { _qsqlTyped = Nothing
    , _qsqlHdrs = Nothing
    , _qsqlSQL = pQsqlSQL_
    }

-- | Whether typed values are returned in the (JSON) response: numbers for
-- numeric values and parsed geometries for KML values. Default is true.
qsqlTyped :: Lens' QuerySQL (Maybe Bool)
qsqlTyped
  = lens _qsqlTyped (\ s a -> s{_qsqlTyped = a})

-- | Whether column names are included in the first row. Default is true.
qsqlHdrs :: Lens' QuerySQL (Maybe Bool)
qsqlHdrs = lens _qsqlHdrs (\ s a -> s{_qsqlHdrs = a})

-- | A Fusion Tables SQL statement, which can be any of - SELECT - INSERT -
-- UPDATE - DELETE - SHOW - DESCRIBE - CREATE
qsqlSQL :: Lens' QuerySQL Text
qsqlSQL = lens _qsqlSQL (\ s a -> s{_qsqlSQL = a})

instance GoogleRequest QuerySQL where
        type Rs QuerySQL = SQLresponse
        requestClient QuerySQL{..}
          = go (Just _qsqlSQL) _qsqlTyped _qsqlHdrs
              (Just AltJSON)
              fusionTablesService
          where go :<|> _
                  = buildClient (Proxy :: Proxy QuerySQLResource)
                      mempty

instance GoogleRequest (MediaDownload QuerySQL) where
        type Rs (MediaDownload QuerySQL) = Stream
        requestClient (MediaDownload QuerySQL{..})
          = go (Just _qsqlSQL) _qsqlTyped _qsqlHdrs
              (Just AltMedia)
              fusionTablesService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy QuerySQLResource)
                      mempty
