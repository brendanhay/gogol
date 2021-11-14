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
-- Module      : Network.Google.Resource.Content.Repricingrules.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a repricing rule from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.repricingrules.get@.
module Network.Google.Resource.Content.Repricingrules.Get
    (
    -- * REST Resource
      RepricingrulesGetResource

    -- * Creating a Request
    , repricingrulesGet
    , RepricingrulesGet

    -- * Request Lenses
    , rggXgafv
    , rggMerchantId
    , rggUploadProtocol
    , rggAccessToken
    , rggRuleId
    , rggUploadType
    , rggCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.repricingrules.get@ method which the
-- 'RepricingrulesGet' request conforms to.
type RepricingrulesGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] RepricingRule

-- | Retrieves a repricing rule from your Merchant Center account.
--
-- /See:/ 'repricingrulesGet' smart constructor.
data RepricingrulesGet =
  RepricingrulesGet'
    { _rggXgafv :: !(Maybe Xgafv)
    , _rggMerchantId :: !(Textual Int64)
    , _rggUploadProtocol :: !(Maybe Text)
    , _rggAccessToken :: !(Maybe Text)
    , _rggRuleId :: !Text
    , _rggUploadType :: !(Maybe Text)
    , _rggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingrulesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rggXgafv'
--
-- * 'rggMerchantId'
--
-- * 'rggUploadProtocol'
--
-- * 'rggAccessToken'
--
-- * 'rggRuleId'
--
-- * 'rggUploadType'
--
-- * 'rggCallback'
repricingrulesGet
    :: Int64 -- ^ 'rggMerchantId'
    -> Text -- ^ 'rggRuleId'
    -> RepricingrulesGet
repricingrulesGet pRggMerchantId_ pRggRuleId_ =
  RepricingrulesGet'
    { _rggXgafv = Nothing
    , _rggMerchantId = _Coerce # pRggMerchantId_
    , _rggUploadProtocol = Nothing
    , _rggAccessToken = Nothing
    , _rggRuleId = pRggRuleId_
    , _rggUploadType = Nothing
    , _rggCallback = Nothing
    }


-- | V1 error format.
rggXgafv :: Lens' RepricingrulesGet (Maybe Xgafv)
rggXgafv = lens _rggXgafv (\ s a -> s{_rggXgafv = a})

-- | Required. The id of the merchant who owns the repricing rule.
rggMerchantId :: Lens' RepricingrulesGet Int64
rggMerchantId
  = lens _rggMerchantId
      (\ s a -> s{_rggMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rggUploadProtocol :: Lens' RepricingrulesGet (Maybe Text)
rggUploadProtocol
  = lens _rggUploadProtocol
      (\ s a -> s{_rggUploadProtocol = a})

-- | OAuth access token.
rggAccessToken :: Lens' RepricingrulesGet (Maybe Text)
rggAccessToken
  = lens _rggAccessToken
      (\ s a -> s{_rggAccessToken = a})

-- | Required. The id of the rule to retrieve.
rggRuleId :: Lens' RepricingrulesGet Text
rggRuleId
  = lens _rggRuleId (\ s a -> s{_rggRuleId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rggUploadType :: Lens' RepricingrulesGet (Maybe Text)
rggUploadType
  = lens _rggUploadType
      (\ s a -> s{_rggUploadType = a})

-- | JSONP
rggCallback :: Lens' RepricingrulesGet (Maybe Text)
rggCallback
  = lens _rggCallback (\ s a -> s{_rggCallback = a})

instance GoogleRequest RepricingrulesGet where
        type Rs RepricingrulesGet = RepricingRule
        type Scopes RepricingrulesGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient RepricingrulesGet'{..}
          = go _rggMerchantId _rggRuleId _rggXgafv
              _rggUploadProtocol
              _rggAccessToken
              _rggUploadType
              _rggCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy RepricingrulesGetResource)
                      mempty
