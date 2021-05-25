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
-- Module      : Network.Google.Resource.Content.Repricingrules.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a repricing rule in your Merchant Center account. All mutable
-- fields will be overwritten in each update request. In each update, you
-- must provide all required mutable fields, or an error will be thrown. If
-- you do not provide an optional field in the update request, if that
-- field currently exists, it will be deleted from the rule.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.repricingrules.patch@.
module Network.Google.Resource.Content.Repricingrules.Patch
    (
    -- * REST Resource
      RepricingrulesPatchResource

    -- * Creating a Request
    , repricingrulesPatch
    , RepricingrulesPatch

    -- * Request Lenses
    , rppXgafv
    , rppMerchantId
    , rppUploadProtocol
    , rppAccessToken
    , rppRuleId
    , rppUploadType
    , rppPayload
    , rppCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.repricingrules.patch@ method which the
-- 'RepricingrulesPatch' request conforms to.
type RepricingrulesPatchResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "repricingrules" :>
             Capture "ruleId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RepricingRule :>
                             Patch '[JSON] RepricingRule

-- | Updates a repricing rule in your Merchant Center account. All mutable
-- fields will be overwritten in each update request. In each update, you
-- must provide all required mutable fields, or an error will be thrown. If
-- you do not provide an optional field in the update request, if that
-- field currently exists, it will be deleted from the rule.
--
-- /See:/ 'repricingrulesPatch' smart constructor.
data RepricingrulesPatch =
  RepricingrulesPatch'
    { _rppXgafv :: !(Maybe Xgafv)
    , _rppMerchantId :: !(Textual Int64)
    , _rppUploadProtocol :: !(Maybe Text)
    , _rppAccessToken :: !(Maybe Text)
    , _rppRuleId :: !Text
    , _rppUploadType :: !(Maybe Text)
    , _rppPayload :: !RepricingRule
    , _rppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingrulesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rppXgafv'
--
-- * 'rppMerchantId'
--
-- * 'rppUploadProtocol'
--
-- * 'rppAccessToken'
--
-- * 'rppRuleId'
--
-- * 'rppUploadType'
--
-- * 'rppPayload'
--
-- * 'rppCallback'
repricingrulesPatch
    :: Int64 -- ^ 'rppMerchantId'
    -> Text -- ^ 'rppRuleId'
    -> RepricingRule -- ^ 'rppPayload'
    -> RepricingrulesPatch
repricingrulesPatch pRppMerchantId_ pRppRuleId_ pRppPayload_ =
  RepricingrulesPatch'
    { _rppXgafv = Nothing
    , _rppMerchantId = _Coerce # pRppMerchantId_
    , _rppUploadProtocol = Nothing
    , _rppAccessToken = Nothing
    , _rppRuleId = pRppRuleId_
    , _rppUploadType = Nothing
    , _rppPayload = pRppPayload_
    , _rppCallback = Nothing
    }


-- | V1 error format.
rppXgafv :: Lens' RepricingrulesPatch (Maybe Xgafv)
rppXgafv = lens _rppXgafv (\ s a -> s{_rppXgafv = a})

-- | Required. The id of the merchant who owns the repricing rule.
rppMerchantId :: Lens' RepricingrulesPatch Int64
rppMerchantId
  = lens _rppMerchantId
      (\ s a -> s{_rppMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rppUploadProtocol :: Lens' RepricingrulesPatch (Maybe Text)
rppUploadProtocol
  = lens _rppUploadProtocol
      (\ s a -> s{_rppUploadProtocol = a})

-- | OAuth access token.
rppAccessToken :: Lens' RepricingrulesPatch (Maybe Text)
rppAccessToken
  = lens _rppAccessToken
      (\ s a -> s{_rppAccessToken = a})

-- | Required. The id of the rule to update.
rppRuleId :: Lens' RepricingrulesPatch Text
rppRuleId
  = lens _rppRuleId (\ s a -> s{_rppRuleId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rppUploadType :: Lens' RepricingrulesPatch (Maybe Text)
rppUploadType
  = lens _rppUploadType
      (\ s a -> s{_rppUploadType = a})

-- | Multipart request metadata.
rppPayload :: Lens' RepricingrulesPatch RepricingRule
rppPayload
  = lens _rppPayload (\ s a -> s{_rppPayload = a})

-- | JSONP
rppCallback :: Lens' RepricingrulesPatch (Maybe Text)
rppCallback
  = lens _rppCallback (\ s a -> s{_rppCallback = a})

instance GoogleRequest RepricingrulesPatch where
        type Rs RepricingrulesPatch = RepricingRule
        type Scopes RepricingrulesPatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient RepricingrulesPatch'{..}
          = go _rppMerchantId _rppRuleId _rppXgafv
              _rppUploadProtocol
              _rppAccessToken
              _rppUploadType
              _rppCallback
              (Just AltJSON)
              _rppPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy RepricingrulesPatchResource)
                      mempty
