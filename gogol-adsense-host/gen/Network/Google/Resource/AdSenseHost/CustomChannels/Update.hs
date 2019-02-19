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
-- Module      : Network.Google.Resource.AdSenseHost.CustomChannels.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a custom channel in the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.customchannels.update@.
module Network.Google.Resource.AdSenseHost.CustomChannels.Update
    (
    -- * REST Resource
      CustomChannelsUpdateResource

    -- * Creating a Request
    , customChannelsUpdate
    , CustomChannelsUpdate

    -- * Request Lenses
    , ccuPayload
    , ccuAdClientId
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.customchannels.update@ method which the
-- 'CustomChannelsUpdate' request conforms to.
type CustomChannelsUpdateResource =
     "adsensehost" :>
       "v4.1" :>
         "adclients" :>
           Capture "adClientId" Text :>
             "customchannels" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] CustomChannel :>
                   Put '[JSON] CustomChannel

-- | Update a custom channel in the host AdSense account.
--
-- /See:/ 'customChannelsUpdate' smart constructor.
data CustomChannelsUpdate =
  CustomChannelsUpdate'
    { _ccuPayload    :: !CustomChannel
    , _ccuAdClientId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CustomChannelsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccuPayload'
--
-- * 'ccuAdClientId'
customChannelsUpdate
    :: CustomChannel -- ^ 'ccuPayload'
    -> Text -- ^ 'ccuAdClientId'
    -> CustomChannelsUpdate
customChannelsUpdate pCcuPayload_ pCcuAdClientId_ =
  CustomChannelsUpdate'
    {_ccuPayload = pCcuPayload_, _ccuAdClientId = pCcuAdClientId_}

-- | Multipart request metadata.
ccuPayload :: Lens' CustomChannelsUpdate CustomChannel
ccuPayload
  = lens _ccuPayload (\ s a -> s{_ccuPayload = a})

-- | Ad client in which the custom channel will be updated.
ccuAdClientId :: Lens' CustomChannelsUpdate Text
ccuAdClientId
  = lens _ccuAdClientId
      (\ s a -> s{_ccuAdClientId = a})

instance GoogleRequest CustomChannelsUpdate where
        type Rs CustomChannelsUpdate = CustomChannel
        type Scopes CustomChannelsUpdate =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient CustomChannelsUpdate'{..}
          = go _ccuAdClientId (Just AltJSON) _ccuPayload
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomChannelsUpdateResource)
                      mempty
