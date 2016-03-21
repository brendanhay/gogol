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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.Listqueries
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves stored queries.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.listqueries@.
module Network.Google.Resource.DoubleClickBidManager.Queries.Listqueries
    (
    -- * REST Resource
      QueriesListqueriesResource

    -- * Creating a Request
    , queriesListqueries
    , QueriesListqueries

    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.queries.listqueries@ method which the
-- 'QueriesListqueries' request conforms to.
type QueriesListqueriesResource =
     "doubleclickbidmanager" :>
       "v1" :>
         "queries" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] ListQueriesResponse

-- | Retrieves stored queries.
--
-- /See:/ 'queriesListqueries' smart constructor.
data QueriesListqueries =
    QueriesListqueries'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesListqueries' with the minimum fields required to make a request.
--
queriesListqueries
    :: QueriesListqueries
queriesListqueries = QueriesListqueries'

instance GoogleRequest QueriesListqueries where
        type Rs QueriesListqueries = ListQueriesResponse
        type Scopes QueriesListqueries = '[]
        requestClient QueriesListqueries'{}
          = go (Just AltJSON) doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy QueriesListqueriesResource)
                      mempty
