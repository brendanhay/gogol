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
-- Module      : Network.Google.Resource.Content.LiaSettings.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the LIA settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.liasettings.update@.
module Network.Google.Resource.Content.LiaSettings.Update
    (
    -- * REST Resource
      LiaSettingsUpdateResource

    -- * Creating a Request
    , liaSettingsUpdate
    , LiaSettingsUpdate

    -- * Request Lenses
    , lsuMerchantId
    , lsuPayload
    , lsuAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.update@ method which the
-- 'LiaSettingsUpdate' request conforms to.
type LiaSettingsUpdateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "liasettings" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] LiaSettings :>
                   Put '[JSON] LiaSettings

-- | Updates the LIA settings of the account.
--
-- /See:/ 'liaSettingsUpdate' smart constructor.
data LiaSettingsUpdate =
  LiaSettingsUpdate'
    { _lsuMerchantId :: !(Textual Word64)
    , _lsuPayload    :: !LiaSettings
    , _lsuAccountId  :: !(Textual Word64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsuMerchantId'
--
-- * 'lsuPayload'
--
-- * 'lsuAccountId'
liaSettingsUpdate
    :: Word64 -- ^ 'lsuMerchantId'
    -> LiaSettings -- ^ 'lsuPayload'
    -> Word64 -- ^ 'lsuAccountId'
    -> LiaSettingsUpdate
liaSettingsUpdate pLsuMerchantId_ pLsuPayload_ pLsuAccountId_ =
  LiaSettingsUpdate'
    { _lsuMerchantId = _Coerce # pLsuMerchantId_
    , _lsuPayload = pLsuPayload_
    , _lsuAccountId = _Coerce # pLsuAccountId_
    }

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- accountId must be the ID of a sub-account of this account.
lsuMerchantId :: Lens' LiaSettingsUpdate Word64
lsuMerchantId
  = lens _lsuMerchantId
      (\ s a -> s{_lsuMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
lsuPayload :: Lens' LiaSettingsUpdate LiaSettings
lsuPayload
  = lens _lsuPayload (\ s a -> s{_lsuPayload = a})

-- | The ID of the account for which to get or update LIA settings.
lsuAccountId :: Lens' LiaSettingsUpdate Word64
lsuAccountId
  = lens _lsuAccountId (\ s a -> s{_lsuAccountId = a})
      . _Coerce

instance GoogleRequest LiaSettingsUpdate where
        type Rs LiaSettingsUpdate = LiaSettings
        type Scopes LiaSettingsUpdate =
             '["https://www.googleapis.com/auth/content"]
        requestClient LiaSettingsUpdate'{..}
          = go _lsuMerchantId _lsuAccountId (Just AltJSON)
              _lsuPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy LiaSettingsUpdateResource)
                      mempty
