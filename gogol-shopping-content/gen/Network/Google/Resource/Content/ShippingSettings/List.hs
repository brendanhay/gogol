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
-- Module      : Network.Google.Resource.Content.ShippingSettings.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the shipping settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.shippingsettings.list@.
module Network.Google.Resource.Content.ShippingSettings.List
    (
    -- * REST Resource
      ShippingSettingsListResource

    -- * Creating a Request
    , shippingSettingsList
    , ShippingSettingsList

    -- * Request Lenses
    , sslMerchantId
    , sslPageToken
    , sslMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.shippingsettings.list@ method which the
-- 'ShippingSettingsList' request conforms to.
type ShippingSettingsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "shippingsettings" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" (Textual Word32) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] ShippingSettingsListResponse

-- | Lists the shipping settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ 'shippingSettingsList' smart constructor.
data ShippingSettingsList =
  ShippingSettingsList'
    { _sslMerchantId :: !(Textual Word64)
    , _sslPageToken  :: !(Maybe Text)
    , _sslMaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShippingSettingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslMerchantId'
--
-- * 'sslPageToken'
--
-- * 'sslMaxResults'
shippingSettingsList
    :: Word64 -- ^ 'sslMerchantId'
    -> ShippingSettingsList
shippingSettingsList pSslMerchantId_ =
  ShippingSettingsList'
    { _sslMerchantId = _Coerce # pSslMerchantId_
    , _sslPageToken = Nothing
    , _sslMaxResults = Nothing
    }

-- | The ID of the managing account. This must be a multi-client account.
sslMerchantId :: Lens' ShippingSettingsList Word64
sslMerchantId
  = lens _sslMerchantId
      (\ s a -> s{_sslMerchantId = a})
      . _Coerce

-- | The token returned by the previous request.
sslPageToken :: Lens' ShippingSettingsList (Maybe Text)
sslPageToken
  = lens _sslPageToken (\ s a -> s{_sslPageToken = a})

-- | The maximum number of shipping settings to return in the response, used
-- for paging.
sslMaxResults :: Lens' ShippingSettingsList (Maybe Word32)
sslMaxResults
  = lens _sslMaxResults
      (\ s a -> s{_sslMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ShippingSettingsList where
        type Rs ShippingSettingsList =
             ShippingSettingsListResponse
        type Scopes ShippingSettingsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient ShippingSettingsList'{..}
          = go _sslMerchantId _sslPageToken _sslMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ShippingSettingsListResource)
                      mempty
