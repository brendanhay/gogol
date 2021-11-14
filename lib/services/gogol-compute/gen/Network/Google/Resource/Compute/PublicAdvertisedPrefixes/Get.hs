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
-- Module      : Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified PublicAdvertisedPrefix resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.publicAdvertisedPrefixes.get@.
module Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Get
    (
    -- * REST Resource
      PublicAdvertisedPrefixesGetResource

    -- * Creating a Request
    , publicAdvertisedPrefixesGet
    , PublicAdvertisedPrefixesGet

    -- * Request Lenses
    , papgPublicAdvertisedPrefix
    , papgProject
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.publicAdvertisedPrefixes.get@ method which the
-- 'PublicAdvertisedPrefixesGet' request conforms to.
type PublicAdvertisedPrefixesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "publicAdvertisedPrefixes" :>
                 Capture "publicAdvertisedPrefix" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] PublicAdvertisedPrefix

-- | Returns the specified PublicAdvertisedPrefix resource.
--
-- /See:/ 'publicAdvertisedPrefixesGet' smart constructor.
data PublicAdvertisedPrefixesGet =
  PublicAdvertisedPrefixesGet'
    { _papgPublicAdvertisedPrefix :: !Text
    , _papgProject :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicAdvertisedPrefixesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'papgPublicAdvertisedPrefix'
--
-- * 'papgProject'
publicAdvertisedPrefixesGet
    :: Text -- ^ 'papgPublicAdvertisedPrefix'
    -> Text -- ^ 'papgProject'
    -> PublicAdvertisedPrefixesGet
publicAdvertisedPrefixesGet pPapgPublicAdvertisedPrefix_ pPapgProject_ =
  PublicAdvertisedPrefixesGet'
    { _papgPublicAdvertisedPrefix = pPapgPublicAdvertisedPrefix_
    , _papgProject = pPapgProject_
    }


-- | Name of the PublicAdvertisedPrefix resource to return.
papgPublicAdvertisedPrefix :: Lens' PublicAdvertisedPrefixesGet Text
papgPublicAdvertisedPrefix
  = lens _papgPublicAdvertisedPrefix
      (\ s a -> s{_papgPublicAdvertisedPrefix = a})

-- | Project ID for this request.
papgProject :: Lens' PublicAdvertisedPrefixesGet Text
papgProject
  = lens _papgProject (\ s a -> s{_papgProject = a})

instance GoogleRequest PublicAdvertisedPrefixesGet
         where
        type Rs PublicAdvertisedPrefixesGet =
             PublicAdvertisedPrefix
        type Scopes PublicAdvertisedPrefixesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient PublicAdvertisedPrefixesGet'{..}
          = go _papgProject _papgPublicAdvertisedPrefix
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy PublicAdvertisedPrefixesGetResource)
                      mempty
