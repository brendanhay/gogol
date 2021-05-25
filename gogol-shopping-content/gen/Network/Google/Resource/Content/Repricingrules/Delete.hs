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
-- Module      : Network.Google.Resource.Content.Repricingrules.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a repricing rule in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.repricingrules.delete@.
module Network.Google.Resource.Content.Repricingrules.Delete
    (
    -- * REST Resource
      RepricingrulesDeleteResource

    -- * Creating a Request
    , repricingrulesDelete
    , RepricingrulesDelete

    -- * Request Lenses
    , repeXgafv
    , repeMerchantId
    , repeUploadProtocol
    , repeAccessToken
    , repeRuleId
    , repeUploadType
    , repeCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.repricingrules.delete@ method which the
-- 'RepricingrulesDelete' request conforms to.
type RepricingrulesDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a repricing rule in your Merchant Center account.
--
-- /See:/ 'repricingrulesDelete' smart constructor.
data RepricingrulesDelete =
  RepricingrulesDelete'
    { _repeXgafv :: !(Maybe Xgafv)
    , _repeMerchantId :: !(Textual Int64)
    , _repeUploadProtocol :: !(Maybe Text)
    , _repeAccessToken :: !(Maybe Text)
    , _repeRuleId :: !Text
    , _repeUploadType :: !(Maybe Text)
    , _repeCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingrulesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'repeXgafv'
--
-- * 'repeMerchantId'
--
-- * 'repeUploadProtocol'
--
-- * 'repeAccessToken'
--
-- * 'repeRuleId'
--
-- * 'repeUploadType'
--
-- * 'repeCallback'
repricingrulesDelete
    :: Int64 -- ^ 'repeMerchantId'
    -> Text -- ^ 'repeRuleId'
    -> RepricingrulesDelete
repricingrulesDelete pRepeMerchantId_ pRepeRuleId_ =
  RepricingrulesDelete'
    { _repeXgafv = Nothing
    , _repeMerchantId = _Coerce # pRepeMerchantId_
    , _repeUploadProtocol = Nothing
    , _repeAccessToken = Nothing
    , _repeRuleId = pRepeRuleId_
    , _repeUploadType = Nothing
    , _repeCallback = Nothing
    }


-- | V1 error format.
repeXgafv :: Lens' RepricingrulesDelete (Maybe Xgafv)
repeXgafv
  = lens _repeXgafv (\ s a -> s{_repeXgafv = a})

-- | Required. The id of the merchant who owns the repricing rule.
repeMerchantId :: Lens' RepricingrulesDelete Int64
repeMerchantId
  = lens _repeMerchantId
      (\ s a -> s{_repeMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
repeUploadProtocol :: Lens' RepricingrulesDelete (Maybe Text)
repeUploadProtocol
  = lens _repeUploadProtocol
      (\ s a -> s{_repeUploadProtocol = a})

-- | OAuth access token.
repeAccessToken :: Lens' RepricingrulesDelete (Maybe Text)
repeAccessToken
  = lens _repeAccessToken
      (\ s a -> s{_repeAccessToken = a})

-- | Required. The id of the rule to Delete.
repeRuleId :: Lens' RepricingrulesDelete Text
repeRuleId
  = lens _repeRuleId (\ s a -> s{_repeRuleId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
repeUploadType :: Lens' RepricingrulesDelete (Maybe Text)
repeUploadType
  = lens _repeUploadType
      (\ s a -> s{_repeUploadType = a})

-- | JSONP
repeCallback :: Lens' RepricingrulesDelete (Maybe Text)
repeCallback
  = lens _repeCallback (\ s a -> s{_repeCallback = a})

instance GoogleRequest RepricingrulesDelete where
        type Rs RepricingrulesDelete = ()
        type Scopes RepricingrulesDelete =
             '["https://www.googleapis.com/auth/content"]
        requestClient RepricingrulesDelete'{..}
          = go _repeMerchantId _repeRuleId _repeXgafv
              _repeUploadProtocol
              _repeAccessToken
              _repeUploadType
              _repeCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy RepricingrulesDeleteResource)
                      mempty
