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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.RunQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a stored query to generate a report.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.runquery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.RunQuery
    (
    -- * REST Resource
      QueriesRunQueryResource

    -- * Creating a Request
    , queriesRunQuery
    , QueriesRunQuery

    -- * Request Lenses
    , qrqQueryId
    , qrqPayload
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.queries.runquery@ method which the
-- 'QueriesRunQuery' request conforms to.
type QueriesRunQueryResource =
     "query" :>
       Capture "queryId" Int64 :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] RunQueryRequest :> Post '[JSON] ()

-- | Runs a stored query to generate a report.
--
-- /See:/ 'queriesRunQuery' smart constructor.
data QueriesRunQuery = QueriesRunQuery
    { _qrqQueryId :: !Int64
    , _qrqPayload :: !RunQueryRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesRunQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrqQueryId'
--
-- * 'qrqPayload'
queriesRunQuery
    :: Int64 -- ^ 'qrqQueryId'
    -> RunQueryRequest -- ^ 'qrqPayload'
    -> QueriesRunQuery
queriesRunQuery pQrqQueryId_ pQrqPayload_ =
    QueriesRunQuery
    { _qrqQueryId = pQrqQueryId_
    , _qrqPayload = pQrqPayload_
    }

-- | Query ID to run.
qrqQueryId :: Lens' QueriesRunQuery Int64
qrqQueryId
  = lens _qrqQueryId (\ s a -> s{_qrqQueryId = a})

-- | Multipart request metadata.
qrqPayload :: Lens' QueriesRunQuery RunQueryRequest
qrqPayload
  = lens _qrqPayload (\ s a -> s{_qrqPayload = a})

instance GoogleRequest QueriesRunQuery where
        type Rs QueriesRunQuery = ()
        requestClient QueriesRunQuery{..}
          = go _qrqQueryId (Just AltJSON) _qrqPayload
              doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy QueriesRunQueryResource)
                      mempty
