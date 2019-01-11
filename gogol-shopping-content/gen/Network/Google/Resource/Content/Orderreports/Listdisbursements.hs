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
-- Module      : Network.Google.Resource.Content.Orderreports.Listdisbursements
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report for disbursements from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orderreports.listdisbursements@.
module Network.Google.Resource.Content.Orderreports.Listdisbursements
    (
    -- * REST Resource
      OrderreportsListdisbursementsResource

    -- * Creating a Request
    , orderreportsListdisbursements
    , OrderreportsListdisbursements

    -- * Request Lenses
    , olDisbursementEndDate
    , olMerchantId
    , olPageToken
    , olDisbursementStartDate
    , olMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderreports.listdisbursements@ method which the
-- 'OrderreportsListdisbursements' request conforms to.
type OrderreportsListdisbursementsResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderreports" :>
             "disbursements" :>
               QueryParam "disbursementStartDate" Text :>
                 QueryParam "disbursementEndDate" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] OrderreportsListDisbursementsResponse

-- | Retrieves a report for disbursements from your Merchant Center account.
--
-- /See:/ 'orderreportsListdisbursements' smart constructor.
data OrderreportsListdisbursements = OrderreportsListdisbursements'
    { _olDisbursementEndDate   :: !(Maybe Text)
    , _olMerchantId            :: !(Textual Word64)
    , _olPageToken             :: !(Maybe Text)
    , _olDisbursementStartDate :: !Text
    , _olMaxResults            :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderreportsListdisbursements' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olDisbursementEndDate'
--
-- * 'olMerchantId'
--
-- * 'olPageToken'
--
-- * 'olDisbursementStartDate'
--
-- * 'olMaxResults'
orderreportsListdisbursements
    :: Word64 -- ^ 'olMerchantId'
    -> Text -- ^ 'olDisbursementStartDate'
    -> OrderreportsListdisbursements
orderreportsListdisbursements pOlMerchantId_ pOlDisbursementStartDate_ =
    OrderreportsListdisbursements'
    { _olDisbursementEndDate = Nothing
    , _olMerchantId = _Coerce # pOlMerchantId_
    , _olPageToken = Nothing
    , _olDisbursementStartDate = pOlDisbursementStartDate_
    , _olMaxResults = Nothing
    }

-- | The last date which disbursements occurred. In ISO 8601 format. Default:
-- current date.
olDisbursementEndDate :: Lens' OrderreportsListdisbursements (Maybe Text)
olDisbursementEndDate
  = lens _olDisbursementEndDate
      (\ s a -> s{_olDisbursementEndDate = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
olMerchantId :: Lens' OrderreportsListdisbursements Word64
olMerchantId
  = lens _olMerchantId (\ s a -> s{_olMerchantId = a})
      . _Coerce

-- | The token returned by the previous request.
olPageToken :: Lens' OrderreportsListdisbursements (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | The first date which disbursements occurred. In ISO 8601 format.
olDisbursementStartDate :: Lens' OrderreportsListdisbursements Text
olDisbursementStartDate
  = lens _olDisbursementStartDate
      (\ s a -> s{_olDisbursementStartDate = a})

-- | The maximum number of disbursements to return in the response, used for
-- paging.
olMaxResults :: Lens' OrderreportsListdisbursements (Maybe Word32)
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})
      . mapping _Coerce

instance GoogleRequest OrderreportsListdisbursements
         where
        type Rs OrderreportsListdisbursements =
             OrderreportsListDisbursementsResponse
        type Scopes OrderreportsListdisbursements =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderreportsListdisbursements'{..}
          = go _olMerchantId (Just _olDisbursementStartDate)
              _olDisbursementEndDate
              _olPageToken
              _olMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrderreportsListdisbursementsResource)
                      mempty
