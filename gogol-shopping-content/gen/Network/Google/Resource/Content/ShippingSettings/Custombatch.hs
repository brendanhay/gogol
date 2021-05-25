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
-- Module      : Network.Google.Resource.Content.ShippingSettings.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves and updates the shipping settings of multiple accounts in a
-- single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.shippingsettings.custombatch@.
module Network.Google.Resource.Content.ShippingSettings.Custombatch
    (
    -- * REST Resource
      ShippingSettingsCustombatchResource

    -- * Creating a Request
    , shippingSettingsCustombatch
    , ShippingSettingsCustombatch

    -- * Request Lenses
    , sscXgafv
    , sscUploadProtocol
    , sscAccessToken
    , sscUploadType
    , sscPayload
    , sscCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.custombatch@ method which the
-- 'ShippingSettingsCustombatch' request conforms to.
type ShippingSettingsCustombatchResource =
     "content" :>
       "v2.1" :>
         "shippingsettings" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ShippingSettingsCustomBatchRequest :>
                           Post '[JSON] ShippingSettingsCustomBatchResponse

-- | Retrieves and updates the shipping settings of multiple accounts in a
-- single request.
--
-- /See:/ 'shippingSettingsCustombatch' smart constructor.
data ShippingSettingsCustombatch =
  ShippingSettingsCustombatch'
    { _sscXgafv :: !(Maybe Xgafv)
    , _sscUploadProtocol :: !(Maybe Text)
    , _sscAccessToken :: !(Maybe Text)
    , _sscUploadType :: !(Maybe Text)
    , _sscPayload :: !ShippingSettingsCustomBatchRequest
    , _sscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscXgafv'
--
-- * 'sscUploadProtocol'
--
-- * 'sscAccessToken'
--
-- * 'sscUploadType'
--
-- * 'sscPayload'
--
-- * 'sscCallback'
shippingSettingsCustombatch
    :: ShippingSettingsCustomBatchRequest -- ^ 'sscPayload'
    -> ShippingSettingsCustombatch
shippingSettingsCustombatch pSscPayload_ =
  ShippingSettingsCustombatch'
    { _sscXgafv = Nothing
    , _sscUploadProtocol = Nothing
    , _sscAccessToken = Nothing
    , _sscUploadType = Nothing
    , _sscPayload = pSscPayload_
    , _sscCallback = Nothing
    }


-- | V1 error format.
sscXgafv :: Lens' ShippingSettingsCustombatch (Maybe Xgafv)
sscXgafv = lens _sscXgafv (\ s a -> s{_sscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sscUploadProtocol :: Lens' ShippingSettingsCustombatch (Maybe Text)
sscUploadProtocol
  = lens _sscUploadProtocol
      (\ s a -> s{_sscUploadProtocol = a})

-- | OAuth access token.
sscAccessToken :: Lens' ShippingSettingsCustombatch (Maybe Text)
sscAccessToken
  = lens _sscAccessToken
      (\ s a -> s{_sscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sscUploadType :: Lens' ShippingSettingsCustombatch (Maybe Text)
sscUploadType
  = lens _sscUploadType
      (\ s a -> s{_sscUploadType = a})

-- | Multipart request metadata.
sscPayload :: Lens' ShippingSettingsCustombatch ShippingSettingsCustomBatchRequest
sscPayload
  = lens _sscPayload (\ s a -> s{_sscPayload = a})

-- | JSONP
sscCallback :: Lens' ShippingSettingsCustombatch (Maybe Text)
sscCallback
  = lens _sscCallback (\ s a -> s{_sscCallback = a})

instance GoogleRequest ShippingSettingsCustombatch
         where
        type Rs ShippingSettingsCustombatch =
             ShippingSettingsCustomBatchResponse
        type Scopes ShippingSettingsCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient ShippingSettingsCustombatch'{..}
          = go _sscXgafv _sscUploadProtocol _sscAccessToken
              _sscUploadType
              _sscCallback
              (Just AltJSON)
              _sscPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ShippingSettingsCustombatchResource)
                      mempty
