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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.BidMetrics.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all metrics that are measured in terms of number of bids.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.bidMetrics.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.BidMetrics.List
    (
    -- * REST Resource
      BiddersFilterSetsBidMetricsListResource

    -- * Creating a Request
    , biddersFilterSetsBidMetricsList
    , BiddersFilterSetsBidMetricsList

    -- * Request Lenses
    , bfsbmlXgafv
    , bfsbmlUploadProtocol
    , bfsbmlFilterSetName
    , bfsbmlAccessToken
    , bfsbmlUploadType
    , bfsbmlPageToken
    , bfsbmlPageSize
    , bfsbmlCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.bidMetrics.list@ method which the
-- 'BiddersFilterSetsBidMetricsList' request conforms to.
type BiddersFilterSetsBidMetricsListResource =
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
-- /See:/ 'biddersFilterSetsBidMetricsList' smart constructor.
data BiddersFilterSetsBidMetricsList =
  BiddersFilterSetsBidMetricsList'
    { _bfsbmlXgafv          :: !(Maybe Xgafv)
    , _bfsbmlUploadProtocol :: !(Maybe Text)
    , _bfsbmlFilterSetName  :: !Text
    , _bfsbmlAccessToken    :: !(Maybe Text)
    , _bfsbmlUploadType     :: !(Maybe Text)
    , _bfsbmlPageToken      :: !(Maybe Text)
    , _bfsbmlPageSize       :: !(Maybe (Textual Int32))
    , _bfsbmlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BiddersFilterSetsBidMetricsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfsbmlXgafv'
--
-- * 'bfsbmlUploadProtocol'
--
-- * 'bfsbmlFilterSetName'
--
-- * 'bfsbmlAccessToken'
--
-- * 'bfsbmlUploadType'
--
-- * 'bfsbmlPageToken'
--
-- * 'bfsbmlPageSize'
--
-- * 'bfsbmlCallback'
biddersFilterSetsBidMetricsList
    :: Text -- ^ 'bfsbmlFilterSetName'
    -> BiddersFilterSetsBidMetricsList
biddersFilterSetsBidMetricsList pBfsbmlFilterSetName_ =
  BiddersFilterSetsBidMetricsList'
    { _bfsbmlXgafv = Nothing
    , _bfsbmlUploadProtocol = Nothing
    , _bfsbmlFilterSetName = pBfsbmlFilterSetName_
    , _bfsbmlAccessToken = Nothing
    , _bfsbmlUploadType = Nothing
    , _bfsbmlPageToken = Nothing
    , _bfsbmlPageSize = Nothing
    , _bfsbmlCallback = Nothing
    }

-- | V1 error format.
bfsbmlXgafv :: Lens' BiddersFilterSetsBidMetricsList (Maybe Xgafv)
bfsbmlXgafv
  = lens _bfsbmlXgafv (\ s a -> s{_bfsbmlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfsbmlUploadProtocol :: Lens' BiddersFilterSetsBidMetricsList (Maybe Text)
bfsbmlUploadProtocol
  = lens _bfsbmlUploadProtocol
      (\ s a -> s{_bfsbmlUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bfsbmlFilterSetName :: Lens' BiddersFilterSetsBidMetricsList Text
bfsbmlFilterSetName
  = lens _bfsbmlFilterSetName
      (\ s a -> s{_bfsbmlFilterSetName = a})

-- | OAuth access token.
bfsbmlAccessToken :: Lens' BiddersFilterSetsBidMetricsList (Maybe Text)
bfsbmlAccessToken
  = lens _bfsbmlAccessToken
      (\ s a -> s{_bfsbmlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfsbmlUploadType :: Lens' BiddersFilterSetsBidMetricsList (Maybe Text)
bfsbmlUploadType
  = lens _bfsbmlUploadType
      (\ s a -> s{_bfsbmlUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListBidMetricsResponse.nextPageToken
-- returned from the previous call to the bidMetrics.list method.
bfsbmlPageToken :: Lens' BiddersFilterSetsBidMetricsList (Maybe Text)
bfsbmlPageToken
  = lens _bfsbmlPageToken
      (\ s a -> s{_bfsbmlPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bfsbmlPageSize :: Lens' BiddersFilterSetsBidMetricsList (Maybe Int32)
bfsbmlPageSize
  = lens _bfsbmlPageSize
      (\ s a -> s{_bfsbmlPageSize = a})
      . mapping _Coerce

-- | JSONP
bfsbmlCallback :: Lens' BiddersFilterSetsBidMetricsList (Maybe Text)
bfsbmlCallback
  = lens _bfsbmlCallback
      (\ s a -> s{_bfsbmlCallback = a})

instance GoogleRequest
           BiddersFilterSetsBidMetricsList
         where
        type Rs BiddersFilterSetsBidMetricsList =
             ListBidMetricsResponse
        type Scopes BiddersFilterSetsBidMetricsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BiddersFilterSetsBidMetricsList'{..}
          = go _bfsbmlFilterSetName _bfsbmlXgafv
              _bfsbmlUploadProtocol
              _bfsbmlAccessToken
              _bfsbmlUploadType
              _bfsbmlPageToken
              _bfsbmlPageSize
              _bfsbmlCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BiddersFilterSetsBidMetricsListResource)
                      mempty
