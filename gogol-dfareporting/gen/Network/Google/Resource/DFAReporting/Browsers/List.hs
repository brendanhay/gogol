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
-- Module      : Network.Google.Resource.DFAReporting.Browsers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of browsers.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingBrowsersList@.
module Network.Google.Resource.DFAReporting.Browsers.List
    (
    -- * REST Resource
      BrowsersListResource

    -- * Creating a Request
    , browsersList'
    , BrowsersList'

    -- * Request Lenses
    , blProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingBrowsersList@ method which the
-- 'BrowsersList'' request conforms to.
type BrowsersListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "browsers" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] BrowsersListResponse

-- | Retrieves a list of browsers.
--
-- /See:/ 'browsersList'' smart constructor.
newtype BrowsersList' = BrowsersList'
    { _blProFileId :: Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BrowsersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blProFileId'
browsersList'
    :: Int64 -- ^ 'profileId'
    -> BrowsersList'
browsersList' pBlProFileId_ =
    BrowsersList'
    { _blProFileId = pBlProFileId_
    }

-- | User profile ID associated with this request.
blProFileId :: Lens' BrowsersList' Int64
blProFileId
  = lens _blProFileId (\ s a -> s{_blProFileId = a})

instance GoogleRequest BrowsersList' where
        type Rs BrowsersList' = BrowsersListResponse
        requestClient BrowsersList'{..}
          = go _blProFileId (Just AltJSON) dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy BrowsersListResource)
                      mempty
