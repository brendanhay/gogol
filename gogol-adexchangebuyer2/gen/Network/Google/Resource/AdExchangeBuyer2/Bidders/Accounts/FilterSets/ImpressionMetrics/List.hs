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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.ImpressionMetrics.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all metrics that are measured in terms of number of impressions.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.impressionMetrics.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.ImpressionMetrics.List
    (
    -- * REST Resource
      BiddersAccountsFilterSetsImpressionMetricsListResource

    -- * Creating a Request
    , biddersAccountsFilterSetsImpressionMetricsList
    , BiddersAccountsFilterSetsImpressionMetricsList

    -- * Request Lenses
    , bafsimlXgafv
    , bafsimlUploadProtocol
    , bafsimlFilterSetName
    , bafsimlAccessToken
    , bafsimlUploadType
    , bafsimlPageToken
    , bafsimlPageSize
    , bafsimlCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.impressionMetrics.list@ method which the
-- 'BiddersAccountsFilterSetsImpressionMetricsList' request conforms to.
type BiddersAccountsFilterSetsImpressionMetricsListResource
     =
     "v2beta1" :>
       Capture "filterSetName" Text :>
         "impressionMetrics" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListImpressionMetricsResponse

-- | Lists all metrics that are measured in terms of number of impressions.
--
-- /See:/ 'biddersAccountsFilterSetsImpressionMetricsList' smart constructor.
data BiddersAccountsFilterSetsImpressionMetricsList =
  BiddersAccountsFilterSetsImpressionMetricsList'
    { _bafsimlXgafv          :: !(Maybe Xgafv)
    , _bafsimlUploadProtocol :: !(Maybe Text)
    , _bafsimlFilterSetName  :: !Text
    , _bafsimlAccessToken    :: !(Maybe Text)
    , _bafsimlUploadType     :: !(Maybe Text)
    , _bafsimlPageToken      :: !(Maybe Text)
    , _bafsimlPageSize       :: !(Maybe (Textual Int32))
    , _bafsimlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BiddersAccountsFilterSetsImpressionMetricsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafsimlXgafv'
--
-- * 'bafsimlUploadProtocol'
--
-- * 'bafsimlFilterSetName'
--
-- * 'bafsimlAccessToken'
--
-- * 'bafsimlUploadType'
--
-- * 'bafsimlPageToken'
--
-- * 'bafsimlPageSize'
--
-- * 'bafsimlCallback'
biddersAccountsFilterSetsImpressionMetricsList
    :: Text -- ^ 'bafsimlFilterSetName'
    -> BiddersAccountsFilterSetsImpressionMetricsList
biddersAccountsFilterSetsImpressionMetricsList pBafsimlFilterSetName_ =
  BiddersAccountsFilterSetsImpressionMetricsList'
    { _bafsimlXgafv = Nothing
    , _bafsimlUploadProtocol = Nothing
    , _bafsimlFilterSetName = pBafsimlFilterSetName_
    , _bafsimlAccessToken = Nothing
    , _bafsimlUploadType = Nothing
    , _bafsimlPageToken = Nothing
    , _bafsimlPageSize = Nothing
    , _bafsimlCallback = Nothing
    }

-- | V1 error format.
bafsimlXgafv :: Lens' BiddersAccountsFilterSetsImpressionMetricsList (Maybe Xgafv)
bafsimlXgafv
  = lens _bafsimlXgafv (\ s a -> s{_bafsimlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafsimlUploadProtocol :: Lens' BiddersAccountsFilterSetsImpressionMetricsList (Maybe Text)
bafsimlUploadProtocol
  = lens _bafsimlUploadProtocol
      (\ s a -> s{_bafsimlUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bafsimlFilterSetName :: Lens' BiddersAccountsFilterSetsImpressionMetricsList Text
bafsimlFilterSetName
  = lens _bafsimlFilterSetName
      (\ s a -> s{_bafsimlFilterSetName = a})

-- | OAuth access token.
bafsimlAccessToken :: Lens' BiddersAccountsFilterSetsImpressionMetricsList (Maybe Text)
bafsimlAccessToken
  = lens _bafsimlAccessToken
      (\ s a -> s{_bafsimlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafsimlUploadType :: Lens' BiddersAccountsFilterSetsImpressionMetricsList (Maybe Text)
bafsimlUploadType
  = lens _bafsimlUploadType
      (\ s a -> s{_bafsimlUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListImpressionMetricsResponse.nextPageToken returned from the previous
-- call to the impressionMetrics.list method.
bafsimlPageToken :: Lens' BiddersAccountsFilterSetsImpressionMetricsList (Maybe Text)
bafsimlPageToken
  = lens _bafsimlPageToken
      (\ s a -> s{_bafsimlPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bafsimlPageSize :: Lens' BiddersAccountsFilterSetsImpressionMetricsList (Maybe Int32)
bafsimlPageSize
  = lens _bafsimlPageSize
      (\ s a -> s{_bafsimlPageSize = a})
      . mapping _Coerce

-- | JSONP
bafsimlCallback :: Lens' BiddersAccountsFilterSetsImpressionMetricsList (Maybe Text)
bafsimlCallback
  = lens _bafsimlCallback
      (\ s a -> s{_bafsimlCallback = a})

instance GoogleRequest
           BiddersAccountsFilterSetsImpressionMetricsList
         where
        type Rs
               BiddersAccountsFilterSetsImpressionMetricsList
             = ListImpressionMetricsResponse
        type Scopes
               BiddersAccountsFilterSetsImpressionMetricsList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersAccountsFilterSetsImpressionMetricsList'{..}
          = go _bafsimlFilterSetName _bafsimlXgafv
              _bafsimlUploadProtocol
              _bafsimlAccessToken
              _bafsimlUploadType
              _bafsimlPageToken
              _bafsimlPageSize
              _bafsimlCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersAccountsFilterSetsImpressionMetricsListResource)
                      mempty
