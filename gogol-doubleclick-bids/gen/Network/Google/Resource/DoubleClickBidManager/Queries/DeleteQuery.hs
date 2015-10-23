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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.DeleteQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a stored query as well as the associated stored reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.deletequery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.DeleteQuery
    (
    -- * REST Resource
      QueriesDeleteQueryResource

    -- * Creating a Request
    , queriesDeleteQuery
    , QueriesDeleteQuery

    -- * Request Lenses
    , qdqQueryId
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.queries.deletequery@ method which the
-- 'QueriesDeleteQuery' request conforms to.
type QueriesDeleteQueryResource =
     "doubleclickbidmanager" :>
       "v1" :>
         "query" :>
           Capture "queryId" (JSONText Int64) :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a stored query as well as the associated stored reports.
--
-- /See:/ 'queriesDeleteQuery' smart constructor.
newtype QueriesDeleteQuery = QueriesDeleteQuery
    { _qdqQueryId :: JSONText Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesDeleteQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qdqQueryId'
queriesDeleteQuery
    :: Int64 -- ^ 'qdqQueryId'
    -> QueriesDeleteQuery
queriesDeleteQuery pQdqQueryId_ =
    QueriesDeleteQuery
    { _qdqQueryId = pQdqQueryId_
    }

-- | Query ID to delete.
qdqQueryId :: Lens' QueriesDeleteQuery Int64
qdqQueryId
  = lens _qdqQueryId (\ s a -> s{_qdqQueryId = a}) .
      _Coerce

instance GoogleRequest QueriesDeleteQuery where
        type Rs QueriesDeleteQuery = ()
        requestClient QueriesDeleteQuery{..}
          = go _qdqQueryId (Just AltJSON)
              doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy QueriesDeleteQueryResource)
                      mempty
