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
-- Module      : Network.Google.Resource.Mirror.Timeline.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.timeline.delete@.
module Network.Google.Resource.Mirror.Timeline.Delete
    (
    -- * REST Resource
      TimelineDeleteResource

    -- * Creating a Request
    , timelineDelete
    , TimelineDelete

    -- * Request Lenses
    , tdId
    ) where

import Network.Google.Mirror.Types
import Network.Google.Prelude

-- | A resource alias for @mirror.timeline.delete@ method which the
-- 'TimelineDelete' request conforms to.
type TimelineDeleteResource =
     "mirror" :>
       "v1" :>
         "timeline" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a timeline item.
--
-- /See:/ 'timelineDelete' smart constructor.
newtype TimelineDelete =
  TimelineDelete'
    { _tdId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimelineDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdId'
timelineDelete
    :: Text -- ^ 'tdId'
    -> TimelineDelete
timelineDelete pTdId_ = TimelineDelete' {_tdId = pTdId_}


-- | The ID of the timeline item.
tdId :: Lens' TimelineDelete Text
tdId = lens _tdId (\ s a -> s{_tdId = a})

instance GoogleRequest TimelineDelete where
        type Rs TimelineDelete = ()
        type Scopes TimelineDelete =
             '["https://www.googleapis.com/auth/glass.location",
               "https://www.googleapis.com/auth/glass.timeline"]
        requestClient TimelineDelete'{..}
          = go _tdId (Just AltJSON) mirrorService
          where go
                  = buildClient (Proxy :: Proxy TimelineDeleteResource)
                      mempty
