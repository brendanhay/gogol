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
-- Module      : Network.Google.Resource.Content.LiaSettings.ListposDataproviders
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of POS data providers that have active settings for
-- the all eiligible countries.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.liasettings.listposdataproviders@.
module Network.Google.Resource.Content.LiaSettings.ListposDataproviders
    (
    -- * REST Resource
      LiaSettingsListposDataprovidersResource

    -- * Creating a Request
    , liaSettingsListposDataproviders
    , LiaSettingsListposDataproviders

    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.listposdataproviders@ method which the
-- 'LiaSettingsListposDataproviders' request conforms to.
type LiaSettingsListposDataprovidersResource =
     "content" :>
       "v2.1" :>
         "liasettings" :>
           "posdataproviders" :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] LiaSettingsListPosDataProvidersResponse

-- | Retrieves the list of POS data providers that have active settings for
-- the all eiligible countries.
--
-- /See:/ 'liaSettingsListposDataproviders' smart constructor.
data LiaSettingsListposDataproviders =
    LiaSettingsListposDataproviders'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiaSettingsListposDataproviders' with the minimum fields required to make a request.
--
liaSettingsListposDataproviders
    :: LiaSettingsListposDataproviders
liaSettingsListposDataproviders = LiaSettingsListposDataproviders'

instance GoogleRequest
         LiaSettingsListposDataproviders where
        type Rs LiaSettingsListposDataproviders =
             LiaSettingsListPosDataProvidersResponse
        type Scopes LiaSettingsListposDataproviders =
             '["https://www.googleapis.com/auth/content"]
        requestClient LiaSettingsListposDataproviders'{}
          = go (Just AltJSON) shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LiaSettingsListposDataprovidersResource)
                      mempty
