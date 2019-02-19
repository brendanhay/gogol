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
-- Module      : Network.Google.Resource.Content.LiaSettings.SetposDataprovider
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the POS data provider for the specified country.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.liasettings.setposdataprovider@.
module Network.Google.Resource.Content.LiaSettings.SetposDataprovider
    (
    -- * REST Resource
      LiaSettingsSetposDataproviderResource

    -- * Creating a Request
    , liaSettingsSetposDataprovider
    , LiaSettingsSetposDataprovider

    -- * Request Lenses
    , lssdMerchantId
    , lssdCountry
    , lssdAccountId
    , lssdPosExternalAccountId
    , lssdPosDataProviderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.setposdataprovider@ method which the
-- 'LiaSettingsSetposDataprovider' request conforms to.
type LiaSettingsSetposDataproviderResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "liasettings" :>
             Capture "accountId" (Textual Word64) :>
               "setposdataprovider" :>
                 QueryParam "country" Text :>
                   QueryParam "posExternalAccountId" Text :>
                     QueryParam "posDataProviderId" (Textual Word64) :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] LiaSettingsSetPosDataProviderResponse

-- | Sets the POS data provider for the specified country.
--
-- /See:/ 'liaSettingsSetposDataprovider' smart constructor.
data LiaSettingsSetposDataprovider =
  LiaSettingsSetposDataprovider'
    { _lssdMerchantId           :: !(Textual Word64)
    , _lssdCountry              :: !Text
    , _lssdAccountId            :: !(Textual Word64)
    , _lssdPosExternalAccountId :: !(Maybe Text)
    , _lssdPosDataProviderId    :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsSetposDataprovider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssdMerchantId'
--
-- * 'lssdCountry'
--
-- * 'lssdAccountId'
--
-- * 'lssdPosExternalAccountId'
--
-- * 'lssdPosDataProviderId'
liaSettingsSetposDataprovider
    :: Word64 -- ^ 'lssdMerchantId'
    -> Text -- ^ 'lssdCountry'
    -> Word64 -- ^ 'lssdAccountId'
    -> LiaSettingsSetposDataprovider
liaSettingsSetposDataprovider pLssdMerchantId_ pLssdCountry_ pLssdAccountId_ =
  LiaSettingsSetposDataprovider'
    { _lssdMerchantId = _Coerce # pLssdMerchantId_
    , _lssdCountry = pLssdCountry_
    , _lssdAccountId = _Coerce # pLssdAccountId_
    , _lssdPosExternalAccountId = Nothing
    , _lssdPosDataProviderId = Nothing
    }

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- accountId must be the ID of a sub-account of this account.
lssdMerchantId :: Lens' LiaSettingsSetposDataprovider Word64
lssdMerchantId
  = lens _lssdMerchantId
      (\ s a -> s{_lssdMerchantId = a})
      . _Coerce

-- | The country for which the POS data provider is selected.
lssdCountry :: Lens' LiaSettingsSetposDataprovider Text
lssdCountry
  = lens _lssdCountry (\ s a -> s{_lssdCountry = a})

-- | The ID of the account for which to retrieve accessible Google My
-- Business accounts.
lssdAccountId :: Lens' LiaSettingsSetposDataprovider Word64
lssdAccountId
  = lens _lssdAccountId
      (\ s a -> s{_lssdAccountId = a})
      . _Coerce

-- | The account ID by which this merchant is known to the POS data provider.
lssdPosExternalAccountId :: Lens' LiaSettingsSetposDataprovider (Maybe Text)
lssdPosExternalAccountId
  = lens _lssdPosExternalAccountId
      (\ s a -> s{_lssdPosExternalAccountId = a})

-- | The ID of POS data provider.
lssdPosDataProviderId :: Lens' LiaSettingsSetposDataprovider (Maybe Word64)
lssdPosDataProviderId
  = lens _lssdPosDataProviderId
      (\ s a -> s{_lssdPosDataProviderId = a})
      . mapping _Coerce

instance GoogleRequest LiaSettingsSetposDataprovider
         where
        type Rs LiaSettingsSetposDataprovider =
             LiaSettingsSetPosDataProviderResponse
        type Scopes LiaSettingsSetposDataprovider =
             '["https://www.googleapis.com/auth/content"]
        requestClient LiaSettingsSetposDataprovider'{..}
          = go _lssdMerchantId _lssdAccountId
              (Just _lssdCountry)
              _lssdPosExternalAccountId
              _lssdPosDataProviderId
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LiaSettingsSetposDataproviderResource)
                      mempty
