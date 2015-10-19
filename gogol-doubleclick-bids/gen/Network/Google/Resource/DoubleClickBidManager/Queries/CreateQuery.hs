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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.CreateQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerQueriesCreateQuery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.CreateQuery
    (
    -- * REST Resource
      QueriesCreateQueryResource

    -- * Creating a Request
    , queriesCreateQuery'
    , QueriesCreateQuery'

    -- * Request Lenses
    , qcqPayload
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerQueriesCreateQuery@ method which the
-- 'QueriesCreateQuery'' request conforms to.
type QueriesCreateQueryResource =
     "query" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] Query :> Post '[JSON] Query

-- | Creates a query.
--
-- /See:/ 'queriesCreateQuery'' smart constructor.
newtype QueriesCreateQuery' = QueriesCreateQuery'
    { _qcqPayload :: Query
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesCreateQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qcqPayload'
queriesCreateQuery'
    :: Query -- ^ 'payload'
    -> QueriesCreateQuery'
queriesCreateQuery' pQcqPayload_ =
    QueriesCreateQuery'
    { _qcqPayload = pQcqPayload_
    }

-- | Multipart request metadata.
qcqPayload :: Lens' QueriesCreateQuery' Query
qcqPayload
  = lens _qcqPayload (\ s a -> s{_qcqPayload = a})

instance GoogleRequest QueriesCreateQuery' where
        type Rs QueriesCreateQuery' = Query
        requestClient QueriesCreateQuery'{..}
          = go (Just AltJSON) _qcqPayload
              doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy QueriesCreateQueryResource)
                      mempty
