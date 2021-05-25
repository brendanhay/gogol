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
-- Module      : Network.Google.Resource.Compute.InterconnectLocations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details for the specified interconnect location. Gets a list
-- of available interconnect locations by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.interconnectLocations.get@.
module Network.Google.Resource.Compute.InterconnectLocations.Get
    (
    -- * REST Resource
      InterconnectLocationsGetResource

    -- * Creating a Request
    , interconnectLocationsGet
    , InterconnectLocationsGet

    -- * Request Lenses
    , ilgProject
    , ilgInterconnectLocation
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.interconnectLocations.get@ method which the
-- 'InterconnectLocationsGet' request conforms to.
type InterconnectLocationsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "interconnectLocations" :>
                 Capture "interconnectLocation" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] InterconnectLocation

-- | Returns the details for the specified interconnect location. Gets a list
-- of available interconnect locations by making a list() request.
--
-- /See:/ 'interconnectLocationsGet' smart constructor.
data InterconnectLocationsGet =
  InterconnectLocationsGet'
    { _ilgProject :: !Text
    , _ilgInterconnectLocation :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterconnectLocationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilgProject'
--
-- * 'ilgInterconnectLocation'
interconnectLocationsGet
    :: Text -- ^ 'ilgProject'
    -> Text -- ^ 'ilgInterconnectLocation'
    -> InterconnectLocationsGet
interconnectLocationsGet pIlgProject_ pIlgInterconnectLocation_ =
  InterconnectLocationsGet'
    { _ilgProject = pIlgProject_
    , _ilgInterconnectLocation = pIlgInterconnectLocation_
    }


-- | Project ID for this request.
ilgProject :: Lens' InterconnectLocationsGet Text
ilgProject
  = lens _ilgProject (\ s a -> s{_ilgProject = a})

-- | Name of the interconnect location to return.
ilgInterconnectLocation :: Lens' InterconnectLocationsGet Text
ilgInterconnectLocation
  = lens _ilgInterconnectLocation
      (\ s a -> s{_ilgInterconnectLocation = a})

instance GoogleRequest InterconnectLocationsGet where
        type Rs InterconnectLocationsGet =
             InterconnectLocation
        type Scopes InterconnectLocationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InterconnectLocationsGet'{..}
          = go _ilgProject _ilgInterconnectLocation
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InterconnectLocationsGetResource)
                      mempty
