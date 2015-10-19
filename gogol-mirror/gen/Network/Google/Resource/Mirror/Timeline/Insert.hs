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
-- Module      : Network.Google.Resource.Mirror.Timeline.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new item into the timeline.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineInsert@.
module Network.Google.Resource.Mirror.Timeline.Insert
    (
    -- * REST Resource
      TimelineInsertResource

    -- * Creating a Request
    , timelineInsert'
    , TimelineInsert'

    -- * Request Lenses
    , tiPayload
    , tiMedia
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineInsert@ method which the
-- 'TimelineInsert'' request conforms to.
type TimelineInsertResource =
     "timeline" :>
       QueryParam "alt" AltJSON :>
         MultipartRelated '[JSON] TimelineItem Body :>
           Post '[JSON] TimelineItem

-- | Inserts a new item into the timeline.
--
-- /See:/ 'timelineInsert'' smart constructor.
data TimelineInsert' = TimelineInsert'
    { _tiPayload :: !TimelineItem
    , _tiMedia   :: !Body
    }

-- | Creates a value of 'TimelineInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiPayload'
--
-- * 'tiMedia'
timelineInsert'
    :: TimelineItem -- ^ 'payload'
    -> Body -- ^ 'media'
    -> TimelineInsert'
timelineInsert' pTiPayload_ pTiMedia_ =
    TimelineInsert'
    { _tiPayload = pTiPayload_
    , _tiMedia = pTiMedia_
    }

-- | Multipart request metadata.
tiPayload :: Lens' TimelineInsert' TimelineItem
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

tiMedia :: Lens' TimelineInsert' Body
tiMedia = lens _tiMedia (\ s a -> s{_tiMedia = a})

instance GoogleRequest TimelineInsert' where
        type Rs TimelineInsert' = TimelineItem
        requestClient TimelineInsert'{..}
          = go (Just AltJSON) _tiPayload _tiMedia mirrorService
          where go
                  = buildClient (Proxy :: Proxy TimelineInsertResource)
                      mempty
