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
-- Module      : Network.Google.Resource.Mirror.Timeline.Attachments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a new attachment to a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineAttachmentsInsert@.
module Network.Google.Resource.Mirror.Timeline.Attachments.Insert
    (
    -- * REST Resource
      TimelineAttachmentsInsertResource

    -- * Creating a Request
    , timelineAttachmentsInsert'
    , TimelineAttachmentsInsert'

    -- * Request Lenses
    , taiItemId
    , taiMedia
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineAttachmentsInsert@ method which the
-- 'TimelineAttachmentsInsert'' request conforms to.
type TimelineAttachmentsInsertResource =
     "timeline" :>
       Capture "itemId" Text :>
         "attachments" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[OctetStream] Body :>
               Post '[JSON] Attachment

-- | Adds a new attachment to a timeline item.
--
-- /See:/ 'timelineAttachmentsInsert'' smart constructor.
data TimelineAttachmentsInsert' = TimelineAttachmentsInsert'
    { _taiItemId :: !Text
    , _taiMedia  :: !Body
    }

-- | Creates a value of 'TimelineAttachmentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'taiItemId'
--
-- * 'taiMedia'
timelineAttachmentsInsert'
    :: Text -- ^ 'itemId'
    -> Body -- ^ 'media'
    -> TimelineAttachmentsInsert'
timelineAttachmentsInsert' pTaiItemId_ pTaiMedia_ =
    TimelineAttachmentsInsert'
    { _taiItemId = pTaiItemId_
    , _taiMedia = pTaiMedia_
    }

-- | The ID of the timeline item the attachment belongs to.
taiItemId :: Lens' TimelineAttachmentsInsert' Text
taiItemId
  = lens _taiItemId (\ s a -> s{_taiItemId = a})

taiMedia :: Lens' TimelineAttachmentsInsert' Body
taiMedia = lens _taiMedia (\ s a -> s{_taiMedia = a})

instance GoogleRequest TimelineAttachmentsInsert'
         where
        type Rs TimelineAttachmentsInsert' = Attachment
        requestClient TimelineAttachmentsInsert'{..}
          = go _taiItemId (Just AltJSON) _taiMedia
              mirrorService
          where go
                  = buildClient
                      (Proxy :: Proxy TimelineAttachmentsInsertResource)
                      mempty
