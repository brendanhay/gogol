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
-- Module      : Network.Google.Resource.Mirror.Locations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single location by ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.locations.get@.
module Network.Google.Resource.Mirror.Locations.Get
    (
    -- * REST Resource
      LocationsGetResource

    -- * Creating a Request
    , locationsGet
    , LocationsGet

    -- * Request Lenses
    , lgId
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @mirror.locations.get@ method which the
-- 'LocationsGet' request conforms to.
type LocationsGetResource =
     "locations" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :> Get '[JSON] Location

-- | Gets a single location by ID.
--
-- /See:/ 'locationsGet' smart constructor.
newtype LocationsGet = LocationsGet
    { _lgId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgId'
locationsGet
    :: Text -- ^ 'lgId'
    -> LocationsGet
locationsGet pLgId_ =
    LocationsGet
    { _lgId = pLgId_
    }

-- | The ID of the location or latest for the last known location.
lgId :: Lens' LocationsGet Text
lgId = lens _lgId (\ s a -> s{_lgId = a})

instance GoogleRequest LocationsGet where
        type Rs LocationsGet = Location
        requestClient LocationsGet{..}
          = go _lgId (Just AltJSON) mirrorService
          where go
                  = buildClient (Proxy :: Proxy LocationsGetResource)
                      mempty
