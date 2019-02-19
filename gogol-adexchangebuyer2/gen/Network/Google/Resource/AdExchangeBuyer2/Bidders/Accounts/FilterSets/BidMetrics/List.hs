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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidMetrics.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all metrics that are measured in terms of number of bids.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.bidMetrics.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidMetrics.List
    (
    -- * REST Resource
      BiddersAccountsFilterSetsBidMetricsListResource

    -- * Creating a Request
    , biddersAccountsFilterSetsBidMetricsList
    , BiddersAccountsFilterSetsBidMetricsList

    -- * Request Lenses
    , bafsbmlXgafv
    , bafsbmlUploadProtocol
    , bafsbmlFilterSetName
    , bafsbmlAccessToken
    , bafsbmlUploadType
    , bafsbmlPageToken
    , bafsbmlPageSize
    , bafsbmlCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.bidMetrics.list@ method which the
-- 'BiddersAccountsFilterSetsBidMetricsList' request conforms to.
type BiddersAccountsFilterSetsBidMetricsListResource
     =
     "v2beta1" :>
       Capture "filterSetName" Text :>
         "bidMetrics" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListBidMetricsResponse

-- | Lists all metrics that are measured in terms of number of bids.
--
-- /See:/ 'biddersAccountsFilterSetsBidMetricsList' smart constructor.
data BiddersAccountsFilterSetsBidMetricsList =
  BiddersAccountsFilterSetsBidMetricsList'
    { _bafsbmlXgafv          :: !(Maybe Xgafv)
    , _bafsbmlUploadProtocol :: !(Maybe Text)
    , _bafsbmlFilterSetName  :: !Text
    , _bafsbmlAccessToken    :: !(Maybe Text)
    , _bafsbmlUploadType     :: !(Maybe Text)
    , _bafsbmlPageToken      :: !(Maybe Text)
    , _bafsbmlPageSize       :: !(Maybe (Textual Int32))
    , _bafsbmlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BiddersAccountsFilterSetsBidMetricsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafsbmlXgafv'
--
-- * 'bafsbmlUploadProtocol'
--
-- * 'bafsbmlFilterSetName'
--
-- * 'bafsbmlAccessToken'
--
-- * 'bafsbmlUploadType'
--
-- * 'bafsbmlPageToken'
--
-- * 'bafsbmlPageSize'
--
-- * 'bafsbmlCallback'
biddersAccountsFilterSetsBidMetricsList
    :: Text -- ^ 'bafsbmlFilterSetName'
    -> BiddersAccountsFilterSetsBidMetricsList
biddersAccountsFilterSetsBidMetricsList pBafsbmlFilterSetName_ =
  BiddersAccountsFilterSetsBidMetricsList'
    { _bafsbmlXgafv = Nothing
    , _bafsbmlUploadProtocol = Nothing
    , _bafsbmlFilterSetName = pBafsbmlFilterSetName_
    , _bafsbmlAccessToken = Nothing
    , _bafsbmlUploadType = Nothing
    , _bafsbmlPageToken = Nothing
    , _bafsbmlPageSize = Nothing
    , _bafsbmlCallback = Nothing
    }

-- | V1 error format.
bafsbmlXgafv :: Lens' BiddersAccountsFilterSetsBidMetricsList (Maybe Xgafv)
bafsbmlXgafv
  = lens _bafsbmlXgafv (\ s a -> s{_bafsbmlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafsbmlUploadProtocol :: Lens' BiddersAccountsFilterSetsBidMetricsList (Maybe Text)
bafsbmlUploadProtocol
  = lens _bafsbmlUploadProtocol
      (\ s a -> s{_bafsbmlUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bafsbmlFilterSetName :: Lens' BiddersAccountsFilterSetsBidMetricsList Text
bafsbmlFilterSetName
  = lens _bafsbmlFilterSetName
      (\ s a -> s{_bafsbmlFilterSetName = a})

-- | OAuth access token.
bafsbmlAccessToken :: Lens' BiddersAccountsFilterSetsBidMetricsList (Maybe Text)
bafsbmlAccessToken
  = lens _bafsbmlAccessToken
      (\ s a -> s{_bafsbmlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafsbmlUploadType :: Lens' BiddersAccountsFilterSetsBidMetricsList (Maybe Text)
bafsbmlUploadType
  = lens _bafsbmlUploadType
      (\ s a -> s{_bafsbmlUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListBidMetricsResponse.nextPageToken
-- returned from the previous call to the bidMetrics.list method.
bafsbmlPageToken :: Lens' BiddersAccountsFilterSetsBidMetricsList (Maybe Text)
bafsbmlPageToken
  = lens _bafsbmlPageToken
      (\ s a -> s{_bafsbmlPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bafsbmlPageSize :: Lens' BiddersAccountsFilterSetsBidMetricsList (Maybe Int32)
bafsbmlPageSize
  = lens _bafsbmlPageSize
      (\ s a -> s{_bafsbmlPageSize = a})
      . mapping _Coerce

-- | JSONP
bafsbmlCallback :: Lens' BiddersAccountsFilterSetsBidMetricsList (Maybe Text)
bafsbmlCallback
  = lens _bafsbmlCallback
      (\ s a -> s{_bafsbmlCallback = a})

instance GoogleRequest
           BiddersAccountsFilterSetsBidMetricsList
         where
        type Rs BiddersAccountsFilterSetsBidMetricsList =
             ListBidMetricsResponse
        type Scopes BiddersAccountsFilterSetsBidMetricsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersAccountsFilterSetsBidMetricsList'{..}
          = go _bafsbmlFilterSetName _bafsbmlXgafv
              _bafsbmlUploadProtocol
              _bafsbmlAccessToken
              _bafsbmlUploadType
              _bafsbmlPageToken
              _bafsbmlPageSize
              _bafsbmlCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersAccountsFilterSetsBidMetricsListResource)
                      mempty
