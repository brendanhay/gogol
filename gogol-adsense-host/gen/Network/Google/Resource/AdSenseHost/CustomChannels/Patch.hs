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
-- Module      : Network.Google.Resource.AdSenseHost.CustomChannels.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a custom channel in the host AdSense account. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostCustomChannelsPatch@.
module Network.Google.Resource.AdSenseHost.CustomChannels.Patch
    (
    -- * REST Resource
      CustomChannelsPatchResource

    -- * Creating a Request
    , customChannelsPatch'
    , CustomChannelsPatch'

    -- * Request Lenses
    , ccpCustomChannelId
    , ccpPayload
    , ccpAdClientId
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostCustomChannelsPatch@ method which the
-- 'CustomChannelsPatch'' request conforms to.
type CustomChannelsPatchResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           QueryParam "customChannelId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] CustomChannel :>
                 Patch '[JSON] CustomChannel

-- | Update a custom channel in the host AdSense account. This method
-- supports patch semantics.
--
-- /See:/ 'customChannelsPatch'' smart constructor.
data CustomChannelsPatch' = CustomChannelsPatch'
    { _ccpCustomChannelId :: !Text
    , _ccpPayload         :: !CustomChannel
    , _ccpAdClientId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpCustomChannelId'
--
-- * 'ccpPayload'
--
-- * 'ccpAdClientId'
customChannelsPatch'
    :: Text -- ^ 'customChannelId'
    -> CustomChannel -- ^ 'payload'
    -> Text -- ^ 'adClientId'
    -> CustomChannelsPatch'
customChannelsPatch' pCcpCustomChannelId_ pCcpPayload_ pCcpAdClientId_ =
    CustomChannelsPatch'
    { _ccpCustomChannelId = pCcpCustomChannelId_
    , _ccpPayload = pCcpPayload_
    , _ccpAdClientId = pCcpAdClientId_
    }

-- | Custom channel to get.
ccpCustomChannelId :: Lens' CustomChannelsPatch' Text
ccpCustomChannelId
  = lens _ccpCustomChannelId
      (\ s a -> s{_ccpCustomChannelId = a})

-- | Multipart request metadata.
ccpPayload :: Lens' CustomChannelsPatch' CustomChannel
ccpPayload
  = lens _ccpPayload (\ s a -> s{_ccpPayload = a})

-- | Ad client in which the custom channel will be updated.
ccpAdClientId :: Lens' CustomChannelsPatch' Text
ccpAdClientId
  = lens _ccpAdClientId
      (\ s a -> s{_ccpAdClientId = a})

instance GoogleRequest CustomChannelsPatch' where
        type Rs CustomChannelsPatch' = CustomChannel
        requestClient CustomChannelsPatch'{..}
          = go _ccpAdClientId (Just _ccpCustomChannelId)
              (Just AltJSON)
              _ccpPayload
              adSenseHost
          where go
                  = buildClient
                      (Proxy :: Proxy CustomChannelsPatchResource)
                      mempty
