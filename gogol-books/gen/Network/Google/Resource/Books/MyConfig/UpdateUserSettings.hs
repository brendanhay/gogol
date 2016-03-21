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
-- Module      : Network.Google.Resource.Books.MyConfig.UpdateUserSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the settings for the user. If a sub-object is specified, it will
-- overwrite the existing sub-object stored in the server. Unspecified
-- sub-objects will retain the existing value.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.myconfig.updateUserSettings@.
module Network.Google.Resource.Books.MyConfig.UpdateUserSettings
    (
    -- * REST Resource
      MyConfigUpdateUserSettingsResource

    -- * Creating a Request
    , myConfigUpdateUserSettings
    , MyConfigUpdateUserSettings

    -- * Request Lenses
    , mcuusPayload
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.myconfig.updateUserSettings@ method which the
-- 'MyConfigUpdateUserSettings' request conforms to.
type MyConfigUpdateUserSettingsResource =
     "books" :>
       "v1" :>
         "myconfig" :>
           "updateUserSettings" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] UserSettings :>
                 Post '[JSON] UserSettings

-- | Sets the settings for the user. If a sub-object is specified, it will
-- overwrite the existing sub-object stored in the server. Unspecified
-- sub-objects will retain the existing value.
--
-- /See:/ 'myConfigUpdateUserSettings' smart constructor.
newtype MyConfigUpdateUserSettings = MyConfigUpdateUserSettings'
    { _mcuusPayload :: UserSettings
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyConfigUpdateUserSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcuusPayload'
myConfigUpdateUserSettings
    :: UserSettings -- ^ 'mcuusPayload'
    -> MyConfigUpdateUserSettings
myConfigUpdateUserSettings pMcuusPayload_ =
    MyConfigUpdateUserSettings'
    { _mcuusPayload = pMcuusPayload_
    }

-- | Multipart request metadata.
mcuusPayload :: Lens' MyConfigUpdateUserSettings UserSettings
mcuusPayload
  = lens _mcuusPayload (\ s a -> s{_mcuusPayload = a})

instance GoogleRequest MyConfigUpdateUserSettings
         where
        type Rs MyConfigUpdateUserSettings = UserSettings
        type Scopes MyConfigUpdateUserSettings =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyConfigUpdateUserSettings'{..}
          = go (Just AltJSON) _mcuusPayload booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyConfigUpdateUserSettingsResource)
                      mempty
