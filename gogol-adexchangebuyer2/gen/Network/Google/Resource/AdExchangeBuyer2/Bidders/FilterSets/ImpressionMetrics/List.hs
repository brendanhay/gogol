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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.ImpressionMetrics.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all metrics that are measured in terms of number of impressions.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.impressionMetrics.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.ImpressionMetrics.List
    (
    -- * REST Resource
      BiddersFilterSetsImpressionMetricsListResource

    -- * Creating a Request
    , biddersFilterSetsImpressionMetricsList
    , BiddersFilterSetsImpressionMetricsList

    -- * Request Lenses
    , bfsimlXgafv
    , bfsimlUploadProtocol
    , bfsimlFilterSetName
    , bfsimlAccessToken
    , bfsimlUploadType
    , bfsimlPageToken
    , bfsimlPageSize
    , bfsimlCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.impressionMetrics.list@ method which the
-- 'BiddersFilterSetsImpressionMetricsList' request conforms to.
type BiddersFilterSetsImpressionMetricsListResource =
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
-- /See:/ 'biddersFilterSetsImpressionMetricsList' smart constructor.
data BiddersFilterSetsImpressionMetricsList = BiddersFilterSetsImpressionMetricsList'
    { _bfsimlXgafv          :: !(Maybe Xgafv)
    , _bfsimlUploadProtocol :: !(Maybe Text)
    , _bfsimlFilterSetName  :: !Text
    , _bfsimlAccessToken    :: !(Maybe Text)
    , _bfsimlUploadType     :: !(Maybe Text)
    , _bfsimlPageToken      :: !(Maybe Text)
    , _bfsimlPageSize       :: !(Maybe (Textual Int32))
    , _bfsimlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BiddersFilterSetsImpressionMetricsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfsimlXgafv'
--
-- * 'bfsimlUploadProtocol'
--
-- * 'bfsimlFilterSetName'
--
-- * 'bfsimlAccessToken'
--
-- * 'bfsimlUploadType'
--
-- * 'bfsimlPageToken'
--
-- * 'bfsimlPageSize'
--
-- * 'bfsimlCallback'
biddersFilterSetsImpressionMetricsList
    :: Text -- ^ 'bfsimlFilterSetName'
    -> BiddersFilterSetsImpressionMetricsList
biddersFilterSetsImpressionMetricsList pBfsimlFilterSetName_ =
    BiddersFilterSetsImpressionMetricsList'
    { _bfsimlXgafv = Nothing
    , _bfsimlUploadProtocol = Nothing
    , _bfsimlFilterSetName = pBfsimlFilterSetName_
    , _bfsimlAccessToken = Nothing
    , _bfsimlUploadType = Nothing
    , _bfsimlPageToken = Nothing
    , _bfsimlPageSize = Nothing
    , _bfsimlCallback = Nothing
    }

-- | V1 error format.
bfsimlXgafv :: Lens' BiddersFilterSetsImpressionMetricsList (Maybe Xgafv)
bfsimlXgafv
  = lens _bfsimlXgafv (\ s a -> s{_bfsimlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfsimlUploadProtocol :: Lens' BiddersFilterSetsImpressionMetricsList (Maybe Text)
bfsimlUploadProtocol
  = lens _bfsimlUploadProtocol
      (\ s a -> s{_bfsimlUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bfsimlFilterSetName :: Lens' BiddersFilterSetsImpressionMetricsList Text
bfsimlFilterSetName
  = lens _bfsimlFilterSetName
      (\ s a -> s{_bfsimlFilterSetName = a})

-- | OAuth access token.
bfsimlAccessToken :: Lens' BiddersFilterSetsImpressionMetricsList (Maybe Text)
bfsimlAccessToken
  = lens _bfsimlAccessToken
      (\ s a -> s{_bfsimlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfsimlUploadType :: Lens' BiddersFilterSetsImpressionMetricsList (Maybe Text)
bfsimlUploadType
  = lens _bfsimlUploadType
      (\ s a -> s{_bfsimlUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListImpressionMetricsResponse.nextPageToken returned from the previous
-- call to the impressionMetrics.list method.
bfsimlPageToken :: Lens' BiddersFilterSetsImpressionMetricsList (Maybe Text)
bfsimlPageToken
  = lens _bfsimlPageToken
      (\ s a -> s{_bfsimlPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bfsimlPageSize :: Lens' BiddersFilterSetsImpressionMetricsList (Maybe Int32)
bfsimlPageSize
  = lens _bfsimlPageSize
      (\ s a -> s{_bfsimlPageSize = a})
      . mapping _Coerce

-- | JSONP
bfsimlCallback :: Lens' BiddersFilterSetsImpressionMetricsList (Maybe Text)
bfsimlCallback
  = lens _bfsimlCallback
      (\ s a -> s{_bfsimlCallback = a})

instance GoogleRequest
         BiddersFilterSetsImpressionMetricsList where
        type Rs BiddersFilterSetsImpressionMetricsList =
             ListImpressionMetricsResponse
        type Scopes BiddersFilterSetsImpressionMetricsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersFilterSetsImpressionMetricsList'{..}
          = go _bfsimlFilterSetName _bfsimlXgafv
              _bfsimlUploadProtocol
              _bfsimlAccessToken
              _bfsimlUploadType
              _bfsimlPageToken
              _bfsimlPageSize
              _bfsimlCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BiddersFilterSetsImpressionMetricsListResource)
                      mempty
