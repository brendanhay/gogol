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
-- Module      : Network.Google.Resource.Mirror.Timeline.Attachments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of attachments for a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.attachments.list@.
module Network.Google.Resource.Mirror.Timeline.Attachments.List
    (
    -- * REST Resource
      TimelineAttachmentsListResource

    -- * Creating a Request
    , timelineAttachmentsList
    , TimelineAttachmentsList

    -- * Request Lenses
    , talItemId
    ) where

import Network.Google.Mirror.Types
import Network.Google.Prelude

-- | A resource alias for @mirror.timeline.attachments.list@ method which the
-- 'TimelineAttachmentsList' request conforms to.
type TimelineAttachmentsListResource =
     "mirror" :>
       "v1" :>
         "timeline" :>
           Capture "itemId" Text :>
             "attachments" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] AttachmentsListResponse

-- | Returns a list of attachments for a timeline item.
--
-- /See:/ 'timelineAttachmentsList' smart constructor.
newtype TimelineAttachmentsList =
  TimelineAttachmentsList'
    { _talItemId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimelineAttachmentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'talItemId'
timelineAttachmentsList
    :: Text -- ^ 'talItemId'
    -> TimelineAttachmentsList
timelineAttachmentsList pTalItemId_ =
  TimelineAttachmentsList' {_talItemId = pTalItemId_}


-- | The ID of the timeline item whose attachments should be listed.
talItemId :: Lens' TimelineAttachmentsList Text
talItemId
  = lens _talItemId (\ s a -> s{_talItemId = a})

instance GoogleRequest TimelineAttachmentsList where
        type Rs TimelineAttachmentsList =
             AttachmentsListResponse
        type Scopes TimelineAttachmentsList =
             '["https://www.googleapis.com/auth/glass.timeline"]
        requestClient TimelineAttachmentsList'{..}
          = go _talItemId (Just AltJSON) mirrorService
          where go
                  = buildClient
                      (Proxy :: Proxy TimelineAttachmentsListResource)
                      mempty
