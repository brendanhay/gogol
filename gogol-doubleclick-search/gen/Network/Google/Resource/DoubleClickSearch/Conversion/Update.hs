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
-- Module      : Network.Google.Resource.DoubleClickSearch.Conversion.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a batch of conversions in DoubleClick Search.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @doubleclicksearch.conversion.update@.
module Network.Google.Resource.DoubleClickSearch.Conversion.Update
    (
    -- * REST Resource
      ConversionUpdateResource

    -- * Creating a Request
    , conversionUpdate
    , ConversionUpdate

    -- * Request Lenses
    , cuPayload
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @doubleclicksearch.conversion.update@ method which the
-- 'ConversionUpdate' request conforms to.
type ConversionUpdateResource =
     "doubleclicksearch" :>
       "v2" :>
         "conversion" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] ConversionList :>
               Put '[JSON] ConversionList

-- | Updates a batch of conversions in DoubleClick Search.
--
-- /See:/ 'conversionUpdate' smart constructor.
newtype ConversionUpdate =
  ConversionUpdate'
    { _cuPayload :: ConversionList
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConversionUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuPayload'
conversionUpdate
    :: ConversionList -- ^ 'cuPayload'
    -> ConversionUpdate
conversionUpdate pCuPayload_ = ConversionUpdate' {_cuPayload = pCuPayload_}


-- | Multipart request metadata.
cuPayload :: Lens' ConversionUpdate ConversionList
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

instance GoogleRequest ConversionUpdate where
        type Rs ConversionUpdate = ConversionList
        type Scopes ConversionUpdate =
             '["https://www.googleapis.com/auth/doubleclicksearch"]
        requestClient ConversionUpdate'{..}
          = go (Just AltJSON) _cuPayload
              doubleClickSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy ConversionUpdateResource)
                      mempty
