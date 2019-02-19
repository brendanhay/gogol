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
-- Module      : Network.Google.Resource.DFAReporting.MobileApps.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one mobile app by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.mobileApps.get@.
module Network.Google.Resource.DFAReporting.MobileApps.Get
    (
    -- * REST Resource
      MobileAppsGetResource

    -- * Creating a Request
    , mobileAppsGet
    , MobileAppsGet

    -- * Request Lenses
    , magProFileId
    , magId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.mobileApps.get@ method which the
-- 'MobileAppsGet' request conforms to.
type MobileAppsGetResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "mobileApps" :>
               Capture "id" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] MobileApp

-- | Gets one mobile app by ID.
--
-- /See:/ 'mobileAppsGet' smart constructor.
data MobileAppsGet =
  MobileAppsGet'
    { _magProFileId :: !(Textual Int64)
    , _magId        :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileAppsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'magProFileId'
--
-- * 'magId'
mobileAppsGet
    :: Int64 -- ^ 'magProFileId'
    -> Text -- ^ 'magId'
    -> MobileAppsGet
mobileAppsGet pMagProFileId_ pMagId_ =
  MobileAppsGet' {_magProFileId = _Coerce # pMagProFileId_, _magId = pMagId_}


-- | User profile ID associated with this request.
magProFileId :: Lens' MobileAppsGet Int64
magProFileId
  = lens _magProFileId (\ s a -> s{_magProFileId = a})
      . _Coerce

-- | Mobile app ID.
magId :: Lens' MobileAppsGet Text
magId = lens _magId (\ s a -> s{_magId = a})

instance GoogleRequest MobileAppsGet where
        type Rs MobileAppsGet = MobileApp
        type Scopes MobileAppsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient MobileAppsGet'{..}
          = go _magProFileId _magId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy MobileAppsGetResource)
                      mempty
