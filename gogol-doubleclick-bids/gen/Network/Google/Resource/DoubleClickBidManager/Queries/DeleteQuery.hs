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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , qdqXgafv
    , qdqQueryId
    , qdqUploadProtocol
    , qdqAccessToken
    , qdqUploadType
    , qdqCallback
    ) where

import Network.Google.DoubleClickBids.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.queries.deletequery@ method which the
-- 'QueriesDeleteQuery' request conforms to.
type QueriesDeleteQueryResource =
     "doubleclickbidmanager" :>
       "v1.1" :>
         "query" :>
           Capture "queryId" (Textual Int64) :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a stored query as well as the associated stored reports.
--
-- /See:/ 'queriesDeleteQuery' smart constructor.
data QueriesDeleteQuery =
  QueriesDeleteQuery'
    { _qdqXgafv :: !(Maybe Xgafv)
    , _qdqQueryId :: !(Textual Int64)
    , _qdqUploadProtocol :: !(Maybe Text)
    , _qdqAccessToken :: !(Maybe Text)
    , _qdqUploadType :: !(Maybe Text)
    , _qdqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueriesDeleteQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qdqXgafv'
--
-- * 'qdqQueryId'
--
-- * 'qdqUploadProtocol'
--
-- * 'qdqAccessToken'
--
-- * 'qdqUploadType'
--
-- * 'qdqCallback'
queriesDeleteQuery
    :: Int64 -- ^ 'qdqQueryId'
    -> QueriesDeleteQuery
queriesDeleteQuery pQdqQueryId_ =
  QueriesDeleteQuery'
    { _qdqXgafv = Nothing
    , _qdqQueryId = _Coerce # pQdqQueryId_
    , _qdqUploadProtocol = Nothing
    , _qdqAccessToken = Nothing
    , _qdqUploadType = Nothing
    , _qdqCallback = Nothing
    }


-- | V1 error format.
qdqXgafv :: Lens' QueriesDeleteQuery (Maybe Xgafv)
qdqXgafv = lens _qdqXgafv (\ s a -> s{_qdqXgafv = a})

-- | Query ID to delete.
qdqQueryId :: Lens' QueriesDeleteQuery Int64
qdqQueryId
  = lens _qdqQueryId (\ s a -> s{_qdqQueryId = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
qdqUploadProtocol :: Lens' QueriesDeleteQuery (Maybe Text)
qdqUploadProtocol
  = lens _qdqUploadProtocol
      (\ s a -> s{_qdqUploadProtocol = a})

-- | OAuth access token.
qdqAccessToken :: Lens' QueriesDeleteQuery (Maybe Text)
qdqAccessToken
  = lens _qdqAccessToken
      (\ s a -> s{_qdqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
qdqUploadType :: Lens' QueriesDeleteQuery (Maybe Text)
qdqUploadType
  = lens _qdqUploadType
      (\ s a -> s{_qdqUploadType = a})

-- | JSONP
qdqCallback :: Lens' QueriesDeleteQuery (Maybe Text)
qdqCallback
  = lens _qdqCallback (\ s a -> s{_qdqCallback = a})

instance GoogleRequest QueriesDeleteQuery where
        type Rs QueriesDeleteQuery = ()
        type Scopes QueriesDeleteQuery =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient QueriesDeleteQuery'{..}
          = go _qdqQueryId _qdqXgafv _qdqUploadProtocol
              _qdqAccessToken
              _qdqUploadType
              _qdqCallback
              (Just AltJSON)
              doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy QueriesDeleteQueryResource)
                      mempty
