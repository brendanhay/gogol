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
-- Module      : Network.Google.Resource.Content.Returnpolicy.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a return policy for the Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnpolicy.insert@.
module Network.Google.Resource.Content.Returnpolicy.Insert
    (
    -- * REST Resource
      ReturnpolicyInsertResource

    -- * Creating a Request
    , returnpolicyInsert
    , ReturnpolicyInsert

    -- * Request Lenses
    , riiXgafv
    , riiMerchantId
    , riiUploadProtocol
    , riiAccessToken
    , riiUploadType
    , riiPayload
    , riiCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.returnpolicy.insert@ method which the
-- 'ReturnpolicyInsert' request conforms to.
type ReturnpolicyInsertResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "returnpolicy" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ReturnPolicy :>
                           Post '[JSON] ReturnPolicy

-- | Inserts a return policy for the Merchant Center account.
--
-- /See:/ 'returnpolicyInsert' smart constructor.
data ReturnpolicyInsert =
  ReturnpolicyInsert'
    { _riiXgafv :: !(Maybe Xgafv)
    , _riiMerchantId :: !(Textual Word64)
    , _riiUploadProtocol :: !(Maybe Text)
    , _riiAccessToken :: !(Maybe Text)
    , _riiUploadType :: !(Maybe Text)
    , _riiPayload :: !ReturnPolicy
    , _riiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riiXgafv'
--
-- * 'riiMerchantId'
--
-- * 'riiUploadProtocol'
--
-- * 'riiAccessToken'
--
-- * 'riiUploadType'
--
-- * 'riiPayload'
--
-- * 'riiCallback'
returnpolicyInsert
    :: Word64 -- ^ 'riiMerchantId'
    -> ReturnPolicy -- ^ 'riiPayload'
    -> ReturnpolicyInsert
returnpolicyInsert pRiiMerchantId_ pRiiPayload_ =
  ReturnpolicyInsert'
    { _riiXgafv = Nothing
    , _riiMerchantId = _Coerce # pRiiMerchantId_
    , _riiUploadProtocol = Nothing
    , _riiAccessToken = Nothing
    , _riiUploadType = Nothing
    , _riiPayload = pRiiPayload_
    , _riiCallback = Nothing
    }


-- | V1 error format.
riiXgafv :: Lens' ReturnpolicyInsert (Maybe Xgafv)
riiXgafv = lens _riiXgafv (\ s a -> s{_riiXgafv = a})

-- | The Merchant Center account to insert a return policy for.
riiMerchantId :: Lens' ReturnpolicyInsert Word64
riiMerchantId
  = lens _riiMerchantId
      (\ s a -> s{_riiMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
riiUploadProtocol :: Lens' ReturnpolicyInsert (Maybe Text)
riiUploadProtocol
  = lens _riiUploadProtocol
      (\ s a -> s{_riiUploadProtocol = a})

-- | OAuth access token.
riiAccessToken :: Lens' ReturnpolicyInsert (Maybe Text)
riiAccessToken
  = lens _riiAccessToken
      (\ s a -> s{_riiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
riiUploadType :: Lens' ReturnpolicyInsert (Maybe Text)
riiUploadType
  = lens _riiUploadType
      (\ s a -> s{_riiUploadType = a})

-- | Multipart request metadata.
riiPayload :: Lens' ReturnpolicyInsert ReturnPolicy
riiPayload
  = lens _riiPayload (\ s a -> s{_riiPayload = a})

-- | JSONP
riiCallback :: Lens' ReturnpolicyInsert (Maybe Text)
riiCallback
  = lens _riiCallback (\ s a -> s{_riiCallback = a})

instance GoogleRequest ReturnpolicyInsert where
        type Rs ReturnpolicyInsert = ReturnPolicy
        type Scopes ReturnpolicyInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient ReturnpolicyInsert'{..}
          = go _riiMerchantId _riiXgafv _riiUploadProtocol
              _riiAccessToken
              _riiUploadType
              _riiCallback
              (Just AltJSON)
              _riiPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ReturnpolicyInsertResource)
                      mempty
