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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one size by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSizesGet@.
module Network.Google.Resource.DFAReporting.Sizes.Get
    (
    -- * REST Resource
      SizesGetResource

    -- * Creating a Request
    , sizesGet'
    , SizesGet'

    -- * Request Lenses
    , sizProFileId
    , sizId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSizesGet@ method which the
-- 'SizesGet'' request conforms to.
type SizesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] Size

-- | Gets one size by ID.
--
-- /See:/ 'sizesGet'' smart constructor.
data SizesGet' = SizesGet'
    { _sizProFileId :: !Int64
    , _sizId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sizProFileId'
--
-- * 'sizId'
sizesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SizesGet'
sizesGet' pSizProFileId_ pSizId_ =
    SizesGet'
    { _sizProFileId = pSizProFileId_
    , _sizId = pSizId_
    }

-- | User profile ID associated with this request.
sizProFileId :: Lens' SizesGet' Int64
sizProFileId
  = lens _sizProFileId (\ s a -> s{_sizProFileId = a})

-- | Size ID.
sizId :: Lens' SizesGet' Int64
sizId = lens _sizId (\ s a -> s{_sizId = a})

instance GoogleRequest SizesGet' where
        type Rs SizesGet' = Size
        requestClient SizesGet'{..}
          = go _sizProFileId _sizId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SizesGetResource)
                      mempty
