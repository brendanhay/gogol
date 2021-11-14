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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Creatives.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all creatives associated with a specific reason for which bids were
-- filtered, with the number of bids filtered for each creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.filteredBids.creatives.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Creatives.List
    (
    -- * REST Resource
      BiddersFilterSetsFilteredBidsCreativesListResource

    -- * Creating a Request
    , biddersFilterSetsFilteredBidsCreativesList
    , BiddersFilterSetsFilteredBidsCreativesList

    -- * Request Lenses
    , bfsfbclXgafv
    , bfsfbclUploadProtocol
    , bfsfbclFilterSetName
    , bfsfbclAccessToken
    , bfsfbclUploadType
    , bfsfbclCreativeStatusId
    , bfsfbclPageToken
    , bfsfbclPageSize
    , bfsfbclCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.filteredBids.creatives.list@ method which the
-- 'BiddersFilterSetsFilteredBidsCreativesList' request conforms to.
type BiddersFilterSetsFilteredBidsCreativesListResource
     =
     "v2beta1" :>
       Capture "filterSetName" Text :>
         "filteredBids" :>
           Capture "creativeStatusId" (Textual Int32) :>
             "creatives" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 ListCreativeStatusBreakdownByCreativeResponse

-- | List all creatives associated with a specific reason for which bids were
-- filtered, with the number of bids filtered for each creative.
--
-- /See:/ 'biddersFilterSetsFilteredBidsCreativesList' smart constructor.
data BiddersFilterSetsFilteredBidsCreativesList =
  BiddersFilterSetsFilteredBidsCreativesList'
    { _bfsfbclXgafv :: !(Maybe Xgafv)
    , _bfsfbclUploadProtocol :: !(Maybe Text)
    , _bfsfbclFilterSetName :: !Text
    , _bfsfbclAccessToken :: !(Maybe Text)
    , _bfsfbclUploadType :: !(Maybe Text)
    , _bfsfbclCreativeStatusId :: !(Textual Int32)
    , _bfsfbclPageToken :: !(Maybe Text)
    , _bfsfbclPageSize :: !(Maybe (Textual Int32))
    , _bfsfbclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersFilterSetsFilteredBidsCreativesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfsfbclXgafv'
--
-- * 'bfsfbclUploadProtocol'
--
-- * 'bfsfbclFilterSetName'
--
-- * 'bfsfbclAccessToken'
--
-- * 'bfsfbclUploadType'
--
-- * 'bfsfbclCreativeStatusId'
--
-- * 'bfsfbclPageToken'
--
-- * 'bfsfbclPageSize'
--
-- * 'bfsfbclCallback'
biddersFilterSetsFilteredBidsCreativesList
    :: Text -- ^ 'bfsfbclFilterSetName'
    -> Int32 -- ^ 'bfsfbclCreativeStatusId'
    -> BiddersFilterSetsFilteredBidsCreativesList
biddersFilterSetsFilteredBidsCreativesList pBfsfbclFilterSetName_ pBfsfbclCreativeStatusId_ =
  BiddersFilterSetsFilteredBidsCreativesList'
    { _bfsfbclXgafv = Nothing
    , _bfsfbclUploadProtocol = Nothing
    , _bfsfbclFilterSetName = pBfsfbclFilterSetName_
    , _bfsfbclAccessToken = Nothing
    , _bfsfbclUploadType = Nothing
    , _bfsfbclCreativeStatusId = _Coerce # pBfsfbclCreativeStatusId_
    , _bfsfbclPageToken = Nothing
    , _bfsfbclPageSize = Nothing
    , _bfsfbclCallback = Nothing
    }


-- | V1 error format.
bfsfbclXgafv :: Lens' BiddersFilterSetsFilteredBidsCreativesList (Maybe Xgafv)
bfsfbclXgafv
  = lens _bfsfbclXgafv (\ s a -> s{_bfsfbclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfsfbclUploadProtocol :: Lens' BiddersFilterSetsFilteredBidsCreativesList (Maybe Text)
bfsfbclUploadProtocol
  = lens _bfsfbclUploadProtocol
      (\ s a -> s{_bfsfbclUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bfsfbclFilterSetName :: Lens' BiddersFilterSetsFilteredBidsCreativesList Text
bfsfbclFilterSetName
  = lens _bfsfbclFilterSetName
      (\ s a -> s{_bfsfbclFilterSetName = a})

-- | OAuth access token.
bfsfbclAccessToken :: Lens' BiddersFilterSetsFilteredBidsCreativesList (Maybe Text)
bfsfbclAccessToken
  = lens _bfsfbclAccessToken
      (\ s a -> s{_bfsfbclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfsfbclUploadType :: Lens' BiddersFilterSetsFilteredBidsCreativesList (Maybe Text)
bfsfbclUploadType
  = lens _bfsfbclUploadType
      (\ s a -> s{_bfsfbclUploadType = a})

-- | The ID of the creative status for which to retrieve a breakdown by
-- creative. See
-- [creative-status-codes](https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/creative-status-codes).
bfsfbclCreativeStatusId :: Lens' BiddersFilterSetsFilteredBidsCreativesList Int32
bfsfbclCreativeStatusId
  = lens _bfsfbclCreativeStatusId
      (\ s a -> s{_bfsfbclCreativeStatusId = a})
      . _Coerce

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListCreativeStatusBreakdownByCreativeResponse.nextPageToken returned
-- from the previous call to the filteredBids.creatives.list method.
bfsfbclPageToken :: Lens' BiddersFilterSetsFilteredBidsCreativesList (Maybe Text)
bfsfbclPageToken
  = lens _bfsfbclPageToken
      (\ s a -> s{_bfsfbclPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bfsfbclPageSize :: Lens' BiddersFilterSetsFilteredBidsCreativesList (Maybe Int32)
bfsfbclPageSize
  = lens _bfsfbclPageSize
      (\ s a -> s{_bfsfbclPageSize = a})
      . mapping _Coerce

-- | JSONP
bfsfbclCallback :: Lens' BiddersFilterSetsFilteredBidsCreativesList (Maybe Text)
bfsfbclCallback
  = lens _bfsfbclCallback
      (\ s a -> s{_bfsfbclCallback = a})

instance GoogleRequest
           BiddersFilterSetsFilteredBidsCreativesList
         where
        type Rs BiddersFilterSetsFilteredBidsCreativesList =
             ListCreativeStatusBreakdownByCreativeResponse
        type Scopes
               BiddersFilterSetsFilteredBidsCreativesList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersFilterSetsFilteredBidsCreativesList'{..}
          = go _bfsfbclFilterSetName _bfsfbclCreativeStatusId
              _bfsfbclXgafv
              _bfsfbclUploadProtocol
              _bfsfbclAccessToken
              _bfsfbclUploadType
              _bfsfbclPageToken
              _bfsfbclPageSize
              _bfsfbclCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersFilterSetsFilteredBidsCreativesListResource)
                      mempty
