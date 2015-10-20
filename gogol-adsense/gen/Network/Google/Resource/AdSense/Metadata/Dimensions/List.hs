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
-- Module      : Network.Google.Resource.AdSense.Metadata.Dimensions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the metadata for the dimensions available to this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.metadata.dimensions.list@.
module Network.Google.Resource.AdSense.Metadata.Dimensions.List
    (
    -- * REST Resource
      MetadataDimensionsListResource

    -- * Creating a Request
    , metadataDimensionsList
    , MetadataDimensionsList

    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.metadata.dimensions.list@ method which the
-- 'MetadataDimensionsList' request conforms to.
type MetadataDimensionsListResource =
     "metadata" :>
       "dimensions" :>
         QueryParam "alt" AltJSON :> Get '[JSON] Metadata

-- | List the metadata for the dimensions available to this AdSense account.
--
-- /See:/ 'metadataDimensionsList' smart constructor.
data MetadataDimensionsList =
    MetadataDimensionsList
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetadataDimensionsList' with the minimum fields required to make a request.
--
metadataDimensionsList
    :: MetadataDimensionsList
metadataDimensionsList = MetadataDimensionsList

instance GoogleRequest MetadataDimensionsList where
        type Rs MetadataDimensionsList = Metadata
        requestClient MetadataDimensionsList{}
          = go (Just AltJSON) adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy MetadataDimensionsListResource)
                      mempty
