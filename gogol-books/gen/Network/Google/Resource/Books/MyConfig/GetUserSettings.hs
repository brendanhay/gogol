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
-- Module      : Network.Google.Resource.Books.MyConfig.GetUserSettings
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the current settings for the user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyConfigGetUserSettings@.
module Network.Google.Resource.Books.MyConfig.GetUserSettings
    (
    -- * REST Resource
      MyConfigGetUserSettingsResource

    -- * Creating a Request
    , myConfigGetUserSettings'
    , MyConfigGetUserSettings'

    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyConfigGetUserSettings@ method which the
-- 'MyConfigGetUserSettings'' request conforms to.
type MyConfigGetUserSettingsResource =
     "myconfig" :>
       "getUserSettings" :>
         QueryParam "alt" AltJSON :> Get '[JSON] Usersettings

-- | Gets the current settings for the user.
--
-- /See:/ 'myConfigGetUserSettings'' smart constructor.
data MyConfigGetUserSettings' =
    MyConfigGetUserSettings'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyConfigGetUserSettings'' with the minimum fields required to make a request.
--
myConfigGetUserSettings'
    :: MyConfigGetUserSettings'
myConfigGetUserSettings' = MyConfigGetUserSettings'

instance GoogleRequest MyConfigGetUserSettings' where
        type Rs MyConfigGetUserSettings' = Usersettings
        requestClient MyConfigGetUserSettings'{}
          = go (Just AltJSON) books
          where go
                  = buildClient
                      (Proxy :: Proxy MyConfigGetUserSettingsResource)
                      mempty
