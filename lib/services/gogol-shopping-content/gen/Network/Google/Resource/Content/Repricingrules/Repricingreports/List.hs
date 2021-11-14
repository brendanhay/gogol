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
-- Module      : Network.Google.Resource.Content.Repricingrules.Repricingreports.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the metrics report for a given Repricing rule.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.repricingrules.repricingreports.list@.
module Network.Google.Resource.Content.Repricingrules.Repricingreports.List
    (
    -- * REST Resource
      RepricingrulesRepricingreportsListResource

    -- * Creating a Request
    , repricingrulesRepricingreportsList
    , RepricingrulesRepricingreportsList

    -- * Request Lenses
    , rrlXgafv
    , rrlMerchantId
    , rrlUploadProtocol
    , rrlAccessToken
    , rrlRuleId
    , rrlEndDate
    , rrlUploadType
    , rrlStartDate
    , rrlPageToken
    , rrlPageSize
    , rrlCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.repricingrules.repricingreports.list@ method which the
-- 'RepricingrulesRepricingreportsList' request conforms to.
type RepricingrulesRepricingreportsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "repricingrules" :>
             Capture "ruleId" Text :>
               "repricingreports" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "endDate" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "startDate" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "pageSize" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON]
                                       ListRepricingRuleReportsResponse

-- | Lists the metrics report for a given Repricing rule.
--
-- /See:/ 'repricingrulesRepricingreportsList' smart constructor.
data RepricingrulesRepricingreportsList =
  RepricingrulesRepricingreportsList'
    { _rrlXgafv :: !(Maybe Xgafv)
    , _rrlMerchantId :: !(Textual Int64)
    , _rrlUploadProtocol :: !(Maybe Text)
    , _rrlAccessToken :: !(Maybe Text)
    , _rrlRuleId :: !Text
    , _rrlEndDate :: !(Maybe Text)
    , _rrlUploadType :: !(Maybe Text)
    , _rrlStartDate :: !(Maybe Text)
    , _rrlPageToken :: !(Maybe Text)
    , _rrlPageSize :: !(Maybe (Textual Int32))
    , _rrlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingrulesRepricingreportsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrlXgafv'
--
-- * 'rrlMerchantId'
--
-- * 'rrlUploadProtocol'
--
-- * 'rrlAccessToken'
--
-- * 'rrlRuleId'
--
-- * 'rrlEndDate'
--
-- * 'rrlUploadType'
--
-- * 'rrlStartDate'
--
-- * 'rrlPageToken'
--
-- * 'rrlPageSize'
--
-- * 'rrlCallback'
repricingrulesRepricingreportsList
    :: Int64 -- ^ 'rrlMerchantId'
    -> Text -- ^ 'rrlRuleId'
    -> RepricingrulesRepricingreportsList
repricingrulesRepricingreportsList pRrlMerchantId_ pRrlRuleId_ =
  RepricingrulesRepricingreportsList'
    { _rrlXgafv = Nothing
    , _rrlMerchantId = _Coerce # pRrlMerchantId_
    , _rrlUploadProtocol = Nothing
    , _rrlAccessToken = Nothing
    , _rrlRuleId = pRrlRuleId_
    , _rrlEndDate = Nothing
    , _rrlUploadType = Nothing
    , _rrlStartDate = Nothing
    , _rrlPageToken = Nothing
    , _rrlPageSize = Nothing
    , _rrlCallback = Nothing
    }


-- | V1 error format.
rrlXgafv :: Lens' RepricingrulesRepricingreportsList (Maybe Xgafv)
rrlXgafv = lens _rrlXgafv (\ s a -> s{_rrlXgafv = a})

-- | Required. Id of the merchant who owns the Repricing rule.
rrlMerchantId :: Lens' RepricingrulesRepricingreportsList Int64
rrlMerchantId
  = lens _rrlMerchantId
      (\ s a -> s{_rrlMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rrlUploadProtocol :: Lens' RepricingrulesRepricingreportsList (Maybe Text)
rrlUploadProtocol
  = lens _rrlUploadProtocol
      (\ s a -> s{_rrlUploadProtocol = a})

-- | OAuth access token.
rrlAccessToken :: Lens' RepricingrulesRepricingreportsList (Maybe Text)
rrlAccessToken
  = lens _rrlAccessToken
      (\ s a -> s{_rrlAccessToken = a})

-- | Required. Id of the Repricing rule.
rrlRuleId :: Lens' RepricingrulesRepricingreportsList Text
rrlRuleId
  = lens _rrlRuleId (\ s a -> s{_rrlRuleId = a})

-- | Gets Repricing reports on and before this date in the merchant\'s
-- timezone. You can only retrieve data up to 7 days ago (default) or
-- earlier. Format: YYYY-MM-DD.
rrlEndDate :: Lens' RepricingrulesRepricingreportsList (Maybe Text)
rrlEndDate
  = lens _rrlEndDate (\ s a -> s{_rrlEndDate = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rrlUploadType :: Lens' RepricingrulesRepricingreportsList (Maybe Text)
rrlUploadType
  = lens _rrlUploadType
      (\ s a -> s{_rrlUploadType = a})

-- | Gets Repricing reports on and after this date in the merchant\'s
-- timezone, up to one year ago. Do not use a start date later than 7 days
-- ago (default). Format: YYYY-MM-DD.
rrlStartDate :: Lens' RepricingrulesRepricingreportsList (Maybe Text)
rrlStartDate
  = lens _rrlStartDate (\ s a -> s{_rrlStartDate = a})

-- | Token (if provided) to retrieve the subsequent page. All other
-- parameters must match the original call that provided the page token.
rrlPageToken :: Lens' RepricingrulesRepricingreportsList (Maybe Text)
rrlPageToken
  = lens _rrlPageToken (\ s a -> s{_rrlPageToken = a})

-- | Maximum number of daily reports to return. Each report includes data
-- from a single 24-hour period. The page size defaults to 50 and values
-- above 1000 are coerced to 1000. This service may return fewer days than
-- this value, for example, if the time between your start and end date is
-- less than page size.
rrlPageSize :: Lens' RepricingrulesRepricingreportsList (Maybe Int32)
rrlPageSize
  = lens _rrlPageSize (\ s a -> s{_rrlPageSize = a}) .
      mapping _Coerce

-- | JSONP
rrlCallback :: Lens' RepricingrulesRepricingreportsList (Maybe Text)
rrlCallback
  = lens _rrlCallback (\ s a -> s{_rrlCallback = a})

instance GoogleRequest
           RepricingrulesRepricingreportsList
         where
        type Rs RepricingrulesRepricingreportsList =
             ListRepricingRuleReportsResponse
        type Scopes RepricingrulesRepricingreportsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient RepricingrulesRepricingreportsList'{..}
          = go _rrlMerchantId _rrlRuleId _rrlXgafv
              _rrlUploadProtocol
              _rrlAccessToken
              _rrlEndDate
              _rrlUploadType
              _rrlStartDate
              _rrlPageToken
              _rrlPageSize
              _rrlCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RepricingrulesRepricingreportsListResource)
                      mempty
