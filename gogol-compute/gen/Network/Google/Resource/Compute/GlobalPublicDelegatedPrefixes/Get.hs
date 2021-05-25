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
-- Module      : Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified global PublicDelegatedPrefix resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalPublicDelegatedPrefixes.get@.
module Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Get
    (
    -- * REST Resource
      GlobalPublicDelegatedPrefixesGetResource

    -- * Creating a Request
    , globalPublicDelegatedPrefixesGet
    , GlobalPublicDelegatedPrefixesGet

    -- * Request Lenses
    , gpdpgPublicDelegatedPrefix
    , gpdpgProject
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalPublicDelegatedPrefixes.get@ method which the
-- 'GlobalPublicDelegatedPrefixesGet' request conforms to.
type GlobalPublicDelegatedPrefixesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "publicDelegatedPrefixes" :>
                 Capture "publicDelegatedPrefix" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] PublicDelegatedPrefix

-- | Returns the specified global PublicDelegatedPrefix resource.
--
-- /See:/ 'globalPublicDelegatedPrefixesGet' smart constructor.
data GlobalPublicDelegatedPrefixesGet =
  GlobalPublicDelegatedPrefixesGet'
    { _gpdpgPublicDelegatedPrefix :: !Text
    , _gpdpgProject :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalPublicDelegatedPrefixesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdpgPublicDelegatedPrefix'
--
-- * 'gpdpgProject'
globalPublicDelegatedPrefixesGet
    :: Text -- ^ 'gpdpgPublicDelegatedPrefix'
    -> Text -- ^ 'gpdpgProject'
    -> GlobalPublicDelegatedPrefixesGet
globalPublicDelegatedPrefixesGet pGpdpgPublicDelegatedPrefix_ pGpdpgProject_ =
  GlobalPublicDelegatedPrefixesGet'
    { _gpdpgPublicDelegatedPrefix = pGpdpgPublicDelegatedPrefix_
    , _gpdpgProject = pGpdpgProject_
    }


-- | Name of the PublicDelegatedPrefix resource to return.
gpdpgPublicDelegatedPrefix :: Lens' GlobalPublicDelegatedPrefixesGet Text
gpdpgPublicDelegatedPrefix
  = lens _gpdpgPublicDelegatedPrefix
      (\ s a -> s{_gpdpgPublicDelegatedPrefix = a})

-- | Project ID for this request.
gpdpgProject :: Lens' GlobalPublicDelegatedPrefixesGet Text
gpdpgProject
  = lens _gpdpgProject (\ s a -> s{_gpdpgProject = a})

instance GoogleRequest
           GlobalPublicDelegatedPrefixesGet
         where
        type Rs GlobalPublicDelegatedPrefixesGet =
             PublicDelegatedPrefix
        type Scopes GlobalPublicDelegatedPrefixesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient GlobalPublicDelegatedPrefixesGet'{..}
          = go _gpdpgProject _gpdpgPublicDelegatedPrefix
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalPublicDelegatedPrefixesGetResource)
                      mempty
