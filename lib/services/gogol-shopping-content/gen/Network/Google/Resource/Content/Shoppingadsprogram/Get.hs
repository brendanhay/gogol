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
-- Module      : Network.Google.Resource.Content.Shoppingadsprogram.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the status and review eligibility for the Shopping Ads
-- program.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.shoppingadsprogram.get@.
module Network.Google.Resource.Content.Shoppingadsprogram.Get
    (
    -- * REST Resource
      ShoppingadsprogramGetResource

    -- * Creating a Request
    , shoppingadsprogramGet
    , ShoppingadsprogramGet

    -- * Request Lenses
    , sgXgafv
    , sgMerchantId
    , sgUploadProtocol
    , sgAccessToken
    , sgUploadType
    , sgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shoppingadsprogram.get@ method which the
-- 'ShoppingadsprogramGet' request conforms to.
type ShoppingadsprogramGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "shoppingadsprogram" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ShoppingAdsProgramStatus

-- | Retrieves the status and review eligibility for the Shopping Ads
-- program.
--
-- /See:/ 'shoppingadsprogramGet' smart constructor.
data ShoppingadsprogramGet =
  ShoppingadsprogramGet'
    { _sgXgafv :: !(Maybe Xgafv)
    , _sgMerchantId :: !(Textual Int64)
    , _sgUploadProtocol :: !(Maybe Text)
    , _sgAccessToken :: !(Maybe Text)
    , _sgUploadType :: !(Maybe Text)
    , _sgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShoppingadsprogramGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgXgafv'
--
-- * 'sgMerchantId'
--
-- * 'sgUploadProtocol'
--
-- * 'sgAccessToken'
--
-- * 'sgUploadType'
--
-- * 'sgCallback'
shoppingadsprogramGet
    :: Int64 -- ^ 'sgMerchantId'
    -> ShoppingadsprogramGet
shoppingadsprogramGet pSgMerchantId_ =
  ShoppingadsprogramGet'
    { _sgXgafv = Nothing
    , _sgMerchantId = _Coerce # pSgMerchantId_
    , _sgUploadProtocol = Nothing
    , _sgAccessToken = Nothing
    , _sgUploadType = Nothing
    , _sgCallback = Nothing
    }


-- | V1 error format.
sgXgafv :: Lens' ShoppingadsprogramGet (Maybe Xgafv)
sgXgafv = lens _sgXgafv (\ s a -> s{_sgXgafv = a})

-- | Required. The ID of the account.
sgMerchantId :: Lens' ShoppingadsprogramGet Int64
sgMerchantId
  = lens _sgMerchantId (\ s a -> s{_sgMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgUploadProtocol :: Lens' ShoppingadsprogramGet (Maybe Text)
sgUploadProtocol
  = lens _sgUploadProtocol
      (\ s a -> s{_sgUploadProtocol = a})

-- | OAuth access token.
sgAccessToken :: Lens' ShoppingadsprogramGet (Maybe Text)
sgAccessToken
  = lens _sgAccessToken
      (\ s a -> s{_sgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgUploadType :: Lens' ShoppingadsprogramGet (Maybe Text)
sgUploadType
  = lens _sgUploadType (\ s a -> s{_sgUploadType = a})

-- | JSONP
sgCallback :: Lens' ShoppingadsprogramGet (Maybe Text)
sgCallback
  = lens _sgCallback (\ s a -> s{_sgCallback = a})

instance GoogleRequest ShoppingadsprogramGet where
        type Rs ShoppingadsprogramGet =
             ShoppingAdsProgramStatus
        type Scopes ShoppingadsprogramGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient ShoppingadsprogramGet'{..}
          = go _sgMerchantId _sgXgafv _sgUploadProtocol
              _sgAccessToken
              _sgUploadType
              _sgCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ShoppingadsprogramGetResource)
                      mempty
