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
-- Module      : Network.Google.Resource.Compute.PublicDelegatedPrefixes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified PublicDelegatedPrefix resource in the given
-- region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.publicDelegatedPrefixes.get@.
module Network.Google.Resource.Compute.PublicDelegatedPrefixes.Get
    (
    -- * REST Resource
      PublicDelegatedPrefixesGetResource

    -- * Creating a Request
    , publicDelegatedPrefixesGet
    , PublicDelegatedPrefixesGet

    -- * Request Lenses
    , pdpgPublicDelegatedPrefix
    , pdpgProject
    , pdpgRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.publicDelegatedPrefixes.get@ method which the
-- 'PublicDelegatedPrefixesGet' request conforms to.
type PublicDelegatedPrefixesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "publicDelegatedPrefixes" :>
                   Capture "publicDelegatedPrefix" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] PublicDelegatedPrefix

-- | Returns the specified PublicDelegatedPrefix resource in the given
-- region.
--
-- /See:/ 'publicDelegatedPrefixesGet' smart constructor.
data PublicDelegatedPrefixesGet =
  PublicDelegatedPrefixesGet'
    { _pdpgPublicDelegatedPrefix :: !Text
    , _pdpgProject :: !Text
    , _pdpgRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicDelegatedPrefixesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdpgPublicDelegatedPrefix'
--
-- * 'pdpgProject'
--
-- * 'pdpgRegion'
publicDelegatedPrefixesGet
    :: Text -- ^ 'pdpgPublicDelegatedPrefix'
    -> Text -- ^ 'pdpgProject'
    -> Text -- ^ 'pdpgRegion'
    -> PublicDelegatedPrefixesGet
publicDelegatedPrefixesGet pPdpgPublicDelegatedPrefix_ pPdpgProject_ pPdpgRegion_ =
  PublicDelegatedPrefixesGet'
    { _pdpgPublicDelegatedPrefix = pPdpgPublicDelegatedPrefix_
    , _pdpgProject = pPdpgProject_
    , _pdpgRegion = pPdpgRegion_
    }


-- | Name of the PublicDelegatedPrefix resource to return.
pdpgPublicDelegatedPrefix :: Lens' PublicDelegatedPrefixesGet Text
pdpgPublicDelegatedPrefix
  = lens _pdpgPublicDelegatedPrefix
      (\ s a -> s{_pdpgPublicDelegatedPrefix = a})

-- | Project ID for this request.
pdpgProject :: Lens' PublicDelegatedPrefixesGet Text
pdpgProject
  = lens _pdpgProject (\ s a -> s{_pdpgProject = a})

-- | Name of the region of this request.
pdpgRegion :: Lens' PublicDelegatedPrefixesGet Text
pdpgRegion
  = lens _pdpgRegion (\ s a -> s{_pdpgRegion = a})

instance GoogleRequest PublicDelegatedPrefixesGet
         where
        type Rs PublicDelegatedPrefixesGet =
             PublicDelegatedPrefix
        type Scopes PublicDelegatedPrefixesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient PublicDelegatedPrefixesGet'{..}
          = go _pdpgProject _pdpgRegion
              _pdpgPublicDelegatedPrefix
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy PublicDelegatedPrefixesGetResource)
                      mempty
