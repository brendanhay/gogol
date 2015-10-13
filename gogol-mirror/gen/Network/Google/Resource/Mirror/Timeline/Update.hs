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
-- Module      : Network.Google.Resource.Mirror.Timeline.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a timeline item in place.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineUpdate@.
module Network.Google.Resource.Mirror.Timeline.Update
    (
    -- * REST Resource
      TimelineUpdateResource

    -- * Creating a Request
    , timelineUpdate'
    , TimelineUpdate'

    -- * Request Lenses
    , tuPayload
    , tuMedia
    , tuId
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineUpdate@ method which the
-- 'TimelineUpdate'' request conforms to.
type TimelineUpdateResource =
     "timeline" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :>
           MultipartRelated '[JSON] TimelineItem Stream :>
             Put '[JSON] TimelineItem

-- | Updates a timeline item in place.
--
-- /See:/ 'timelineUpdate'' smart constructor.
data TimelineUpdate' = TimelineUpdate'
    { _tuPayload :: !TimelineItem
    , _tuMedia   :: !Stream
    , _tuId      :: !Text
    }

-- | Creates a value of 'TimelineUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuPayload'
--
-- * 'tuMedia'
--
-- * 'tuId'
timelineUpdate'
    :: TimelineItem -- ^ 'payload'
    -> Stream -- ^ 'media'
    -> Text -- ^ 'id'
    -> TimelineUpdate'
timelineUpdate' pTuPayload_ pTuMedia_ pTuId_ =
    TimelineUpdate'
    { _tuPayload = pTuPayload_
    , _tuMedia = pTuMedia_
    , _tuId = pTuId_
    }

-- | Multipart request metadata.
tuPayload :: Lens' TimelineUpdate' TimelineItem
tuPayload
  = lens _tuPayload (\ s a -> s{_tuPayload = a})

tuMedia :: Lens' TimelineUpdate' Stream
tuMedia = lens _tuMedia (\ s a -> s{_tuMedia = a})

-- | The ID of the timeline item.
tuId :: Lens' TimelineUpdate' Text
tuId = lens _tuId (\ s a -> s{_tuId = a})

instance GoogleRequest TimelineUpdate' where
        type Rs TimelineUpdate' = TimelineItem
        requestClient TimelineUpdate'{..}
          = go _tuId (Just AltJSON) _tuPayload _tuMedia
              mirrorService
          where go
                  = buildClient (Proxy :: Proxy TimelineUpdateResource)
                      mempty
