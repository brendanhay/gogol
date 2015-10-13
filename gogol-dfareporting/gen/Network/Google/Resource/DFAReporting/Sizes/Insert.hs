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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new size.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSizesInsert@.
module Network.Google.Resource.DFAReporting.Sizes.Insert
    (
    -- * REST Resource
      SizesInsertResource

    -- * Creating a Request
    , sizesInsert'
    , SizesInsert'

    -- * Request Lenses
    , sProFileId
    , sPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSizesInsert@ method which the
-- 'SizesInsert'' request conforms to.
type SizesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Size :> Post '[JSON] Size

-- | Inserts a new size.
--
-- /See:/ 'sizesInsert'' smart constructor.
data SizesInsert' = SizesInsert'
    { _sProFileId :: !Int64
    , _sPayload   :: !Size
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sProFileId'
--
-- * 'sPayload'
sizesInsert'
    :: Int64 -- ^ 'profileId'
    -> Size -- ^ 'payload'
    -> SizesInsert'
sizesInsert' pSProFileId_ pSPayload_ =
    SizesInsert'
    { _sProFileId = pSProFileId_
    , _sPayload = pSPayload_
    }

-- | User profile ID associated with this request.
sProFileId :: Lens' SizesInsert' Int64
sProFileId
  = lens _sProFileId (\ s a -> s{_sProFileId = a})

-- | Multipart request metadata.
sPayload :: Lens' SizesInsert' Size
sPayload = lens _sPayload (\ s a -> s{_sPayload = a})

instance GoogleRequest SizesInsert' where
        type Rs SizesInsert' = Size
        requestClient SizesInsert'{..}
          = go _sProFileId (Just AltJSON) _sPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SizesInsertResource)
                      mempty
