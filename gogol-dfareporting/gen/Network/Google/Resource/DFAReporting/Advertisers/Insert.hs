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
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertisers.insert@.
module Network.Google.Resource.DFAReporting.Advertisers.Insert
    (
    -- * REST Resource
      AdvertisersInsertResource

    -- * Creating a Request
    , advertisersInsert
    , AdvertisersInsert

    -- * Request Lenses
    , aiiProFileId
    , aiiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertisers.insert@ method which the
-- 'AdvertisersInsert' request conforms to.
type AdvertisersInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Advertiser :> Post '[JSON] Advertiser

-- | Inserts a new advertiser.
--
-- /See:/ 'advertisersInsert' smart constructor.
data AdvertisersInsert = AdvertisersInsert
    { _aiiProFileId :: !Int64
    , _aiiPayload   :: !Advertiser
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiiProFileId'
--
-- * 'aiiPayload'
advertisersInsert
    :: Int64 -- ^ 'aiiProFileId'
    -> Advertiser -- ^ 'aiiPayload'
    -> AdvertisersInsert
advertisersInsert pAiiProFileId_ pAiiPayload_ =
    AdvertisersInsert
    { _aiiProFileId = pAiiProFileId_
    , _aiiPayload = pAiiPayload_
    }

-- | User profile ID associated with this request.
aiiProFileId :: Lens' AdvertisersInsert Int64
aiiProFileId
  = lens _aiiProFileId (\ s a -> s{_aiiProFileId = a})

-- | Multipart request metadata.
aiiPayload :: Lens' AdvertisersInsert Advertiser
aiiPayload
  = lens _aiiPayload (\ s a -> s{_aiiPayload = a})

instance GoogleRequest AdvertisersInsert where
        type Rs AdvertisersInsert = Advertiser
        requestClient AdvertisersInsert{..}
          = go _aiiProFileId (Just AltJSON) _aiiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertisersInsertResource)
                      mempty
