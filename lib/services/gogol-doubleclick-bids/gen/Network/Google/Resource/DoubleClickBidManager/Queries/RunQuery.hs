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
-- Copyright   : (c) 2015-2021 Brendan Hay
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
    , qrqXgafv
    , qrqQueryId
    , qrqUploadProtocol
    , qrqAccessToken
    , qrqUploadType
    , qrqPayload
    , qrqAsynchronous
    , qrqCallback
    ) where

import Network.Google.DoubleClickBids.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.queries.runquery@ method which the
-- 'QueriesRunQuery' request conforms to.
type QueriesRunQueryResource =
     "doubleclickbidmanager" :>
       "v1.1" :>
         "query" :>
           Capture "queryId" (Textual Int64) :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "asynchronous" Bool :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RunQueryRequest :> Post '[JSON] ()

-- | Runs a stored query to generate a report.
--
-- /See:/ 'queriesRunQuery' smart constructor.
data QueriesRunQuery =
  QueriesRunQuery'
    { _qrqXgafv :: !(Maybe Xgafv)
    , _qrqQueryId :: !(Textual Int64)
    , _qrqUploadProtocol :: !(Maybe Text)
    , _qrqAccessToken :: !(Maybe Text)
    , _qrqUploadType :: !(Maybe Text)
    , _qrqPayload :: !RunQueryRequest
    , _qrqAsynchronous :: !Bool
    , _qrqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueriesRunQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrqXgafv'
--
-- * 'qrqQueryId'
--
-- * 'qrqUploadProtocol'
--
-- * 'qrqAccessToken'
--
-- * 'qrqUploadType'
--
-- * 'qrqPayload'
--
-- * 'qrqAsynchronous'
--
-- * 'qrqCallback'
queriesRunQuery
    :: Int64 -- ^ 'qrqQueryId'
    -> RunQueryRequest -- ^ 'qrqPayload'
    -> QueriesRunQuery
queriesRunQuery pQrqQueryId_ pQrqPayload_ =
  QueriesRunQuery'
    { _qrqXgafv = Nothing
    , _qrqQueryId = _Coerce # pQrqQueryId_
    , _qrqUploadProtocol = Nothing
    , _qrqAccessToken = Nothing
    , _qrqUploadType = Nothing
    , _qrqPayload = pQrqPayload_
    , _qrqAsynchronous = False
    , _qrqCallback = Nothing
    }


-- | V1 error format.
qrqXgafv :: Lens' QueriesRunQuery (Maybe Xgafv)
qrqXgafv = lens _qrqXgafv (\ s a -> s{_qrqXgafv = a})

-- | Query ID to run.
qrqQueryId :: Lens' QueriesRunQuery Int64
qrqQueryId
  = lens _qrqQueryId (\ s a -> s{_qrqQueryId = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
qrqUploadProtocol :: Lens' QueriesRunQuery (Maybe Text)
qrqUploadProtocol
  = lens _qrqUploadProtocol
      (\ s a -> s{_qrqUploadProtocol = a})

-- | OAuth access token.
qrqAccessToken :: Lens' QueriesRunQuery (Maybe Text)
qrqAccessToken
  = lens _qrqAccessToken
      (\ s a -> s{_qrqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
qrqUploadType :: Lens' QueriesRunQuery (Maybe Text)
qrqUploadType
  = lens _qrqUploadType
      (\ s a -> s{_qrqUploadType = a})

-- | Multipart request metadata.
qrqPayload :: Lens' QueriesRunQuery RunQueryRequest
qrqPayload
  = lens _qrqPayload (\ s a -> s{_qrqPayload = a})

-- | If true, tries to run the query asynchronously.
qrqAsynchronous :: Lens' QueriesRunQuery Bool
qrqAsynchronous
  = lens _qrqAsynchronous
      (\ s a -> s{_qrqAsynchronous = a})

-- | JSONP
qrqCallback :: Lens' QueriesRunQuery (Maybe Text)
qrqCallback
  = lens _qrqCallback (\ s a -> s{_qrqCallback = a})

instance GoogleRequest QueriesRunQuery where
        type Rs QueriesRunQuery = ()
        type Scopes QueriesRunQuery =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient QueriesRunQuery'{..}
          = go _qrqQueryId _qrqXgafv _qrqUploadProtocol
              _qrqAccessToken
              _qrqUploadType
              (Just _qrqAsynchronous)
              _qrqCallback
              (Just AltJSON)
              _qrqPayload
              doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy QueriesRunQueryResource)
                      mempty
