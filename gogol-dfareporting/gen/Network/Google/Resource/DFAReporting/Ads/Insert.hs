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
-- Module      : Network.Google.Resource.DFAReporting.Ads.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new ad.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.ads.insert@.
module Network.Google.Resource.DFAReporting.Ads.Insert
    (
    -- * REST Resource
      AdsInsertResource

    -- * Creating a Request
    , adsInsert
    , AdsInsert

    -- * Request Lenses
    , aiProFileId
    , aiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.ads.insert@ method which the
-- 'AdsInsert' request conforms to.
type AdsInsertResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "ads" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Ad :> Post '[JSON] Ad

-- | Inserts a new ad.
--
-- /See:/ 'adsInsert' smart constructor.
data AdsInsert = AdsInsert'
    { _aiProFileId :: !(Textual Int64)
    , _aiPayload   :: !Ad
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiProFileId'
--
-- * 'aiPayload'
adsInsert
    :: Int64 -- ^ 'aiProFileId'
    -> Ad -- ^ 'aiPayload'
    -> AdsInsert
adsInsert pAiProFileId_ pAiPayload_ =
    AdsInsert'
    { _aiProFileId = _Coerce # pAiProFileId_
    , _aiPayload = pAiPayload_
    }

-- | User profile ID associated with this request.
aiProFileId :: Lens' AdsInsert Int64
aiProFileId
  = lens _aiProFileId (\ s a -> s{_aiProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
aiPayload :: Lens' AdsInsert Ad
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

instance GoogleRequest AdsInsert where
        type Rs AdsInsert = Ad
        type Scopes AdsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdsInsert'{..}
          = go _aiProFileId (Just AltJSON) _aiPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AdsInsertResource)
                      mempty
