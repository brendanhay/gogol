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
-- Module      : Network.Google.Resource.Content.LiaSettings.Requestinventoryverification
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests inventory validation for the specified country.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.liasettings.requestinventoryverification@.
module Network.Google.Resource.Content.LiaSettings.Requestinventoryverification
    (
    -- * REST Resource
      LiaSettingsRequestinventoryverificationResource

    -- * Creating a Request
    , liaSettingsRequestinventoryverification
    , LiaSettingsRequestinventoryverification

    -- * Request Lenses
    , lsrMerchantId
    , lsrCountry
    , lsrAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.requestinventoryverification@ method which the
-- 'LiaSettingsRequestinventoryverification' request conforms to.
type LiaSettingsRequestinventoryverificationResource
     =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "liasettings" :>
             Capture "accountId" (Textual Word64) :>
               "requestinventoryverification" :>
                 Capture "country" Text :>
                   QueryParam "alt" AltJSON :>
                     Post '[JSON]
                       LiaSettingsRequestInventoryVerificationResponse

-- | Requests inventory validation for the specified country.
--
-- /See:/ 'liaSettingsRequestinventoryverification' smart constructor.
data LiaSettingsRequestinventoryverification =
  LiaSettingsRequestinventoryverification'
    { _lsrMerchantId :: !(Textual Word64)
    , _lsrCountry    :: !Text
    , _lsrAccountId  :: !(Textual Word64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsRequestinventoryverification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrMerchantId'
--
-- * 'lsrCountry'
--
-- * 'lsrAccountId'
liaSettingsRequestinventoryverification
    :: Word64 -- ^ 'lsrMerchantId'
    -> Text -- ^ 'lsrCountry'
    -> Word64 -- ^ 'lsrAccountId'
    -> LiaSettingsRequestinventoryverification
liaSettingsRequestinventoryverification pLsrMerchantId_ pLsrCountry_ pLsrAccountId_ =
  LiaSettingsRequestinventoryverification'
    { _lsrMerchantId = _Coerce # pLsrMerchantId_
    , _lsrCountry = pLsrCountry_
    , _lsrAccountId = _Coerce # pLsrAccountId_
    }

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- accountId must be the ID of a sub-account of this account.
lsrMerchantId :: Lens' LiaSettingsRequestinventoryverification Word64
lsrMerchantId
  = lens _lsrMerchantId
      (\ s a -> s{_lsrMerchantId = a})
      . _Coerce

-- | The country for which inventory validation is requested.
lsrCountry :: Lens' LiaSettingsRequestinventoryverification Text
lsrCountry
  = lens _lsrCountry (\ s a -> s{_lsrCountry = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
lsrAccountId :: Lens' LiaSettingsRequestinventoryverification Word64
lsrAccountId
  = lens _lsrAccountId (\ s a -> s{_lsrAccountId = a})
      . _Coerce

instance GoogleRequest
           LiaSettingsRequestinventoryverification
         where
        type Rs LiaSettingsRequestinventoryverification =
             LiaSettingsRequestInventoryVerificationResponse
        type Scopes LiaSettingsRequestinventoryverification =
             '["https://www.googleapis.com/auth/content"]
        requestClient
          LiaSettingsRequestinventoryverification'{..}
          = go _lsrMerchantId _lsrAccountId _lsrCountry
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           LiaSettingsRequestinventoryverificationResource)
                      mempty
