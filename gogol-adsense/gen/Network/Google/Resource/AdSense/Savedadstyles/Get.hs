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
-- Module      : Network.Google.Resource.AdSense.Savedadstyles.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a specific saved ad style from the user\'s account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.savedadstyles.get@.
module Network.Google.Resource.AdSense.Savedadstyles.Get
    (
    -- * REST Resource
      SavedadstylesGetResource

    -- * Creating a Request
    , savedadstylesGet
    , SavedadstylesGet

    -- * Request Lenses
    , sgSavedAdStyleId
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.savedadstyles.get@ method which the
-- 'SavedadstylesGet' request conforms to.
type SavedadstylesGetResource =
     "adsense" :>
       "v1.4" :>
         "savedadstyles" :>
           Capture "savedAdStyleId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] SavedAdStyle

-- | Get a specific saved ad style from the user\'s account.
--
-- /See:/ 'savedadstylesGet' smart constructor.
newtype SavedadstylesGet = SavedadstylesGet'
    { _sgSavedAdStyleId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedadstylesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgSavedAdStyleId'
savedadstylesGet
    :: Text -- ^ 'sgSavedAdStyleId'
    -> SavedadstylesGet
savedadstylesGet pSgSavedAdStyleId_ =
    SavedadstylesGet'
    { _sgSavedAdStyleId = pSgSavedAdStyleId_
    }

-- | Saved ad style to retrieve.
sgSavedAdStyleId :: Lens' SavedadstylesGet Text
sgSavedAdStyleId
  = lens _sgSavedAdStyleId
      (\ s a -> s{_sgSavedAdStyleId = a})

instance GoogleRequest SavedadstylesGet where
        type Rs SavedadstylesGet = SavedAdStyle
        type Scopes SavedadstylesGet =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient SavedadstylesGet'{..}
          = go _sgSavedAdStyleId (Just AltJSON) adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy SavedadstylesGetResource)
                      mempty
