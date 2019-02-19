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
-- Module      : Network.Google.Resource.Content.LiaSettings.Setinventoryverificationcontact
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the inventory verification contract for the specified country.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.liasettings.setinventoryverificationcontact@.
module Network.Google.Resource.Content.LiaSettings.Setinventoryverificationcontact
    (
    -- * REST Resource
      LiaSettingsSetinventoryverificationcontactResource

    -- * Creating a Request
    , liaSettingsSetinventoryverificationcontact
    , LiaSettingsSetinventoryverificationcontact

    -- * Request Lenses
    , lssContactEmail
    , lssMerchantId
    , lssCountry
    , lssAccountId
    , lssContactName
    , lssLanguage
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.setinventoryverificationcontact@ method which the
-- 'LiaSettingsSetinventoryverificationcontact' request conforms to.
type LiaSettingsSetinventoryverificationcontactResource
     =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "liasettings" :>
             Capture "accountId" (Textual Word64) :>
               "setinventoryverificationcontact" :>
                 QueryParam "contactEmail" Text :>
                   QueryParam "contactName" Text :>
                     QueryParam "country" Text :>
                       QueryParam "language" Text :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON]
                             LiaSettingsSetInventoryVerificationContactResponse

-- | Sets the inventory verification contract for the specified country.
--
-- /See:/ 'liaSettingsSetinventoryverificationcontact' smart constructor.
data LiaSettingsSetinventoryverificationcontact =
  LiaSettingsSetinventoryverificationcontact'
    { _lssContactEmail :: !Text
    , _lssMerchantId   :: !(Textual Word64)
    , _lssCountry      :: !Text
    , _lssAccountId    :: !(Textual Word64)
    , _lssContactName  :: !Text
    , _lssLanguage     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsSetinventoryverificationcontact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssContactEmail'
--
-- * 'lssMerchantId'
--
-- * 'lssCountry'
--
-- * 'lssAccountId'
--
-- * 'lssContactName'
--
-- * 'lssLanguage'
liaSettingsSetinventoryverificationcontact
    :: Text -- ^ 'lssContactEmail'
    -> Word64 -- ^ 'lssMerchantId'
    -> Text -- ^ 'lssCountry'
    -> Word64 -- ^ 'lssAccountId'
    -> Text -- ^ 'lssContactName'
    -> Text -- ^ 'lssLanguage'
    -> LiaSettingsSetinventoryverificationcontact
liaSettingsSetinventoryverificationcontact pLssContactEmail_ pLssMerchantId_ pLssCountry_ pLssAccountId_ pLssContactName_ pLssLanguage_ =
  LiaSettingsSetinventoryverificationcontact'
    { _lssContactEmail = pLssContactEmail_
    , _lssMerchantId = _Coerce # pLssMerchantId_
    , _lssCountry = pLssCountry_
    , _lssAccountId = _Coerce # pLssAccountId_
    , _lssContactName = pLssContactName_
    , _lssLanguage = pLssLanguage_
    }

-- | The email of the inventory verification contact.
lssContactEmail :: Lens' LiaSettingsSetinventoryverificationcontact Text
lssContactEmail
  = lens _lssContactEmail
      (\ s a -> s{_lssContactEmail = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- accountId must be the ID of a sub-account of this account.
lssMerchantId :: Lens' LiaSettingsSetinventoryverificationcontact Word64
lssMerchantId
  = lens _lssMerchantId
      (\ s a -> s{_lssMerchantId = a})
      . _Coerce

-- | The country for which inventory verification is requested.
lssCountry :: Lens' LiaSettingsSetinventoryverificationcontact Text
lssCountry
  = lens _lssCountry (\ s a -> s{_lssCountry = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
lssAccountId :: Lens' LiaSettingsSetinventoryverificationcontact Word64
lssAccountId
  = lens _lssAccountId (\ s a -> s{_lssAccountId = a})
      . _Coerce

-- | The name of the inventory verification contact.
lssContactName :: Lens' LiaSettingsSetinventoryverificationcontact Text
lssContactName
  = lens _lssContactName
      (\ s a -> s{_lssContactName = a})

-- | The language for which inventory verification is requested.
lssLanguage :: Lens' LiaSettingsSetinventoryverificationcontact Text
lssLanguage
  = lens _lssLanguage (\ s a -> s{_lssLanguage = a})

instance GoogleRequest
           LiaSettingsSetinventoryverificationcontact
         where
        type Rs LiaSettingsSetinventoryverificationcontact =
             LiaSettingsSetInventoryVerificationContactResponse
        type Scopes
               LiaSettingsSetinventoryverificationcontact
             = '["https://www.googleapis.com/auth/content"]
        requestClient
          LiaSettingsSetinventoryverificationcontact'{..}
          = go _lssMerchantId _lssAccountId
              (Just _lssContactEmail)
              (Just _lssContactName)
              (Just _lssCountry)
              (Just _lssLanguage)
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           LiaSettingsSetinventoryverificationcontactResource)
                      mempty
