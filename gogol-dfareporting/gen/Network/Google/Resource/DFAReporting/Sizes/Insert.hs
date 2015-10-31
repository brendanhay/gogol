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
-- Module      : Network.Google.Resource.DFAReporting.Sizes.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new size.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.sizes.insert@.
module Network.Google.Resource.DFAReporting.Sizes.Insert
    (
    -- * REST Resource
      SizesInsertResource

    -- * Creating a Request
    , sizesInsert
    , SizesInsert

    -- * Request Lenses
    , siProFileId
    , siPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.sizes.insert@ method which the
-- 'SizesInsert' request conforms to.
type SizesInsertResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "sizes" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Size :> Post '[JSON] Size

-- | Inserts a new size.
--
-- /See:/ 'sizesInsert' smart constructor.
data SizesInsert = SizesInsert
    { _siProFileId :: !(Textual Int64)
    , _siPayload   :: !Size
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siProFileId'
--
-- * 'siPayload'
sizesInsert
    :: Int64 -- ^ 'siProFileId'
    -> Size -- ^ 'siPayload'
    -> SizesInsert
sizesInsert pSiProFileId_ pSiPayload_ =
    SizesInsert
    { _siProFileId = _Coerce # pSiProFileId_
    , _siPayload = pSiPayload_
    }

-- | User profile ID associated with this request.
siProFileId :: Lens' SizesInsert Int64
siProFileId
  = lens _siProFileId (\ s a -> s{_siProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
siPayload :: Lens' SizesInsert Size
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

instance GoogleRequest SizesInsert where
        type Rs SizesInsert = Size
        type Scopes SizesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SizesInsert{..}
          = go _siProFileId (Just AltJSON) _siPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SizesInsertResource)
                      mempty
