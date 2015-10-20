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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.GetQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a stored query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.getquery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.GetQuery
    (
    -- * REST Resource
      QueriesGetQueryResource

    -- * Creating a Request
    , queriesGetQuery
    , QueriesGetQuery

    -- * Request Lenses
    , qgqQueryId
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.queries.getquery@ method which the
-- 'QueriesGetQuery' request conforms to.
type QueriesGetQueryResource =
     "query" :>
       Capture "queryId" Int64 :>
         QueryParam "alt" AltJSON :> Get '[JSON] Query

-- | Retrieves a stored query.
--
-- /See:/ 'queriesGetQuery' smart constructor.
newtype QueriesGetQuery = QueriesGetQuery
    { _qgqQueryId :: Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesGetQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qgqQueryId'
queriesGetQuery
    :: Int64 -- ^ 'qgqQueryId'
    -> QueriesGetQuery
queriesGetQuery pQgqQueryId_ =
    QueriesGetQuery
    { _qgqQueryId = pQgqQueryId_
    }

-- | Query ID to retrieve.
qgqQueryId :: Lens' QueriesGetQuery Int64
qgqQueryId
  = lens _qgqQueryId (\ s a -> s{_qgqQueryId = a})

instance GoogleRequest QueriesGetQuery where
        type Rs QueriesGetQuery = Query
        requestClient QueriesGetQuery{..}
          = go _qgqQueryId (Just AltJSON)
              doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy QueriesGetQueryResource)
                      mempty
