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
-- Copyright   : (c) 2015-2021 Brendan Hay
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
    , qgqXgafv
    , qgqQueryId
    , qgqUploadProtocol
    , qgqAccessToken
    , qgqUploadType
    , qgqCallback
    ) where

import Network.Google.DoubleClickBids.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.queries.getquery@ method which the
-- 'QueriesGetQuery' request conforms to.
type QueriesGetQueryResource =
     "doubleclickbidmanager" :>
       "v1.1" :>
         "query" :>
           Capture "queryId" (Textual Int64) :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Query

-- | Retrieves a stored query.
--
-- /See:/ 'queriesGetQuery' smart constructor.
data QueriesGetQuery =
  QueriesGetQuery'
    { _qgqXgafv :: !(Maybe Xgafv)
    , _qgqQueryId :: !(Textual Int64)
    , _qgqUploadProtocol :: !(Maybe Text)
    , _qgqAccessToken :: !(Maybe Text)
    , _qgqUploadType :: !(Maybe Text)
    , _qgqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueriesGetQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qgqXgafv'
--
-- * 'qgqQueryId'
--
-- * 'qgqUploadProtocol'
--
-- * 'qgqAccessToken'
--
-- * 'qgqUploadType'
--
-- * 'qgqCallback'
queriesGetQuery
    :: Int64 -- ^ 'qgqQueryId'
    -> QueriesGetQuery
queriesGetQuery pQgqQueryId_ =
  QueriesGetQuery'
    { _qgqXgafv = Nothing
    , _qgqQueryId = _Coerce # pQgqQueryId_
    , _qgqUploadProtocol = Nothing
    , _qgqAccessToken = Nothing
    , _qgqUploadType = Nothing
    , _qgqCallback = Nothing
    }


-- | V1 error format.
qgqXgafv :: Lens' QueriesGetQuery (Maybe Xgafv)
qgqXgafv = lens _qgqXgafv (\ s a -> s{_qgqXgafv = a})

-- | Query ID to retrieve.
qgqQueryId :: Lens' QueriesGetQuery Int64
qgqQueryId
  = lens _qgqQueryId (\ s a -> s{_qgqQueryId = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
qgqUploadProtocol :: Lens' QueriesGetQuery (Maybe Text)
qgqUploadProtocol
  = lens _qgqUploadProtocol
      (\ s a -> s{_qgqUploadProtocol = a})

-- | OAuth access token.
qgqAccessToken :: Lens' QueriesGetQuery (Maybe Text)
qgqAccessToken
  = lens _qgqAccessToken
      (\ s a -> s{_qgqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
qgqUploadType :: Lens' QueriesGetQuery (Maybe Text)
qgqUploadType
  = lens _qgqUploadType
      (\ s a -> s{_qgqUploadType = a})

-- | JSONP
qgqCallback :: Lens' QueriesGetQuery (Maybe Text)
qgqCallback
  = lens _qgqCallback (\ s a -> s{_qgqCallback = a})

instance GoogleRequest QueriesGetQuery where
        type Rs QueriesGetQuery = Query
        type Scopes QueriesGetQuery =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient QueriesGetQuery'{..}
          = go _qgqQueryId _qgqXgafv _qgqUploadProtocol
              _qgqAccessToken
              _qgqUploadType
              _qgqCallback
              (Just AltJSON)
              doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy QueriesGetQueryResource)
                      mempty
