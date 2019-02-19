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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new landing page.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertiserLandingPages.insert@.
module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Insert
    (
    -- * REST Resource
      AdvertiserLandingPagesInsertResource

    -- * Creating a Request
    , advertiserLandingPagesInsert
    , AdvertiserLandingPagesInsert

    -- * Request Lenses
    , alpiProFileId
    , alpiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserLandingPages.insert@ method which the
-- 'AdvertiserLandingPagesInsert' request conforms to.
type AdvertiserLandingPagesInsertResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserLandingPages" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] LandingPage :>
                   Post '[JSON] LandingPage

-- | Inserts a new landing page.
--
-- /See:/ 'advertiserLandingPagesInsert' smart constructor.
data AdvertiserLandingPagesInsert =
  AdvertiserLandingPagesInsert'
    { _alpiProFileId :: !(Textual Int64)
    , _alpiPayload   :: !LandingPage
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdvertiserLandingPagesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alpiProFileId'
--
-- * 'alpiPayload'
advertiserLandingPagesInsert
    :: Int64 -- ^ 'alpiProFileId'
    -> LandingPage -- ^ 'alpiPayload'
    -> AdvertiserLandingPagesInsert
advertiserLandingPagesInsert pAlpiProFileId_ pAlpiPayload_ =
  AdvertiserLandingPagesInsert'
    {_alpiProFileId = _Coerce # pAlpiProFileId_, _alpiPayload = pAlpiPayload_}

-- | User profile ID associated with this request.
alpiProFileId :: Lens' AdvertiserLandingPagesInsert Int64
alpiProFileId
  = lens _alpiProFileId
      (\ s a -> s{_alpiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
alpiPayload :: Lens' AdvertiserLandingPagesInsert LandingPage
alpiPayload
  = lens _alpiPayload (\ s a -> s{_alpiPayload = a})

instance GoogleRequest AdvertiserLandingPagesInsert
         where
        type Rs AdvertiserLandingPagesInsert = LandingPage
        type Scopes AdvertiserLandingPagesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserLandingPagesInsert'{..}
          = go _alpiProFileId (Just AltJSON) _alpiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserLandingPagesInsertResource)
                      mempty
