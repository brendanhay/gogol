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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a timeline item in place.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.update@.
module Network.Google.Resource.Mirror.Timeline.Update
    (
    -- * REST Resource
      TimelineUpdateResource

    -- * Creating a Request
    , timelineUpdate
    , TimelineUpdate

    -- * Request Lenses
    , tuPayload
    , tuId
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @mirror.timeline.update@ method which the
-- 'TimelineUpdate' request conforms to.
type TimelineUpdateResource =
     "mirror" :>
       "v1" :>
         "timeline" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] TimelineItem :>
                 Put '[JSON] TimelineItem
       :<|>
       "upload" :>
         "mirror" :>
           "v1" :>
             "timeline" :>
               Capture "id" Text :>
                 QueryParam "alt" AltJSON :>
                   QueryParam "uploadType" Multipart :>
                     MultipartRelated '[JSON] TimelineItem :>
                       Put '[JSON] TimelineItem

-- | Updates a timeline item in place.
--
-- /See:/ 'timelineUpdate' smart constructor.
data TimelineUpdate = TimelineUpdate'
    { _tuPayload :: !TimelineItem
    , _tuId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuPayload'
--
-- * 'tuId'
timelineUpdate
    :: TimelineItem -- ^ 'tuPayload'
    -> Text -- ^ 'tuId'
    -> TimelineUpdate
timelineUpdate pTuPayload_ pTuId_ =
    TimelineUpdate'
    { _tuPayload = pTuPayload_
    , _tuId = pTuId_
    }

-- | Multipart request metadata.
tuPayload :: Lens' TimelineUpdate TimelineItem
tuPayload
  = lens _tuPayload (\ s a -> s{_tuPayload = a})

-- | The ID of the timeline item.
tuId :: Lens' TimelineUpdate Text
tuId = lens _tuId (\ s a -> s{_tuId = a})

instance GoogleRequest TimelineUpdate where
        type Rs TimelineUpdate = TimelineItem
        type Scopes TimelineUpdate =
             '["https://www.googleapis.com/auth/glass.location",
               "https://www.googleapis.com/auth/glass.timeline"]
        requestClient TimelineUpdate'{..}
          = go _tuId (Just AltJSON) _tuPayload mirrorService
          where go :<|> _
                  = buildClient (Proxy :: Proxy TimelineUpdateResource)
                      mempty

instance GoogleRequest (MediaUpload TimelineUpdate)
         where
        type Rs (MediaUpload TimelineUpdate) = TimelineItem
        type Scopes (MediaUpload TimelineUpdate) =
             Scopes TimelineUpdate
        requestClient (MediaUpload TimelineUpdate'{..} body)
          = go _tuId (Just AltJSON) (Just Multipart) _tuPayload
              body
              mirrorService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy TimelineUpdateResource)
                      mempty
