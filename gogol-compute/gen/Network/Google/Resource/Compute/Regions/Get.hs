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
-- Module      : Network.Google.Resource.Compute.Regions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified Region resource. Get a list of available regions
-- by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regions.get@.
module Network.Google.Resource.Compute.Regions.Get
    (
    -- * REST Resource
      RegionsGetResource

    -- * Creating a Request
    , regionsGet
    , RegionsGet

    -- * Request Lenses
    , rgProject
    , rgRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regions.get@ method which the
-- 'RegionsGet' request conforms to.
type RegionsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Region

-- | Returns the specified Region resource. Get a list of available regions
-- by making a list() request.
--
-- /See:/ 'regionsGet' smart constructor.
data RegionsGet = RegionsGet
    { _rgProject :: !Text
    , _rgRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgProject'
--
-- * 'rgRegion'
regionsGet
    :: Text -- ^ 'rgProject'
    -> Text -- ^ 'rgRegion'
    -> RegionsGet
regionsGet pRgProject_ pRgRegion_ =
    RegionsGet
    { _rgProject = pRgProject_
    , _rgRegion = pRgRegion_
    }

-- | Project ID for this request.
rgProject :: Lens' RegionsGet Text
rgProject
  = lens _rgProject (\ s a -> s{_rgProject = a})

-- | Name of the region resource to return.
rgRegion :: Lens' RegionsGet Text
rgRegion = lens _rgRegion (\ s a -> s{_rgRegion = a})

instance GoogleRequest RegionsGet where
        type Rs RegionsGet = Region
        requestClient RegionsGet{..}
          = go _rgProject _rgRegion (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RegionsGetResource)
                      mempty
