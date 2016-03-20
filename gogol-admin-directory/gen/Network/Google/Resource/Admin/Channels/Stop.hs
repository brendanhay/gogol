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
-- Module      : Network.Google.Resource.Admin.Channels.Stop
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stop watching resources through this channel
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @admin.channels.stop@.
module Network.Google.Resource.Admin.Channels.Stop
    (
    -- * REST Resource
      ChannelsStopResource

    -- * Creating a Request
    , channelsStop
    , ChannelsStop

    -- * Request Lenses
    , csPayload
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @admin.channels.stop@ method which the
-- 'ChannelsStop' request conforms to.
type ChannelsStopResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "admin" :>
             "directory_v1" :>
               "channels" :>
                 "stop" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Channel :> Post '[JSON] ()

-- | Stop watching resources through this channel
--
-- /See:/ 'channelsStop' smart constructor.
newtype ChannelsStop = ChannelsStop
    { _csPayload :: Channel
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelsStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csPayload'
channelsStop
    :: Channel -- ^ 'csPayload'
    -> ChannelsStop
channelsStop pCsPayload_ =
    ChannelsStop
    { _csPayload = pCsPayload_
    }

-- | Multipart request metadata.
csPayload :: Lens' ChannelsStop Channel
csPayload
  = lens _csPayload (\ s a -> s{_csPayload = a})

instance GoogleRequest ChannelsStop where
        type Rs ChannelsStop = ()
        requestClient ChannelsStop{..}
          = go (Just AltJSON) _csPayload directoryService
          where go
                  = buildClient (Proxy :: Proxy ChannelsStopResource)
                      mempty
