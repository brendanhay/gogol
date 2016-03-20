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
-- Module      : Network.Google.Resource.DFAReporting.Sizes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one size by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.sizes.get@.
module Network.Google.Resource.DFAReporting.Sizes.Get
    (
    -- * REST Resource
      SizesGetResource

    -- * Creating a Request
    , sizesGet
    , SizesGet

    -- * Request Lenses
    , sgProFileId
    , sgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.sizes.get@ method which the
-- 'SizesGet' request conforms to.
type SizesGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "sizes" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Size

-- | Gets one size by ID.
--
-- /See:/ 'sizesGet' smart constructor.
data SizesGet = SizesGet
    { _sgProFileId :: !(Textual Int64)
    , _sgId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgProFileId'
--
-- * 'sgId'
sizesGet
    :: Int64 -- ^ 'sgProFileId'
    -> Int64 -- ^ 'sgId'
    -> SizesGet
sizesGet pSgProFileId_ pSgId_ =
    SizesGet
    { _sgProFileId = _Coerce # pSgProFileId_
    , _sgId = _Coerce # pSgId_
    }

-- | User profile ID associated with this request.
sgProFileId :: Lens' SizesGet Int64
sgProFileId
  = lens _sgProFileId (\ s a -> s{_sgProFileId = a}) .
      _Coerce

-- | Size ID.
sgId :: Lens' SizesGet Int64
sgId = lens _sgId (\ s a -> s{_sgId = a}) . _Coerce

instance GoogleRequest SizesGet where
        type Rs SizesGet = Size
        requestClient SizesGet{..}
          = go _sgProFileId _sgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SizesGetResource)
                      mempty
