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
-- Module      : Network.Google.Resource.DFAReporting.PlatformTypes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one platform type by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.platformTypes.get@.
module Network.Google.Resource.DFAReporting.PlatformTypes.Get
    (
    -- * REST Resource
      PlatformTypesGetResource

    -- * Creating a Request
    , platformTypesGet
    , PlatformTypesGet

    -- * Request Lenses
    , ptgProFileId
    , ptgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.platformTypes.get@ method which the
-- 'PlatformTypesGet' request conforms to.
type PlatformTypesGetResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "platformTypes" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] PlatformType

-- | Gets one platform type by ID.
--
-- /See:/ 'platformTypesGet' smart constructor.
data PlatformTypesGet =
  PlatformTypesGet'
    { _ptgProFileId :: !(Textual Int64)
    , _ptgId        :: !(Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PlatformTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptgProFileId'
--
-- * 'ptgId'
platformTypesGet
    :: Int64 -- ^ 'ptgProFileId'
    -> Int64 -- ^ 'ptgId'
    -> PlatformTypesGet
platformTypesGet pPtgProFileId_ pPtgId_ =
  PlatformTypesGet'
    {_ptgProFileId = _Coerce # pPtgProFileId_, _ptgId = _Coerce # pPtgId_}

-- | User profile ID associated with this request.
ptgProFileId :: Lens' PlatformTypesGet Int64
ptgProFileId
  = lens _ptgProFileId (\ s a -> s{_ptgProFileId = a})
      . _Coerce

-- | Platform type ID.
ptgId :: Lens' PlatformTypesGet Int64
ptgId
  = lens _ptgId (\ s a -> s{_ptgId = a}) . _Coerce

instance GoogleRequest PlatformTypesGet where
        type Rs PlatformTypesGet = PlatformType
        type Scopes PlatformTypesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlatformTypesGet'{..}
          = go _ptgProFileId _ptgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlatformTypesGetResource)
                      mempty
