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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.createquery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.CreateQuery
    (
    -- * REST Resource
      QueriesCreateQueryResource

    -- * Creating a Request
    , queriesCreateQuery
    , QueriesCreateQuery

    -- * Request Lenses
    , qcqXgafv
    , qcqUploadProtocol
    , qcqAccessToken
    , qcqUploadType
    , qcqPayload
    , qcqAsynchronous
    , qcqCallback
    ) where

import Network.Google.DoubleClickBids.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.queries.createquery@ method which the
-- 'QueriesCreateQuery' request conforms to.
type QueriesCreateQueryResource =
     "doubleclickbidmanager" :>
       "v1.1" :>
         "query" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "asynchronous" Bool :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Query :> Post '[JSON] Query

-- | Creates a query.
--
-- /See:/ 'queriesCreateQuery' smart constructor.
data QueriesCreateQuery =
  QueriesCreateQuery'
    { _qcqXgafv :: !(Maybe Xgafv)
    , _qcqUploadProtocol :: !(Maybe Text)
    , _qcqAccessToken :: !(Maybe Text)
    , _qcqUploadType :: !(Maybe Text)
    , _qcqPayload :: !Query
    , _qcqAsynchronous :: !Bool
    , _qcqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueriesCreateQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qcqXgafv'
--
-- * 'qcqUploadProtocol'
--
-- * 'qcqAccessToken'
--
-- * 'qcqUploadType'
--
-- * 'qcqPayload'
--
-- * 'qcqAsynchronous'
--
-- * 'qcqCallback'
queriesCreateQuery
    :: Query -- ^ 'qcqPayload'
    -> QueriesCreateQuery
queriesCreateQuery pQcqPayload_ =
  QueriesCreateQuery'
    { _qcqXgafv = Nothing
    , _qcqUploadProtocol = Nothing
    , _qcqAccessToken = Nothing
    , _qcqUploadType = Nothing
    , _qcqPayload = pQcqPayload_
    , _qcqAsynchronous = False
    , _qcqCallback = Nothing
    }


-- | V1 error format.
qcqXgafv :: Lens' QueriesCreateQuery (Maybe Xgafv)
qcqXgafv = lens _qcqXgafv (\ s a -> s{_qcqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
qcqUploadProtocol :: Lens' QueriesCreateQuery (Maybe Text)
qcqUploadProtocol
  = lens _qcqUploadProtocol
      (\ s a -> s{_qcqUploadProtocol = a})

-- | OAuth access token.
qcqAccessToken :: Lens' QueriesCreateQuery (Maybe Text)
qcqAccessToken
  = lens _qcqAccessToken
      (\ s a -> s{_qcqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
qcqUploadType :: Lens' QueriesCreateQuery (Maybe Text)
qcqUploadType
  = lens _qcqUploadType
      (\ s a -> s{_qcqUploadType = a})

-- | Multipart request metadata.
qcqPayload :: Lens' QueriesCreateQuery Query
qcqPayload
  = lens _qcqPayload (\ s a -> s{_qcqPayload = a})

-- | If true, tries to run the query asynchronously. Only applicable when the
-- frequency is ONE_TIME.
qcqAsynchronous :: Lens' QueriesCreateQuery Bool
qcqAsynchronous
  = lens _qcqAsynchronous
      (\ s a -> s{_qcqAsynchronous = a})

-- | JSONP
qcqCallback :: Lens' QueriesCreateQuery (Maybe Text)
qcqCallback
  = lens _qcqCallback (\ s a -> s{_qcqCallback = a})

instance GoogleRequest QueriesCreateQuery where
        type Rs QueriesCreateQuery = Query
        type Scopes QueriesCreateQuery =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient QueriesCreateQuery'{..}
          = go _qcqXgafv _qcqUploadProtocol _qcqAccessToken
              _qcqUploadType
              (Just _qcqAsynchronous)
              _qcqCallback
              (Just AltJSON)
              _qcqPayload
              doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy QueriesCreateQueryResource)
                      mempty
