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
-- Module      : Network.Google.Resource.YouTube.Comments.MarkAsSpam
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Expresses the caller\'s opinion that one or more comments should be
-- flagged as spam.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.comments.markAsSpam@.
module Network.Google.Resource.YouTube.Comments.MarkAsSpam
    (
    -- * REST Resource
      CommentsMarkAsSpamResource

    -- * Creating a Request
    , commentsMarkAsSpam
    , CommentsMarkAsSpam

    -- * Request Lenses
    , cmasId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.comments.markAsSpam@ method which the
-- 'CommentsMarkAsSpam' request conforms to.
type CommentsMarkAsSpamResource =
     "comments" :>
       "markAsSpam" :>
         QueryParam "id" Text :>
           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Expresses the caller\'s opinion that one or more comments should be
-- flagged as spam.
--
-- /See:/ 'commentsMarkAsSpam' smart constructor.
newtype CommentsMarkAsSpam = CommentsMarkAsSpam
    { _cmasId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsMarkAsSpam' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmasId'
commentsMarkAsSpam
    :: Text -- ^ 'cmasId'
    -> CommentsMarkAsSpam
commentsMarkAsSpam pCmasId_ =
    CommentsMarkAsSpam
    { _cmasId = pCmasId_
    }

-- | The id parameter specifies a comma-separated list of IDs of comments
-- that the caller believes should be classified as spam.
cmasId :: Lens' CommentsMarkAsSpam Text
cmasId = lens _cmasId (\ s a -> s{_cmasId = a})

instance GoogleRequest CommentsMarkAsSpam where
        type Rs CommentsMarkAsSpam = ()
        requestClient CommentsMarkAsSpam{..}
          = go (Just _cmasId) (Just AltJSON) youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsMarkAsSpamResource)
                      mempty
