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
-- Module      : Network.Google.Resource.Content.LiaSettings.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the LIA settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.liasettings.get@.
module Network.Google.Resource.Content.LiaSettings.Get
    (
    -- * REST Resource
      LiaSettingsGetResource

    -- * Creating a Request
    , liaSettingsGet
    , LiaSettingsGet

    -- * Request Lenses
    , lsgMerchantId
    , lsgAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.get@ method which the
-- 'LiaSettingsGet' request conforms to.
type LiaSettingsGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "liasettings" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "alt" AltJSON :> Get '[JSON] LiaSettings

-- | Retrieves the LIA settings of the account.
--
-- /See:/ 'liaSettingsGet' smart constructor.
data LiaSettingsGet = LiaSettingsGet'
    { _lsgMerchantId :: !(Textual Word64)
    , _lsgAccountId  :: !(Textual Word64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiaSettingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsgMerchantId'
--
-- * 'lsgAccountId'
liaSettingsGet
    :: Word64 -- ^ 'lsgMerchantId'
    -> Word64 -- ^ 'lsgAccountId'
    -> LiaSettingsGet
liaSettingsGet pLsgMerchantId_ pLsgAccountId_ =
    LiaSettingsGet'
    { _lsgMerchantId = _Coerce # pLsgMerchantId_
    , _lsgAccountId = _Coerce # pLsgAccountId_
    }

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- accountId must be the ID of a sub-account of this account.
lsgMerchantId :: Lens' LiaSettingsGet Word64
lsgMerchantId
  = lens _lsgMerchantId
      (\ s a -> s{_lsgMerchantId = a})
      . _Coerce

-- | The ID of the account for which to get or update LIA settings.
lsgAccountId :: Lens' LiaSettingsGet Word64
lsgAccountId
  = lens _lsgAccountId (\ s a -> s{_lsgAccountId = a})
      . _Coerce

instance GoogleRequest LiaSettingsGet where
        type Rs LiaSettingsGet = LiaSettings
        type Scopes LiaSettingsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient LiaSettingsGet'{..}
          = go _lsgMerchantId _lsgAccountId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy LiaSettingsGetResource)
                      mempty
