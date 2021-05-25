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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.Creatives.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all creatives associated with a specific reason for which bids were
-- filtered, with the number of bids filtered for each creative.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.filteredBids.creatives.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.Creatives.List
    (
    -- * REST Resource
      BiddersAccountsFilterSetsFilteredBidsCreativesListResource

    -- * Creating a Request
    , biddersAccountsFilterSetsFilteredBidsCreativesList
    , BiddersAccountsFilterSetsFilteredBidsCreativesList

    -- * Request Lenses
    , bafsfbclXgafv
    , bafsfbclUploadProtocol
    , bafsfbclFilterSetName
    , bafsfbclAccessToken
    , bafsfbclUploadType
    , bafsfbclCreativeStatusId
    , bafsfbclPageToken
    , bafsfbclPageSize
    , bafsfbclCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.filteredBids.creatives.list@ method which the
-- 'BiddersAccountsFilterSetsFilteredBidsCreativesList' request conforms to.
type BiddersAccountsFilterSetsFilteredBidsCreativesListResource
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
-- /See:/ 'biddersAccountsFilterSetsFilteredBidsCreativesList' smart constructor.
data BiddersAccountsFilterSetsFilteredBidsCreativesList =
  BiddersAccountsFilterSetsFilteredBidsCreativesList'
    { _bafsfbclXgafv :: !(Maybe Xgafv)
    , _bafsfbclUploadProtocol :: !(Maybe Text)
    , _bafsfbclFilterSetName :: !Text
    , _bafsfbclAccessToken :: !(Maybe Text)
    , _bafsfbclUploadType :: !(Maybe Text)
    , _bafsfbclCreativeStatusId :: !(Textual Int32)
    , _bafsfbclPageToken :: !(Maybe Text)
    , _bafsfbclPageSize :: !(Maybe (Textual Int32))
    , _bafsfbclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersAccountsFilterSetsFilteredBidsCreativesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafsfbclXgafv'
--
-- * 'bafsfbclUploadProtocol'
--
-- * 'bafsfbclFilterSetName'
--
-- * 'bafsfbclAccessToken'
--
-- * 'bafsfbclUploadType'
--
-- * 'bafsfbclCreativeStatusId'
--
-- * 'bafsfbclPageToken'
--
-- * 'bafsfbclPageSize'
--
-- * 'bafsfbclCallback'
biddersAccountsFilterSetsFilteredBidsCreativesList
    :: Text -- ^ 'bafsfbclFilterSetName'
    -> Int32 -- ^ 'bafsfbclCreativeStatusId'
    -> BiddersAccountsFilterSetsFilteredBidsCreativesList
biddersAccountsFilterSetsFilteredBidsCreativesList pBafsfbclFilterSetName_ pBafsfbclCreativeStatusId_ =
  BiddersAccountsFilterSetsFilteredBidsCreativesList'
    { _bafsfbclXgafv = Nothing
    , _bafsfbclUploadProtocol = Nothing
    , _bafsfbclFilterSetName = pBafsfbclFilterSetName_
    , _bafsfbclAccessToken = Nothing
    , _bafsfbclUploadType = Nothing
    , _bafsfbclCreativeStatusId = _Coerce # pBafsfbclCreativeStatusId_
    , _bafsfbclPageToken = Nothing
    , _bafsfbclPageSize = Nothing
    , _bafsfbclCallback = Nothing
    }


-- | V1 error format.
bafsfbclXgafv :: Lens' BiddersAccountsFilterSetsFilteredBidsCreativesList (Maybe Xgafv)
bafsfbclXgafv
  = lens _bafsfbclXgafv
      (\ s a -> s{_bafsfbclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafsfbclUploadProtocol :: Lens' BiddersAccountsFilterSetsFilteredBidsCreativesList (Maybe Text)
bafsfbclUploadProtocol
  = lens _bafsfbclUploadProtocol
      (\ s a -> s{_bafsfbclUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bafsfbclFilterSetName :: Lens' BiddersAccountsFilterSetsFilteredBidsCreativesList Text
bafsfbclFilterSetName
  = lens _bafsfbclFilterSetName
      (\ s a -> s{_bafsfbclFilterSetName = a})

-- | OAuth access token.
bafsfbclAccessToken :: Lens' BiddersAccountsFilterSetsFilteredBidsCreativesList (Maybe Text)
bafsfbclAccessToken
  = lens _bafsfbclAccessToken
      (\ s a -> s{_bafsfbclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafsfbclUploadType :: Lens' BiddersAccountsFilterSetsFilteredBidsCreativesList (Maybe Text)
bafsfbclUploadType
  = lens _bafsfbclUploadType
      (\ s a -> s{_bafsfbclUploadType = a})

-- | The ID of the creative status for which to retrieve a breakdown by
-- creative. See
-- [creative-status-codes](https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/creative-status-codes).
bafsfbclCreativeStatusId :: Lens' BiddersAccountsFilterSetsFilteredBidsCreativesList Int32
bafsfbclCreativeStatusId
  = lens _bafsfbclCreativeStatusId
      (\ s a -> s{_bafsfbclCreativeStatusId = a})
      . _Coerce

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListCreativeStatusBreakdownByCreativeResponse.nextPageToken returned
-- from the previous call to the filteredBids.creatives.list method.
bafsfbclPageToken :: Lens' BiddersAccountsFilterSetsFilteredBidsCreativesList (Maybe Text)
bafsfbclPageToken
  = lens _bafsfbclPageToken
      (\ s a -> s{_bafsfbclPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bafsfbclPageSize :: Lens' BiddersAccountsFilterSetsFilteredBidsCreativesList (Maybe Int32)
bafsfbclPageSize
  = lens _bafsfbclPageSize
      (\ s a -> s{_bafsfbclPageSize = a})
      . mapping _Coerce

-- | JSONP
bafsfbclCallback :: Lens' BiddersAccountsFilterSetsFilteredBidsCreativesList (Maybe Text)
bafsfbclCallback
  = lens _bafsfbclCallback
      (\ s a -> s{_bafsfbclCallback = a})

instance GoogleRequest
           BiddersAccountsFilterSetsFilteredBidsCreativesList
         where
        type Rs
               BiddersAccountsFilterSetsFilteredBidsCreativesList
             = ListCreativeStatusBreakdownByCreativeResponse
        type Scopes
               BiddersAccountsFilterSetsFilteredBidsCreativesList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersAccountsFilterSetsFilteredBidsCreativesList'{..}
          = go _bafsfbclFilterSetName _bafsfbclCreativeStatusId
              _bafsfbclXgafv
              _bafsfbclUploadProtocol
              _bafsfbclAccessToken
              _bafsfbclUploadType
              _bafsfbclPageToken
              _bafsfbclPageSize
              _bafsfbclCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersAccountsFilterSetsFilteredBidsCreativesListResource)
                      mempty
