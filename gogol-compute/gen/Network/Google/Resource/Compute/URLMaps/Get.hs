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
-- Module      : Network.Google.Resource.Compute.URLMaps.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified UrlMap resource. Get a list of available URL maps
-- by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.urlMaps.get@.
module Network.Google.Resource.Compute.URLMaps.Get
    (
    -- * REST Resource
      URLMapsGetResource

    -- * Creating a Request
    , urlMapsGet
    , URLMapsGet

    -- * Request Lenses
    , umgURLMap
    , umgProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.urlMaps.get@ method which the
-- 'URLMapsGet' request conforms to.
type URLMapsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 Capture "urlMap" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] URLMap

-- | Returns the specified UrlMap resource. Get a list of available URL maps
-- by making a list() request.
--
-- /See:/ 'urlMapsGet' smart constructor.
data URLMapsGet = URLMapsGet
    { _umgURLMap  :: !Text
    , _umgProject :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umgURLMap'
--
-- * 'umgProject'
urlMapsGet
    :: Text -- ^ 'umgURLMap'
    -> Text -- ^ 'umgProject'
    -> URLMapsGet
urlMapsGet pUmgURLMap_ pUmgProject_ =
    URLMapsGet
    { _umgURLMap = pUmgURLMap_
    , _umgProject = pUmgProject_
    }

-- | Name of the UrlMap resource to return.
umgURLMap :: Lens' URLMapsGet Text
umgURLMap
  = lens _umgURLMap (\ s a -> s{_umgURLMap = a})

-- | Project ID for this request.
umgProject :: Lens' URLMapsGet Text
umgProject
  = lens _umgProject (\ s a -> s{_umgProject = a})

instance GoogleRequest URLMapsGet where
        type Rs URLMapsGet = URLMap
        type Scopes URLMapsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient URLMapsGet{..}
          = go _umgProject _umgURLMap (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy URLMapsGetResource)
                      mempty
