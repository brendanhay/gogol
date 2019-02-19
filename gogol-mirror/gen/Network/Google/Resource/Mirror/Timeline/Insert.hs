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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new item into the timeline.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.insert@.
module Network.Google.Resource.Mirror.Timeline.Insert
    (
    -- * REST Resource
      TimelineInsertResource

    -- * Creating a Request
    , timelineInsert
    , TimelineInsert

    -- * Request Lenses
    , tiPayload
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @mirror.timeline.insert@ method which the
-- 'TimelineInsert' request conforms to.
type TimelineInsertResource =
     "mirror" :>
       "v1" :>
         "timeline" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] TimelineItem :>
               Post '[JSON] TimelineItem
       :<|>
       "upload" :>
         "mirror" :>
           "v1" :>
             "timeline" :>
               QueryParam "alt" AltJSON :>
                 QueryParam "uploadType" Multipart :>
                   MultipartRelated '[JSON] TimelineItem :>
                     Post '[JSON] TimelineItem

-- | Inserts a new item into the timeline.
--
-- /See:/ 'timelineInsert' smart constructor.
newtype TimelineInsert =
  TimelineInsert'
    { _tiPayload :: TimelineItem
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimelineInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiPayload'
timelineInsert
    :: TimelineItem -- ^ 'tiPayload'
    -> TimelineInsert
timelineInsert pTiPayload_ = TimelineInsert' {_tiPayload = pTiPayload_}


-- | Multipart request metadata.
tiPayload :: Lens' TimelineInsert TimelineItem
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

instance GoogleRequest TimelineInsert where
        type Rs TimelineInsert = TimelineItem
        type Scopes TimelineInsert =
             '["https://www.googleapis.com/auth/glass.location",
               "https://www.googleapis.com/auth/glass.timeline"]
        requestClient TimelineInsert'{..}
          = go (Just AltJSON) _tiPayload mirrorService
          where go :<|> _
                  = buildClient (Proxy :: Proxy TimelineInsertResource)
                      mempty

instance GoogleRequest (MediaUpload TimelineInsert)
         where
        type Rs (MediaUpload TimelineInsert) = TimelineItem
        type Scopes (MediaUpload TimelineInsert) =
             Scopes TimelineInsert
        requestClient (MediaUpload TimelineInsert'{..} body)
          = go (Just AltJSON) (Just Multipart) _tiPayload body
              mirrorService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy TimelineInsertResource)
                      mempty
