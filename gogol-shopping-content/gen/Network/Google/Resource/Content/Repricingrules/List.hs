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
-- Module      : Network.Google.Resource.Content.Repricingrules.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the repricing rules in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.repricingrules.list@.
module Network.Google.Resource.Content.Repricingrules.List
    (
    -- * REST Resource
      RepricingrulesListResource

    -- * Creating a Request
    , repricingrulesList
    , RepricingrulesList

    -- * Request Lenses
    , rlXgafv
    , rlLanguageCode
    , rlMerchantId
    , rlUploadProtocol
    , rlAccessToken
    , rlUploadType
    , rlCountryCode
    , rlPageToken
    , rlPageSize
    , rlCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.repricingrules.list@ method which the
-- 'RepricingrulesList' request conforms to.
type RepricingrulesListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "repricingrules" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "languageCode" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "countryCode" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListRepricingRulesResponse

-- | Lists the repricing rules in your Merchant Center account.
--
-- /See:/ 'repricingrulesList' smart constructor.
data RepricingrulesList =
  RepricingrulesList'
    { _rlXgafv :: !(Maybe Xgafv)
    , _rlLanguageCode :: !(Maybe Text)
    , _rlMerchantId :: !(Textual Int64)
    , _rlUploadProtocol :: !(Maybe Text)
    , _rlAccessToken :: !(Maybe Text)
    , _rlUploadType :: !(Maybe Text)
    , _rlCountryCode :: !(Maybe Text)
    , _rlPageToken :: !(Maybe Text)
    , _rlPageSize :: !(Maybe (Textual Int32))
    , _rlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingrulesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlXgafv'
--
-- * 'rlLanguageCode'
--
-- * 'rlMerchantId'
--
-- * 'rlUploadProtocol'
--
-- * 'rlAccessToken'
--
-- * 'rlUploadType'
--
-- * 'rlCountryCode'
--
-- * 'rlPageToken'
--
-- * 'rlPageSize'
--
-- * 'rlCallback'
repricingrulesList
    :: Int64 -- ^ 'rlMerchantId'
    -> RepricingrulesList
repricingrulesList pRlMerchantId_ =
  RepricingrulesList'
    { _rlXgafv = Nothing
    , _rlLanguageCode = Nothing
    , _rlMerchantId = _Coerce # pRlMerchantId_
    , _rlUploadProtocol = Nothing
    , _rlAccessToken = Nothing
    , _rlUploadType = Nothing
    , _rlCountryCode = Nothing
    , _rlPageToken = Nothing
    , _rlPageSize = Nothing
    , _rlCallback = Nothing
    }


-- | V1 error format.
rlXgafv :: Lens' RepricingrulesList (Maybe Xgafv)
rlXgafv = lens _rlXgafv (\ s a -> s{_rlXgafv = a})

-- | The two-letter ISO 639-1 language code associated with the repricing
-- rule, used as a filter.
rlLanguageCode :: Lens' RepricingrulesList (Maybe Text)
rlLanguageCode
  = lens _rlLanguageCode
      (\ s a -> s{_rlLanguageCode = a})

-- | Required. The id of the merchant who owns the repricing rule.
rlMerchantId :: Lens' RepricingrulesList Int64
rlMerchantId
  = lens _rlMerchantId (\ s a -> s{_rlMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rlUploadProtocol :: Lens' RepricingrulesList (Maybe Text)
rlUploadProtocol
  = lens _rlUploadProtocol
      (\ s a -> s{_rlUploadProtocol = a})

-- | OAuth access token.
rlAccessToken :: Lens' RepricingrulesList (Maybe Text)
rlAccessToken
  = lens _rlAccessToken
      (\ s a -> s{_rlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rlUploadType :: Lens' RepricingrulesList (Maybe Text)
rlUploadType
  = lens _rlUploadType (\ s a -> s{_rlUploadType = a})

-- | [CLDR country
-- code](http:\/\/www.unicode.org\/repos\/cldr\/tags\/latest\/common\/main\/en.xml)
-- (e.g. \"US\"), used as a filter on repricing rules.
rlCountryCode :: Lens' RepricingrulesList (Maybe Text)
rlCountryCode
  = lens _rlCountryCode
      (\ s a -> s{_rlCountryCode = a})

-- | A page token, received from a previous \`ListRepricingRules\` call.
-- Provide this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`ListRepricingRules\` must match the call that
-- provided the page token.
rlPageToken :: Lens' RepricingrulesList (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | The maximum number of repricing rules to return. The service may return
-- fewer than this value. If unspecified, at most 50 rules will be
-- returned. The maximum value is 1000; values above 1000 will be coerced
-- to 1000.
rlPageSize :: Lens' RepricingrulesList (Maybe Int32)
rlPageSize
  = lens _rlPageSize (\ s a -> s{_rlPageSize = a}) .
      mapping _Coerce

-- | JSONP
rlCallback :: Lens' RepricingrulesList (Maybe Text)
rlCallback
  = lens _rlCallback (\ s a -> s{_rlCallback = a})

instance GoogleRequest RepricingrulesList where
        type Rs RepricingrulesList =
             ListRepricingRulesResponse
        type Scopes RepricingrulesList =
             '["https://www.googleapis.com/auth/content"]
        requestClient RepricingrulesList'{..}
          = go _rlMerchantId _rlXgafv _rlLanguageCode
              _rlUploadProtocol
              _rlAccessToken
              _rlUploadType
              _rlCountryCode
              _rlPageToken
              _rlPageSize
              _rlCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy RepricingrulesListResource)
                      mempty
