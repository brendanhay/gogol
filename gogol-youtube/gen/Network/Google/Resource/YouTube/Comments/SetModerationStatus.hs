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
-- Module      : Network.Google.Resource.YouTube.Comments.SetModerationStatus
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the moderation status of one or more comments. The API request must
-- be authorized by the owner of the channel or video associated with the
-- comments.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.comments.setModerationStatus@.
module Network.Google.Resource.YouTube.Comments.SetModerationStatus
    (
    -- * REST Resource
      CommentsSetModerationStatusResource

    -- * Creating a Request
    , commentsSetModerationStatus
    , CommentsSetModerationStatus

    -- * Request Lenses
    , csmsBanAuthor
    , csmsModerationStatus
    , csmsId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.comments.setModerationStatus@ method which the
-- 'CommentsSetModerationStatus' request conforms to.
type CommentsSetModerationStatusResource =
     "youtube" :>
       "v3" :>
         "comments" :>
           "setModerationStatus" :>
             QueryParam "id" Text :>
               QueryParam "moderationStatus"
                 CommentsSetModerationStatusModerationStatus
                 :>
                 QueryParam "banAuthor" Bool :>
                   QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Sets the moderation status of one or more comments. The API request must
-- be authorized by the owner of the channel or video associated with the
-- comments.
--
-- /See:/ 'commentsSetModerationStatus' smart constructor.
data CommentsSetModerationStatus =
  CommentsSetModerationStatus'
    { _csmsBanAuthor        :: !Bool
    , _csmsModerationStatus :: !CommentsSetModerationStatusModerationStatus
    , _csmsId               :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CommentsSetModerationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csmsBanAuthor'
--
-- * 'csmsModerationStatus'
--
-- * 'csmsId'
commentsSetModerationStatus
    :: CommentsSetModerationStatusModerationStatus -- ^ 'csmsModerationStatus'
    -> Text -- ^ 'csmsId'
    -> CommentsSetModerationStatus
commentsSetModerationStatus pCsmsModerationStatus_ pCsmsId_ =
  CommentsSetModerationStatus'
    { _csmsBanAuthor = False
    , _csmsModerationStatus = pCsmsModerationStatus_
    , _csmsId = pCsmsId_
    }

-- | The banAuthor parameter lets you indicate that you want to automatically
-- reject any additional comments written by the comment\'s author. Set the
-- parameter value to true to ban the author. Note: This parameter is only
-- valid if the moderationStatus parameter is also set to rejected.
csmsBanAuthor :: Lens' CommentsSetModerationStatus Bool
csmsBanAuthor
  = lens _csmsBanAuthor
      (\ s a -> s{_csmsBanAuthor = a})

-- | Identifies the new moderation status of the specified comments.
csmsModerationStatus :: Lens' CommentsSetModerationStatus CommentsSetModerationStatusModerationStatus
csmsModerationStatus
  = lens _csmsModerationStatus
      (\ s a -> s{_csmsModerationStatus = a})

-- | The id parameter specifies a comma-separated list of IDs that identify
-- the comments for which you are updating the moderation status.
csmsId :: Lens' CommentsSetModerationStatus Text
csmsId = lens _csmsId (\ s a -> s{_csmsId = a})

instance GoogleRequest CommentsSetModerationStatus
         where
        type Rs CommentsSetModerationStatus = ()
        type Scopes CommentsSetModerationStatus =
             '["https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient CommentsSetModerationStatus'{..}
          = go (Just _csmsId) (Just _csmsModerationStatus)
              (Just _csmsBanAuthor)
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsSetModerationStatusResource)
                      mempty
