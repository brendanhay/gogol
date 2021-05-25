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
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreports.listdisbursements@.
module Network.Google.Resource.Content.Orderreports.Listdisbursements
    (
    -- * REST Resource
      OrderreportsListdisbursementsResource

    -- * Creating a Request
    , orderreportsListdisbursements
    , OrderreportsListdisbursements

    -- * Request Lenses
    , olDisbursementEndDate
    , olXgafv
    , olMerchantId
    , olUploadProtocol
    , olAccessToken
    , olUploadType
    , olPageToken
    , olDisbursementStartDate
    , olMaxResults
    , olCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderreports.listdisbursements@ method which the
-- 'OrderreportsListdisbursements' request conforms to.
type OrderreportsListdisbursementsResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderreports" :>
             "disbursements" :>
               QueryParam "disbursementEndDate" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "disbursementStartDate" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON]
                                     OrderreportsListDisbursementsResponse

-- | Retrieves a report for disbursements from your Merchant Center account.
--
-- /See:/ 'orderreportsListdisbursements' smart constructor.
data OrderreportsListdisbursements =
  OrderreportsListdisbursements'
    { _olDisbursementEndDate :: !(Maybe Text)
    , _olXgafv :: !(Maybe Xgafv)
    , _olMerchantId :: !(Textual Word64)
    , _olUploadProtocol :: !(Maybe Text)
    , _olAccessToken :: !(Maybe Text)
    , _olUploadType :: !(Maybe Text)
    , _olPageToken :: !(Maybe Text)
    , _olDisbursementStartDate :: !(Maybe Text)
    , _olMaxResults :: !(Maybe (Textual Word32))
    , _olCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreportsListdisbursements' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olDisbursementEndDate'
--
-- * 'olXgafv'
--
-- * 'olMerchantId'
--
-- * 'olUploadProtocol'
--
-- * 'olAccessToken'
--
-- * 'olUploadType'
--
-- * 'olPageToken'
--
-- * 'olDisbursementStartDate'
--
-- * 'olMaxResults'
--
-- * 'olCallback'
orderreportsListdisbursements
    :: Word64 -- ^ 'olMerchantId'
    -> OrderreportsListdisbursements
orderreportsListdisbursements pOlMerchantId_ =
  OrderreportsListdisbursements'
    { _olDisbursementEndDate = Nothing
    , _olXgafv = Nothing
    , _olMerchantId = _Coerce # pOlMerchantId_
    , _olUploadProtocol = Nothing
    , _olAccessToken = Nothing
    , _olUploadType = Nothing
    , _olPageToken = Nothing
    , _olDisbursementStartDate = Nothing
    , _olMaxResults = Nothing
    , _olCallback = Nothing
    }


-- | The last date which disbursements occurred. In ISO 8601 format. Default:
-- current date.
olDisbursementEndDate :: Lens' OrderreportsListdisbursements (Maybe Text)
olDisbursementEndDate
  = lens _olDisbursementEndDate
      (\ s a -> s{_olDisbursementEndDate = a})

-- | V1 error format.
olXgafv :: Lens' OrderreportsListdisbursements (Maybe Xgafv)
olXgafv = lens _olXgafv (\ s a -> s{_olXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
olMerchantId :: Lens' OrderreportsListdisbursements Word64
olMerchantId
  = lens _olMerchantId (\ s a -> s{_olMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olUploadProtocol :: Lens' OrderreportsListdisbursements (Maybe Text)
olUploadProtocol
  = lens _olUploadProtocol
      (\ s a -> s{_olUploadProtocol = a})

-- | OAuth access token.
olAccessToken :: Lens' OrderreportsListdisbursements (Maybe Text)
olAccessToken
  = lens _olAccessToken
      (\ s a -> s{_olAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olUploadType :: Lens' OrderreportsListdisbursements (Maybe Text)
olUploadType
  = lens _olUploadType (\ s a -> s{_olUploadType = a})

-- | The token returned by the previous request.
olPageToken :: Lens' OrderreportsListdisbursements (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | The first date which disbursements occurred. In ISO 8601 format.
olDisbursementStartDate :: Lens' OrderreportsListdisbursements (Maybe Text)
olDisbursementStartDate
  = lens _olDisbursementStartDate
      (\ s a -> s{_olDisbursementStartDate = a})

-- | The maximum number of disbursements to return in the response, used for
-- paging.
olMaxResults :: Lens' OrderreportsListdisbursements (Maybe Word32)
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})
      . mapping _Coerce

-- | JSONP
olCallback :: Lens' OrderreportsListdisbursements (Maybe Text)
olCallback
  = lens _olCallback (\ s a -> s{_olCallback = a})

instance GoogleRequest OrderreportsListdisbursements
         where
        type Rs OrderreportsListdisbursements =
             OrderreportsListDisbursementsResponse
        type Scopes OrderreportsListdisbursements =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderreportsListdisbursements'{..}
          = go _olMerchantId _olDisbursementEndDate _olXgafv
              _olUploadProtocol
              _olAccessToken
              _olUploadType
              _olPageToken
              _olDisbursementStartDate
              _olMaxResults
              _olCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrderreportsListdisbursementsResource)
                      mempty
