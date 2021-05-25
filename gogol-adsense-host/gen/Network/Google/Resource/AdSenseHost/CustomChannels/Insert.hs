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
-- Module      : Network.Google.Resource.AdSenseHost.CustomChannels.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a new custom channel to the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.customchannels.insert@.
module Network.Google.Resource.AdSenseHost.CustomChannels.Insert
    (
    -- * REST Resource
      CustomChannelsInsertResource

    -- * Creating a Request
    , customChannelsInsert
    , CustomChannelsInsert

    -- * Request Lenses
    , cciPayload
    , cciAdClientId
    ) where

import Network.Google.AdSenseHost.Types
import Network.Google.Prelude

-- | A resource alias for @adsensehost.customchannels.insert@ method which the
-- 'CustomChannelsInsert' request conforms to.
type CustomChannelsInsertResource =
     "adsensehost" :>
       "v4.1" :>
         "adclients" :>
           Capture "adClientId" Text :>
             "customchannels" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] CustomChannel :>
                   Post '[JSON] CustomChannel

-- | Add a new custom channel to the host AdSense account.
--
-- /See:/ 'customChannelsInsert' smart constructor.
data CustomChannelsInsert =
  CustomChannelsInsert'
    { _cciPayload :: !CustomChannel
    , _cciAdClientId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomChannelsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cciPayload'
--
-- * 'cciAdClientId'
customChannelsInsert
    :: CustomChannel -- ^ 'cciPayload'
    -> Text -- ^ 'cciAdClientId'
    -> CustomChannelsInsert
customChannelsInsert pCciPayload_ pCciAdClientId_ =
  CustomChannelsInsert'
    {_cciPayload = pCciPayload_, _cciAdClientId = pCciAdClientId_}


-- | Multipart request metadata.
cciPayload :: Lens' CustomChannelsInsert CustomChannel
cciPayload
  = lens _cciPayload (\ s a -> s{_cciPayload = a})

-- | Ad client to which the new custom channel will be added.
cciAdClientId :: Lens' CustomChannelsInsert Text
cciAdClientId
  = lens _cciAdClientId
      (\ s a -> s{_cciAdClientId = a})

instance GoogleRequest CustomChannelsInsert where
        type Rs CustomChannelsInsert = CustomChannel
        type Scopes CustomChannelsInsert =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient CustomChannelsInsert'{..}
          = go _cciAdClientId (Just AltJSON) _cciPayload
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomChannelsInsertResource)
                      mempty
