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
-- Module      : Network.Google.Resource.Content.Productstatuses.Repricingreports.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the metrics report for a given Repricing product.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.productstatuses.repricingreports.list@.
module Network.Google.Resource.Content.Productstatuses.Repricingreports.List
    (
    -- * REST Resource
      ProductstatusesRepricingreportsListResource

    -- * Creating a Request
    , productstatusesRepricingreportsList
    , ProductstatusesRepricingreportsList

    -- * Request Lenses
    , prlXgafv
    , prlMerchantId
    , prlUploadProtocol
    , prlAccessToken
    , prlRuleId
    , prlEndDate
    , prlUploadType
    , prlStartDate
    , prlPageToken
    , prlPageSize
    , prlProductId
    , prlCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.productstatuses.repricingreports.list@ method which the
-- 'ProductstatusesRepricingreportsList' request conforms to.
type ProductstatusesRepricingreportsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "productstatuses" :>
             Capture "productId" Text :>
               "repricingreports" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "ruleId" Text :>
                         QueryParam "endDate" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "startDate" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "pageSize" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON]
                                         ListRepricingProductReportsResponse

-- | Lists the metrics report for a given Repricing product.
--
-- /See:/ 'productstatusesRepricingreportsList' smart constructor.
data ProductstatusesRepricingreportsList =
  ProductstatusesRepricingreportsList'
    { _prlXgafv :: !(Maybe Xgafv)
    , _prlMerchantId :: !(Textual Int64)
    , _prlUploadProtocol :: !(Maybe Text)
    , _prlAccessToken :: !(Maybe Text)
    , _prlRuleId :: !(Maybe Text)
    , _prlEndDate :: !(Maybe Text)
    , _prlUploadType :: !(Maybe Text)
    , _prlStartDate :: !(Maybe Text)
    , _prlPageToken :: !(Maybe Text)
    , _prlPageSize :: !(Maybe (Textual Int32))
    , _prlProductId :: !Text
    , _prlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductstatusesRepricingreportsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prlXgafv'
--
-- * 'prlMerchantId'
--
-- * 'prlUploadProtocol'
--
-- * 'prlAccessToken'
--
-- * 'prlRuleId'
--
-- * 'prlEndDate'
--
-- * 'prlUploadType'
--
-- * 'prlStartDate'
--
-- * 'prlPageToken'
--
-- * 'prlPageSize'
--
-- * 'prlProductId'
--
-- * 'prlCallback'
productstatusesRepricingreportsList
    :: Int64 -- ^ 'prlMerchantId'
    -> Text -- ^ 'prlProductId'
    -> ProductstatusesRepricingreportsList
productstatusesRepricingreportsList pPrlMerchantId_ pPrlProductId_ =
  ProductstatusesRepricingreportsList'
    { _prlXgafv = Nothing
    , _prlMerchantId = _Coerce # pPrlMerchantId_
    , _prlUploadProtocol = Nothing
    , _prlAccessToken = Nothing
    , _prlRuleId = Nothing
    , _prlEndDate = Nothing
    , _prlUploadType = Nothing
    , _prlStartDate = Nothing
    , _prlPageToken = Nothing
    , _prlPageSize = Nothing
    , _prlProductId = pPrlProductId_
    , _prlCallback = Nothing
    }


-- | V1 error format.
prlXgafv :: Lens' ProductstatusesRepricingreportsList (Maybe Xgafv)
prlXgafv = lens _prlXgafv (\ s a -> s{_prlXgafv = a})

-- | Required. Id of the merchant who owns the Repricing rule.
prlMerchantId :: Lens' ProductstatusesRepricingreportsList Int64
prlMerchantId
  = lens _prlMerchantId
      (\ s a -> s{_prlMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prlUploadProtocol :: Lens' ProductstatusesRepricingreportsList (Maybe Text)
prlUploadProtocol
  = lens _prlUploadProtocol
      (\ s a -> s{_prlUploadProtocol = a})

-- | OAuth access token.
prlAccessToken :: Lens' ProductstatusesRepricingreportsList (Maybe Text)
prlAccessToken
  = lens _prlAccessToken
      (\ s a -> s{_prlAccessToken = a})

-- | Id of the Repricing rule. If specified, only gets this rule\'s reports.
prlRuleId :: Lens' ProductstatusesRepricingreportsList (Maybe Text)
prlRuleId
  = lens _prlRuleId (\ s a -> s{_prlRuleId = a})

-- | Gets Repricing reports on and before this date in the merchant\'s
-- timezone. You can only retrieve data up to 7 days ago (default) or
-- earlier. Format is YYYY-MM-DD.
prlEndDate :: Lens' ProductstatusesRepricingreportsList (Maybe Text)
prlEndDate
  = lens _prlEndDate (\ s a -> s{_prlEndDate = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prlUploadType :: Lens' ProductstatusesRepricingreportsList (Maybe Text)
prlUploadType
  = lens _prlUploadType
      (\ s a -> s{_prlUploadType = a})

-- | Gets Repricing reports on and after this date in the merchant\'s
-- timezone, up to one year ago. Do not use a start date later than 7 days
-- ago (default). Format is YYYY-MM-DD.
prlStartDate :: Lens' ProductstatusesRepricingreportsList (Maybe Text)
prlStartDate
  = lens _prlStartDate (\ s a -> s{_prlStartDate = a})

-- | Token (if provided) to retrieve the subsequent page. All other
-- parameters must match the original call that provided the page token.
prlPageToken :: Lens' ProductstatusesRepricingreportsList (Maybe Text)
prlPageToken
  = lens _prlPageToken (\ s a -> s{_prlPageToken = a})

-- | Maximum number of days of reports to return. There can be more than one
-- rule report returned per day. For example, if 3 rule types got applied
-- to the same product within a 24-hour period, then a page_size of 1 will
-- return 3 rule reports. The page size defaults to 50 and values above
-- 1000 are coerced to 1000. This service may return fewer days of reports
-- than this value, for example, if the time between your start and end
-- date is less than the page size.
prlPageSize :: Lens' ProductstatusesRepricingreportsList (Maybe Int32)
prlPageSize
  = lens _prlPageSize (\ s a -> s{_prlPageSize = a}) .
      mapping _Coerce

-- | Required. Id of the Repricing product. Also known as the
-- [REST_ID](https:\/\/developers.google.com\/shopping-content\/reference\/rest\/v2.1\/products#Product.FIELDS.id)
prlProductId :: Lens' ProductstatusesRepricingreportsList Text
prlProductId
  = lens _prlProductId (\ s a -> s{_prlProductId = a})

-- | JSONP
prlCallback :: Lens' ProductstatusesRepricingreportsList (Maybe Text)
prlCallback
  = lens _prlCallback (\ s a -> s{_prlCallback = a})

instance GoogleRequest
           ProductstatusesRepricingreportsList
         where
        type Rs ProductstatusesRepricingreportsList =
             ListRepricingProductReportsResponse
        type Scopes ProductstatusesRepricingreportsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient
          ProductstatusesRepricingreportsList'{..}
          = go _prlMerchantId _prlProductId _prlXgafv
              _prlUploadProtocol
              _prlAccessToken
              _prlRuleId
              _prlEndDate
              _prlUploadType
              _prlStartDate
              _prlPageToken
              _prlPageSize
              _prlCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProductstatusesRepricingreportsListResource)
                      mempty
