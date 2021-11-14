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
-- Module      : Network.Google.Resource.Mirror.Timeline.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a timeline item in place. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.patch@.
module Network.Google.Resource.Mirror.Timeline.Patch
    (
    -- * REST Resource
      TimelinePatchResource

    -- * Creating a Request
    , timelinePatch
    , TimelinePatch

    -- * Request Lenses
    , tpPayload
    , tpId
    ) where

import Network.Google.Mirror.Types
import Network.Google.Prelude

-- | A resource alias for @mirror.timeline.patch@ method which the
-- 'TimelinePatch' request conforms to.
type TimelinePatchResource =
     "mirror" :>
       "v1" :>
         "timeline" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] TimelineItem :>
                 Patch '[JSON] TimelineItem

-- | Updates a timeline item in place. This method supports patch semantics.
--
-- /See:/ 'timelinePatch' smart constructor.
data TimelinePatch =
  TimelinePatch'
    { _tpPayload :: !TimelineItem
    , _tpId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimelinePatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpPayload'
--
-- * 'tpId'
timelinePatch
    :: TimelineItem -- ^ 'tpPayload'
    -> Text -- ^ 'tpId'
    -> TimelinePatch
timelinePatch pTpPayload_ pTpId_ =
  TimelinePatch' {_tpPayload = pTpPayload_, _tpId = pTpId_}


-- | Multipart request metadata.
tpPayload :: Lens' TimelinePatch TimelineItem
tpPayload
  = lens _tpPayload (\ s a -> s{_tpPayload = a})

-- | The ID of the timeline item.
tpId :: Lens' TimelinePatch Text
tpId = lens _tpId (\ s a -> s{_tpId = a})

instance GoogleRequest TimelinePatch where
        type Rs TimelinePatch = TimelineItem
        type Scopes TimelinePatch =
             '["https://www.googleapis.com/auth/glass.location",
               "https://www.googleapis.com/auth/glass.timeline"]
        requestClient TimelinePatch'{..}
          = go _tpId (Just AltJSON) _tpPayload mirrorService
          where go
                  = buildClient (Proxy :: Proxy TimelinePatchResource)
                      mempty
