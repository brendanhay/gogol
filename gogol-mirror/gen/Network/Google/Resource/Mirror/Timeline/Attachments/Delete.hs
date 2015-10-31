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
-- Module      : Network.Google.Resource.Mirror.Timeline.Attachments.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an attachment from a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.attachments.delete@.
module Network.Google.Resource.Mirror.Timeline.Attachments.Delete
    (
    -- * REST Resource
      TimelineAttachmentsDeleteResource

    -- * Creating a Request
    , timelineAttachmentsDelete
    , TimelineAttachmentsDelete

    -- * Request Lenses
    , tadItemId
    , tadAttachmentId
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @mirror.timeline.attachments.delete@ method which the
-- 'TimelineAttachmentsDelete' request conforms to.
type TimelineAttachmentsDeleteResource =
     "mirror" :>
       "v1" :>
         "timeline" :>
           Capture "itemId" Text :>
             "attachments" :>
               Capture "attachmentId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an attachment from a timeline item.
--
-- /See:/ 'timelineAttachmentsDelete' smart constructor.
data TimelineAttachmentsDelete = TimelineAttachmentsDelete
    { _tadItemId       :: !Text
    , _tadAttachmentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineAttachmentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tadItemId'
--
-- * 'tadAttachmentId'
timelineAttachmentsDelete
    :: Text -- ^ 'tadItemId'
    -> Text -- ^ 'tadAttachmentId'
    -> TimelineAttachmentsDelete
timelineAttachmentsDelete pTadItemId_ pTadAttachmentId_ =
    TimelineAttachmentsDelete
    { _tadItemId = pTadItemId_
    , _tadAttachmentId = pTadAttachmentId_
    }

-- | The ID of the timeline item the attachment belongs to.
tadItemId :: Lens' TimelineAttachmentsDelete Text
tadItemId
  = lens _tadItemId (\ s a -> s{_tadItemId = a})

-- | The ID of the attachment.
tadAttachmentId :: Lens' TimelineAttachmentsDelete Text
tadAttachmentId
  = lens _tadAttachmentId
      (\ s a -> s{_tadAttachmentId = a})

instance GoogleRequest TimelineAttachmentsDelete
         where
        type Rs TimelineAttachmentsDelete = ()
        type Scopes TimelineAttachmentsDelete =
             '["https://www.googleapis.com/auth/glass.timeline"]
        requestClient TimelineAttachmentsDelete{..}
          = go _tadItemId _tadAttachmentId (Just AltJSON)
              mirrorService
          where go
                  = buildClient
                      (Proxy :: Proxy TimelineAttachmentsDeleteResource)
                      mempty
