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
-- Module      : Network.Google.Resource.Mirror.Timeline.Attachments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an attachment on a timeline item by item ID and attachment ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.attachments.get@.
module Network.Google.Resource.Mirror.Timeline.Attachments.Get
    (
    -- * REST Resource
      TimelineAttachmentsGetResource

    -- * Creating a Request
    , timelineAttachmentsGet
    , TimelineAttachmentsGet

    -- * Request Lenses
    , tagItemId
    , tagAttachmentId
    ) where

import Network.Google.Mirror.Types
import Network.Google.Prelude

-- | A resource alias for @mirror.timeline.attachments.get@ method which the
-- 'TimelineAttachmentsGet' request conforms to.
type TimelineAttachmentsGetResource =
     "mirror" :>
       "v1" :>
         "timeline" :>
           Capture "itemId" Text :>
             "attachments" :>
               Capture "attachmentId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Attachment
       :<|>
       "mirror" :>
         "v1" :>
           "timeline" :>
             Capture "itemId" Text :>
               "attachments" :>
                 Capture "attachmentId" Text :>
                   QueryParam "alt" AltMedia :>
                     Get '[OctetStream] Stream

-- | Retrieves an attachment on a timeline item by item ID and attachment ID.
--
-- /See:/ 'timelineAttachmentsGet' smart constructor.
data TimelineAttachmentsGet =
  TimelineAttachmentsGet'
    { _tagItemId :: !Text
    , _tagAttachmentId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimelineAttachmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tagItemId'
--
-- * 'tagAttachmentId'
timelineAttachmentsGet
    :: Text -- ^ 'tagItemId'
    -> Text -- ^ 'tagAttachmentId'
    -> TimelineAttachmentsGet
timelineAttachmentsGet pTagItemId_ pTagAttachmentId_ =
  TimelineAttachmentsGet'
    {_tagItemId = pTagItemId_, _tagAttachmentId = pTagAttachmentId_}


-- | The ID of the timeline item the attachment belongs to.
tagItemId :: Lens' TimelineAttachmentsGet Text
tagItemId
  = lens _tagItemId (\ s a -> s{_tagItemId = a})

-- | The ID of the attachment.
tagAttachmentId :: Lens' TimelineAttachmentsGet Text
tagAttachmentId
  = lens _tagAttachmentId
      (\ s a -> s{_tagAttachmentId = a})

instance GoogleRequest TimelineAttachmentsGet where
        type Rs TimelineAttachmentsGet = Attachment
        type Scopes TimelineAttachmentsGet =
             '["https://www.googleapis.com/auth/glass.timeline"]
        requestClient TimelineAttachmentsGet'{..}
          = go _tagItemId _tagAttachmentId (Just AltJSON)
              mirrorService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy TimelineAttachmentsGetResource)
                      mempty

instance GoogleRequest
           (MediaDownload TimelineAttachmentsGet)
         where
        type Rs (MediaDownload TimelineAttachmentsGet) =
             Stream
        type Scopes (MediaDownload TimelineAttachmentsGet) =
             Scopes TimelineAttachmentsGet
        requestClient
          (MediaDownload TimelineAttachmentsGet'{..})
          = go _tagItemId _tagAttachmentId (Just AltMedia)
              mirrorService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy TimelineAttachmentsGetResource)
                      mempty
