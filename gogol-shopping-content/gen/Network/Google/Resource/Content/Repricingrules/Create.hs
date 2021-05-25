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
-- Module      : Network.Google.Resource.Content.Repricingrules.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a repricing rule for your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.repricingrules.create@.
module Network.Google.Resource.Content.Repricingrules.Create
    (
    -- * REST Resource
      RepricingrulesCreateResource

    -- * Creating a Request
    , repricingrulesCreate
    , RepricingrulesCreate

    -- * Request Lenses
    , repXgafv
    , repMerchantId
    , repUploadProtocol
    , repAccessToken
    , repRuleId
    , repUploadType
    , repPayload
    , repCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.repricingrules.create@ method which the
-- 'RepricingrulesCreate' request conforms to.
type RepricingrulesCreateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "repricingrules" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "ruleId" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RepricingRule :>
                             Post '[JSON] RepricingRule

-- | Creates a repricing rule for your Merchant Center account.
--
-- /See:/ 'repricingrulesCreate' smart constructor.
data RepricingrulesCreate =
  RepricingrulesCreate'
    { _repXgafv :: !(Maybe Xgafv)
    , _repMerchantId :: !(Textual Int64)
    , _repUploadProtocol :: !(Maybe Text)
    , _repAccessToken :: !(Maybe Text)
    , _repRuleId :: !(Maybe Text)
    , _repUploadType :: !(Maybe Text)
    , _repPayload :: !RepricingRule
    , _repCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingrulesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'repXgafv'
--
-- * 'repMerchantId'
--
-- * 'repUploadProtocol'
--
-- * 'repAccessToken'
--
-- * 'repRuleId'
--
-- * 'repUploadType'
--
-- * 'repPayload'
--
-- * 'repCallback'
repricingrulesCreate
    :: Int64 -- ^ 'repMerchantId'
    -> RepricingRule -- ^ 'repPayload'
    -> RepricingrulesCreate
repricingrulesCreate pRepMerchantId_ pRepPayload_ =
  RepricingrulesCreate'
    { _repXgafv = Nothing
    , _repMerchantId = _Coerce # pRepMerchantId_
    , _repUploadProtocol = Nothing
    , _repAccessToken = Nothing
    , _repRuleId = Nothing
    , _repUploadType = Nothing
    , _repPayload = pRepPayload_
    , _repCallback = Nothing
    }


-- | V1 error format.
repXgafv :: Lens' RepricingrulesCreate (Maybe Xgafv)
repXgafv = lens _repXgafv (\ s a -> s{_repXgafv = a})

-- | Required. The id of the merchant who owns the repricing rule.
repMerchantId :: Lens' RepricingrulesCreate Int64
repMerchantId
  = lens _repMerchantId
      (\ s a -> s{_repMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
repUploadProtocol :: Lens' RepricingrulesCreate (Maybe Text)
repUploadProtocol
  = lens _repUploadProtocol
      (\ s a -> s{_repUploadProtocol = a})

-- | OAuth access token.
repAccessToken :: Lens' RepricingrulesCreate (Maybe Text)
repAccessToken
  = lens _repAccessToken
      (\ s a -> s{_repAccessToken = a})

-- | Required. The id of the rule to create.
repRuleId :: Lens' RepricingrulesCreate (Maybe Text)
repRuleId
  = lens _repRuleId (\ s a -> s{_repRuleId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
repUploadType :: Lens' RepricingrulesCreate (Maybe Text)
repUploadType
  = lens _repUploadType
      (\ s a -> s{_repUploadType = a})

-- | Multipart request metadata.
repPayload :: Lens' RepricingrulesCreate RepricingRule
repPayload
  = lens _repPayload (\ s a -> s{_repPayload = a})

-- | JSONP
repCallback :: Lens' RepricingrulesCreate (Maybe Text)
repCallback
  = lens _repCallback (\ s a -> s{_repCallback = a})

instance GoogleRequest RepricingrulesCreate where
        type Rs RepricingrulesCreate = RepricingRule
        type Scopes RepricingrulesCreate =
             '["https://www.googleapis.com/auth/content"]
        requestClient RepricingrulesCreate'{..}
          = go _repMerchantId _repXgafv _repUploadProtocol
              _repAccessToken
              _repRuleId
              _repUploadType
              _repCallback
              (Just AltJSON)
              _repPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy RepricingrulesCreateResource)
                      mempty
