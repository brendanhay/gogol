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
-- Module      : Network.Google.Resource.AdSenseHost.URLChannels.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a new URL channel to the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.urlchannels.insert@.
module Network.Google.Resource.AdSenseHost.URLChannels.Insert
    (
    -- * REST Resource
      URLChannelsInsertResource

    -- * Creating a Request
    , urlChannelsInsert
    , URLChannelsInsert

    -- * Request Lenses
    , uciPayload
    , uciAdClientId
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.urlchannels.insert@ method which the
-- 'URLChannelsInsert' request conforms to.
type URLChannelsInsertResource =
     "adsensehost" :>
       "v4.1" :>
         "adclients" :>
           Capture "adClientId" Text :>
             "urlchannels" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] URLChannel :> Post '[JSON] URLChannel

-- | Add a new URL channel to the host AdSense account.
--
-- /See:/ 'urlChannelsInsert' smart constructor.
data URLChannelsInsert = URLChannelsInsert
    { _uciPayload    :: !URLChannel
    , _uciAdClientId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLChannelsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uciPayload'
--
-- * 'uciAdClientId'
urlChannelsInsert
    :: URLChannel -- ^ 'uciPayload'
    -> Text -- ^ 'uciAdClientId'
    -> URLChannelsInsert
urlChannelsInsert pUciPayload_ pUciAdClientId_ =
    URLChannelsInsert
    { _uciPayload = pUciPayload_
    , _uciAdClientId = pUciAdClientId_
    }

-- | Multipart request metadata.
uciPayload :: Lens' URLChannelsInsert URLChannel
uciPayload
  = lens _uciPayload (\ s a -> s{_uciPayload = a})

-- | Ad client to which the new URL channel will be added.
uciAdClientId :: Lens' URLChannelsInsert Text
uciAdClientId
  = lens _uciAdClientId
      (\ s a -> s{_uciAdClientId = a})

instance GoogleRequest URLChannelsInsert where
        type Rs URLChannelsInsert = URLChannel
        requestClient URLChannelsInsert{..}
          = go _uciAdClientId (Just AltJSON) _uciPayload
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy URLChannelsInsertResource)
                      mempty
