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
-- Module      : Network.Google.Resource.Content.LiaSettings.GetAccessiblegmbAccounts
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of accessible Google My Business accounts.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.liasettings.getaccessiblegmbaccounts@.
module Network.Google.Resource.Content.LiaSettings.GetAccessiblegmbAccounts
    (
    -- * REST Resource
      LiaSettingsGetAccessiblegmbAccountsResource

    -- * Creating a Request
    , liaSettingsGetAccessiblegmbAccounts
    , LiaSettingsGetAccessiblegmbAccounts

    -- * Request Lenses
    , lsgaaMerchantId
    , lsgaaAccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.getaccessiblegmbaccounts@ method which the
-- 'LiaSettingsGetAccessiblegmbAccounts' request conforms to.
type LiaSettingsGetAccessiblegmbAccountsResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "liasettings" :>
             Capture "accountId" (Textual Word64) :>
               "accessiblegmbaccounts" :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON]
                     LiaSettingsGetAccessibleGmbAccountsResponse

-- | Retrieves the list of accessible Google My Business accounts.
--
-- /See:/ 'liaSettingsGetAccessiblegmbAccounts' smart constructor.
data LiaSettingsGetAccessiblegmbAccounts = LiaSettingsGetAccessiblegmbAccounts'
    { _lsgaaMerchantId :: !(Textual Word64)
    , _lsgaaAccountId  :: !(Textual Word64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiaSettingsGetAccessiblegmbAccounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsgaaMerchantId'
--
-- * 'lsgaaAccountId'
liaSettingsGetAccessiblegmbAccounts
    :: Word64 -- ^ 'lsgaaMerchantId'
    -> Word64 -- ^ 'lsgaaAccountId'
    -> LiaSettingsGetAccessiblegmbAccounts
liaSettingsGetAccessiblegmbAccounts pLsgaaMerchantId_ pLsgaaAccountId_ =
    LiaSettingsGetAccessiblegmbAccounts'
    { _lsgaaMerchantId = _Coerce # pLsgaaMerchantId_
    , _lsgaaAccountId = _Coerce # pLsgaaAccountId_
    }

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- accountId must be the ID of a sub-account of this account.
lsgaaMerchantId :: Lens' LiaSettingsGetAccessiblegmbAccounts Word64
lsgaaMerchantId
  = lens _lsgaaMerchantId
      (\ s a -> s{_lsgaaMerchantId = a})
      . _Coerce

-- | The ID of the account for which to retrieve accessible Google My
-- Business accounts.
lsgaaAccountId :: Lens' LiaSettingsGetAccessiblegmbAccounts Word64
lsgaaAccountId
  = lens _lsgaaAccountId
      (\ s a -> s{_lsgaaAccountId = a})
      . _Coerce

instance GoogleRequest
         LiaSettingsGetAccessiblegmbAccounts where
        type Rs LiaSettingsGetAccessiblegmbAccounts =
             LiaSettingsGetAccessibleGmbAccountsResponse
        type Scopes LiaSettingsGetAccessiblegmbAccounts =
             '["https://www.googleapis.com/auth/content"]
        requestClient
          LiaSettingsGetAccessiblegmbAccounts'{..}
          = go _lsgaaMerchantId _lsgaaAccountId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LiaSettingsGetAccessiblegmbAccountsResource)
                      mempty
