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
-- Module      : Network.Google.Resource.Content.LiaSettings.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves and\/or updates the LIA settings of multiple accounts in a
-- single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.liasettings.custombatch@.
module Network.Google.Resource.Content.LiaSettings.Custombatch
    (
    -- * REST Resource
      LiaSettingsCustombatchResource

    -- * Creating a Request
    , liaSettingsCustombatch
    , LiaSettingsCustombatch

    -- * Request Lenses
    , lscPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.custombatch@ method which the
-- 'LiaSettingsCustombatch' request conforms to.
type LiaSettingsCustombatchResource =
     "content" :>
       "v2.1" :>
         "liasettings" :>
           "batch" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] LiaSettingsCustomBatchRequest :>
                 Post '[JSON] LiaSettingsCustomBatchResponse

-- | Retrieves and\/or updates the LIA settings of multiple accounts in a
-- single request.
--
-- /See:/ 'liaSettingsCustombatch' smart constructor.
newtype LiaSettingsCustombatch =
  LiaSettingsCustombatch'
    { _lscPayload :: LiaSettingsCustomBatchRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscPayload'
liaSettingsCustombatch
    :: LiaSettingsCustomBatchRequest -- ^ 'lscPayload'
    -> LiaSettingsCustombatch
liaSettingsCustombatch pLscPayload_ =
  LiaSettingsCustombatch' {_lscPayload = pLscPayload_}


-- | Multipart request metadata.
lscPayload :: Lens' LiaSettingsCustombatch LiaSettingsCustomBatchRequest
lscPayload
  = lens _lscPayload (\ s a -> s{_lscPayload = a})

instance GoogleRequest LiaSettingsCustombatch where
        type Rs LiaSettingsCustombatch =
             LiaSettingsCustomBatchResponse
        type Scopes LiaSettingsCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient LiaSettingsCustombatch'{..}
          = go (Just AltJSON) _lscPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy LiaSettingsCustombatchResource)
                      mempty
