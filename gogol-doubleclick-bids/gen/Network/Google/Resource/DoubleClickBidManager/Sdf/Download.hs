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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Sdf.Download
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves entities in SDF format.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.sdf.download@.
module Network.Google.Resource.DoubleClickBidManager.Sdf.Download
    (
    -- * REST Resource
      SdfDownloadResource

    -- * Creating a Request
    , sdfDownload
    , SdfDownload

    -- * Request Lenses
    , sdPayload
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.sdf.download@ method which the
-- 'SdfDownload' request conforms to.
type SdfDownloadResource =
     "doubleclickbidmanager" :>
       "v1" :>
         "sdf" :>
           "download" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] DownloadRequest :>
                 Post '[JSON] DownloadResponse

-- | Retrieves entities in SDF format.
--
-- /See:/ 'sdfDownload' smart constructor.
newtype SdfDownload = SdfDownload'
    { _sdPayload :: DownloadRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SdfDownload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdPayload'
sdfDownload
    :: DownloadRequest -- ^ 'sdPayload'
    -> SdfDownload
sdfDownload pSdPayload_ =
    SdfDownload'
    { _sdPayload = pSdPayload_
    }

-- | Multipart request metadata.
sdPayload :: Lens' SdfDownload DownloadRequest
sdPayload
  = lens _sdPayload (\ s a -> s{_sdPayload = a})

instance GoogleRequest SdfDownload where
        type Rs SdfDownload = DownloadResponse
        type Scopes SdfDownload = '[]
        requestClient SdfDownload'{..}
          = go (Just AltJSON) _sdPayload doubleClickBidsService
          where go
                  = buildClient (Proxy :: Proxy SdfDownloadResource)
                      mempty
