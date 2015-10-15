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
-- Module      : Network.Google.Resource.DoubleClickSearch.Conversion.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a batch of new conversions into DoubleClick Search.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleClicksearchConversionInsert@.
module Network.Google.Resource.DoubleClickSearch.Conversion.Insert
    (
    -- * REST Resource
      ConversionInsertResource

    -- * Creating a Request
    , conversionInsert'
    , ConversionInsert'

    -- * Request Lenses
    , ciPayload
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClicksearchConversionInsert@ method which the
-- 'ConversionInsert'' request conforms to.
type ConversionInsertResource =
     "conversion" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] ConversionList :>
           Post '[JSON] ConversionList

-- | Inserts a batch of new conversions into DoubleClick Search.
--
-- /See:/ 'conversionInsert'' smart constructor.
newtype ConversionInsert' = ConversionInsert'
    { _ciPayload :: ConversionList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConversionInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciPayload'
conversionInsert'
    :: ConversionList -- ^ 'payload'
    -> ConversionInsert'
conversionInsert' pCiPayload_ =
    ConversionInsert'
    { _ciPayload = pCiPayload_
    }

-- | Multipart request metadata.
ciPayload :: Lens' ConversionInsert' ConversionList
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

instance GoogleRequest ConversionInsert' where
        type Rs ConversionInsert' = ConversionList
        requestClient ConversionInsert'{..}
          = go (Just AltJSON) _ciPayload doubleClickSearch
          where go
                  = buildClient
                      (Proxy :: Proxy ConversionInsertResource)
                      mempty
