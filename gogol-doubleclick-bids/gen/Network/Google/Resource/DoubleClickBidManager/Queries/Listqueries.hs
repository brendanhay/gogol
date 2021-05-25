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

    -- * Request Lenses
    , qlXgafv
    , qlUploadProtocol
    , qlAccessToken
    , qlUploadType
    , qlPageToken
    , qlPageSize
    , qlCallback
    ) where

import Network.Google.DoubleClickBids.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.queries.listqueries@ method which the
-- 'QueriesListqueries' request conforms to.
type QueriesListqueriesResource =
     "doubleclickbidmanager" :>
       "v1.1" :>
         "queries" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListQueriesResponse

-- | Retrieves stored queries.
--
-- /See:/ 'queriesListqueries' smart constructor.
data QueriesListqueries =
  QueriesListqueries'
    { _qlXgafv :: !(Maybe Xgafv)
    , _qlUploadProtocol :: !(Maybe Text)
    , _qlAccessToken :: !(Maybe Text)
    , _qlUploadType :: !(Maybe Text)
    , _qlPageToken :: !(Maybe Text)
    , _qlPageSize :: !(Maybe (Textual Int32))
    , _qlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueriesListqueries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qlXgafv'
--
-- * 'qlUploadProtocol'
--
-- * 'qlAccessToken'
--
-- * 'qlUploadType'
--
-- * 'qlPageToken'
--
-- * 'qlPageSize'
--
-- * 'qlCallback'
queriesListqueries
    :: QueriesListqueries
queriesListqueries =
  QueriesListqueries'
    { _qlXgafv = Nothing
    , _qlUploadProtocol = Nothing
    , _qlAccessToken = Nothing
    , _qlUploadType = Nothing
    , _qlPageToken = Nothing
    , _qlPageSize = Nothing
    , _qlCallback = Nothing
    }


-- | V1 error format.
qlXgafv :: Lens' QueriesListqueries (Maybe Xgafv)
qlXgafv = lens _qlXgafv (\ s a -> s{_qlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
qlUploadProtocol :: Lens' QueriesListqueries (Maybe Text)
qlUploadProtocol
  = lens _qlUploadProtocol
      (\ s a -> s{_qlUploadProtocol = a})

-- | OAuth access token.
qlAccessToken :: Lens' QueriesListqueries (Maybe Text)
qlAccessToken
  = lens _qlAccessToken
      (\ s a -> s{_qlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
qlUploadType :: Lens' QueriesListqueries (Maybe Text)
qlUploadType
  = lens _qlUploadType (\ s a -> s{_qlUploadType = a})

-- | Optional pagination token.
qlPageToken :: Lens' QueriesListqueries (Maybe Text)
qlPageToken
  = lens _qlPageToken (\ s a -> s{_qlPageToken = a})

-- | Maximum number of results per page. Must be between 1 and 100. Defaults
-- to 100 if unspecified.
qlPageSize :: Lens' QueriesListqueries (Maybe Int32)
qlPageSize
  = lens _qlPageSize (\ s a -> s{_qlPageSize = a}) .
      mapping _Coerce

-- | JSONP
qlCallback :: Lens' QueriesListqueries (Maybe Text)
qlCallback
  = lens _qlCallback (\ s a -> s{_qlCallback = a})

instance GoogleRequest QueriesListqueries where
        type Rs QueriesListqueries = ListQueriesResponse
        type Scopes QueriesListqueries =
             '["https://www.googleapis.com/auth/doubleclickbidmanager"]
        requestClient QueriesListqueries'{..}
          = go _qlXgafv _qlUploadProtocol _qlAccessToken
              _qlUploadType
              _qlPageToken
              _qlPageSize
              _qlCallback
              (Just AltJSON)
              doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy QueriesListqueriesResource)
                      mempty
