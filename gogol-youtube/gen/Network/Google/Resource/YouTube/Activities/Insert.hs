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
-- Module      : Network.Google.Resource.YouTube.Activities.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Posts a bulletin for a specific channel. (The user submitting the
-- request must be authorized to act on the channel\'s behalf.) Note: Even
-- though an activity resource can contain information about actions like a
-- user rating a video or marking a video as a favorite, you need to use
-- other API methods to generate those activity resources. For example, you
-- would use the API\'s videos.rate() method to rate a video and the
-- playlistItems.insert() method to mark a video as a favorite.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.activities.insert@.
module Network.Google.Resource.YouTube.Activities.Insert
    (
    -- * REST Resource
      ActivitiesInsertResource

    -- * Creating a Request
    , activitiesInsert'
    , ActivitiesInsert'

    -- * Request Lenses
    , aiPart
    , aiPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.activities.insert@ method which the
-- 'ActivitiesInsert'' request conforms to.
type ActivitiesInsertResource =
     "activities" :>
       QueryParam "part" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Activity :> Post '[JSON] Activity

-- | Posts a bulletin for a specific channel. (The user submitting the
-- request must be authorized to act on the channel\'s behalf.) Note: Even
-- though an activity resource can contain information about actions like a
-- user rating a video or marking a video as a favorite, you need to use
-- other API methods to generate those activity resources. For example, you
-- would use the API\'s videos.rate() method to rate a video and the
-- playlistItems.insert() method to mark a video as a favorite.
--
-- /See:/ 'activitiesInsert'' smart constructor.
data ActivitiesInsert' = ActivitiesInsert'
    { _aiPart    :: !Text
    , _aiPayload :: !Activity
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiPart'
--
-- * 'aiPayload'
activitiesInsert'
    :: Text -- ^ 'aiPart'
    -> Activity -- ^ 'aiPayload'
    -> ActivitiesInsert'
activitiesInsert' pAiPart_ pAiPayload_ =
    ActivitiesInsert'
    { _aiPart = pAiPart_
    , _aiPayload = pAiPayload_
    }

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include.
aiPart :: Lens' ActivitiesInsert' Text
aiPart = lens _aiPart (\ s a -> s{_aiPart = a})

-- | Multipart request metadata.
aiPayload :: Lens' ActivitiesInsert' Activity
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

instance GoogleRequest ActivitiesInsert' where
        type Rs ActivitiesInsert' = Activity
        requestClient ActivitiesInsert'{..}
          = go (Just _aiPart) (Just AltJSON) _aiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ActivitiesInsertResource)
                      mempty
