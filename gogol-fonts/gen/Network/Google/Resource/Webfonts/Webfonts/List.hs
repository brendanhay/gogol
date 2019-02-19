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
-- Module      : Network.Google.Resource.Webfonts.Webfonts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of fonts currently served by the Google Fonts
-- Developer API
--
-- /See:/ <https://developers.google.com/fonts/docs/developer_api Google Fonts Developer API Reference> for @webfonts.webfonts.list@.
module Network.Google.Resource.Webfonts.Webfonts.List
    (
    -- * REST Resource
      WebfontsListResource

    -- * Creating a Request
    , webfontsList
    , WebfontsList

    -- * Request Lenses
    , wlSort
    ) where

import           Network.Google.Fonts.Types
import           Network.Google.Prelude

-- | A resource alias for @webfonts.webfonts.list@ method which the
-- 'WebfontsList' request conforms to.
type WebfontsListResource =
     "webfonts" :>
       "v1" :>
         "webfonts" :>
           QueryParam "sort" WebfontsListSort :>
             QueryParam "alt" AltJSON :> Get '[JSON] WebfontList

-- | Retrieves the list of fonts currently served by the Google Fonts
-- Developer API
--
-- /See:/ 'webfontsList' smart constructor.
newtype WebfontsList =
  WebfontsList'
    { _wlSort :: Maybe WebfontsListSort
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WebfontsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlSort'
webfontsList
    :: WebfontsList
webfontsList = WebfontsList' {_wlSort = Nothing}

-- | Enables sorting of the list
wlSort :: Lens' WebfontsList (Maybe WebfontsListSort)
wlSort = lens _wlSort (\ s a -> s{_wlSort = a})

instance GoogleRequest WebfontsList where
        type Rs WebfontsList = WebfontList
        type Scopes WebfontsList = '[]
        requestClient WebfontsList'{..}
          = go _wlSort (Just AltJSON) fontsService
          where go
                  = buildClient (Proxy :: Proxy WebfontsListResource)
                      mempty
