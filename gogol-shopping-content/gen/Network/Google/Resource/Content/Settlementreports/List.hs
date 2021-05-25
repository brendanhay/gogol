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
-- Module      : Network.Google.Resource.Content.Settlementreports.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of settlement reports from your Merchant Center
-- account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.settlementreports.list@.
module Network.Google.Resource.Content.Settlementreports.List
    (
    -- * REST Resource
      SettlementreportsListResource

    -- * Creating a Request
    , settlementreportsList
    , SettlementreportsList

    -- * Request Lenses
    , setXgafv
    , setMerchantId
    , setUploadProtocol
    , setTransferEndDate
    , setAccessToken
    , setUploadType
    , setTransferStartDate
    , setPageToken
    , setMaxResults
    , setCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.settlementreports.list@ method which the
-- 'SettlementreportsList' request conforms to.
type SettlementreportsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "settlementreports" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "transferEndDate" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "transferStartDate" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] SettlementreportsListResponse

-- | Retrieves a list of settlement reports from your Merchant Center
-- account.
--
-- /See:/ 'settlementreportsList' smart constructor.
data SettlementreportsList =
  SettlementreportsList'
    { _setXgafv :: !(Maybe Xgafv)
    , _setMerchantId :: !(Textual Word64)
    , _setUploadProtocol :: !(Maybe Text)
    , _setTransferEndDate :: !(Maybe Text)
    , _setAccessToken :: !(Maybe Text)
    , _setUploadType :: !(Maybe Text)
    , _setTransferStartDate :: !(Maybe Text)
    , _setPageToken :: !(Maybe Text)
    , _setMaxResults :: !(Maybe (Textual Word32))
    , _setCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettlementreportsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'setXgafv'
--
-- * 'setMerchantId'
--
-- * 'setUploadProtocol'
--
-- * 'setTransferEndDate'
--
-- * 'setAccessToken'
--
-- * 'setUploadType'
--
-- * 'setTransferStartDate'
--
-- * 'setPageToken'
--
-- * 'setMaxResults'
--
-- * 'setCallback'
settlementreportsList
    :: Word64 -- ^ 'setMerchantId'
    -> SettlementreportsList
settlementreportsList pSetMerchantId_ =
  SettlementreportsList'
    { _setXgafv = Nothing
    , _setMerchantId = _Coerce # pSetMerchantId_
    , _setUploadProtocol = Nothing
    , _setTransferEndDate = Nothing
    , _setAccessToken = Nothing
    , _setUploadType = Nothing
    , _setTransferStartDate = Nothing
    , _setPageToken = Nothing
    , _setMaxResults = Nothing
    , _setCallback = Nothing
    }


-- | V1 error format.
setXgafv :: Lens' SettlementreportsList (Maybe Xgafv)
setXgafv = lens _setXgafv (\ s a -> s{_setXgafv = a})

-- | The Merchant Center account to list settlements for.
setMerchantId :: Lens' SettlementreportsList Word64
setMerchantId
  = lens _setMerchantId
      (\ s a -> s{_setMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
setUploadProtocol :: Lens' SettlementreportsList (Maybe Text)
setUploadProtocol
  = lens _setUploadProtocol
      (\ s a -> s{_setUploadProtocol = a})

-- | Obtains settlements which have transactions before this date
-- (inclusively), in ISO 8601 format.
setTransferEndDate :: Lens' SettlementreportsList (Maybe Text)
setTransferEndDate
  = lens _setTransferEndDate
      (\ s a -> s{_setTransferEndDate = a})

-- | OAuth access token.
setAccessToken :: Lens' SettlementreportsList (Maybe Text)
setAccessToken
  = lens _setAccessToken
      (\ s a -> s{_setAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
setUploadType :: Lens' SettlementreportsList (Maybe Text)
setUploadType
  = lens _setUploadType
      (\ s a -> s{_setUploadType = a})

-- | Obtains settlements which have transactions after this date
-- (inclusively), in ISO 8601 format.
setTransferStartDate :: Lens' SettlementreportsList (Maybe Text)
setTransferStartDate
  = lens _setTransferStartDate
      (\ s a -> s{_setTransferStartDate = a})

-- | The token returned by the previous request.
setPageToken :: Lens' SettlementreportsList (Maybe Text)
setPageToken
  = lens _setPageToken (\ s a -> s{_setPageToken = a})

-- | The maximum number of settlements to return in the response, used for
-- paging. The default value is 200 returns per page, and the maximum
-- allowed value is 5000 returns per page.
setMaxResults :: Lens' SettlementreportsList (Maybe Word32)
setMaxResults
  = lens _setMaxResults
      (\ s a -> s{_setMaxResults = a})
      . mapping _Coerce

-- | JSONP
setCallback :: Lens' SettlementreportsList (Maybe Text)
setCallback
  = lens _setCallback (\ s a -> s{_setCallback = a})

instance GoogleRequest SettlementreportsList where
        type Rs SettlementreportsList =
             SettlementreportsListResponse
        type Scopes SettlementreportsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient SettlementreportsList'{..}
          = go _setMerchantId _setXgafv _setUploadProtocol
              _setTransferEndDate
              _setAccessToken
              _setUploadType
              _setTransferStartDate
              _setPageToken
              _setMaxResults
              _setCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy SettlementreportsListResource)
                      mempty
