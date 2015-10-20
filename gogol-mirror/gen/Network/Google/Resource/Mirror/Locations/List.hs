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
-- Module      : Network.Google.Resource.Mirror.Locations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of locations for the user.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.locations.list@.
module Network.Google.Resource.Mirror.Locations.List
    (
    -- * REST Resource
      LocationsListResource

    -- * Creating a Request
    , locationsList
    , LocationsList

    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @mirror.locations.list@ method which the
-- 'LocationsList' request conforms to.
type LocationsListResource =
     "locations" :>
       QueryParam "alt" AltJSON :>
         Get '[JSON] LocationsListResponse

-- | Retrieves a list of locations for the user.
--
-- /See:/ 'locationsList' smart constructor.
data LocationsList =
    LocationsList
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationsList' with the minimum fields required to make a request.
--
locationsList
    :: LocationsList
locationsList = LocationsList

instance GoogleRequest LocationsList where
        type Rs LocationsList = LocationsListResponse
        requestClient LocationsList{}
          = go (Just AltJSON) mirrorService
          where go
                  = buildClient (Proxy :: Proxy LocationsListResource)
                      mempty
