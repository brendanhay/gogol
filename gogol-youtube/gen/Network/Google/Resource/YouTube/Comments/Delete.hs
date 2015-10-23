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
-- Module      : Network.Google.Resource.YouTube.Comments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a comment.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.comments.delete@.
module Network.Google.Resource.YouTube.Comments.Delete
    (
    -- * REST Resource
      CommentsDeleteResource

    -- * Creating a Request
    , commentsDelete
    , CommentsDelete

    -- * Request Lenses
    , cdId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.comments.delete@ method which the
-- 'CommentsDelete' request conforms to.
type CommentsDeleteResource =
     "youtube" :>
       "v3" :>
         "comments" :>
           QueryParam "id" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a comment.
--
-- /See:/ 'commentsDelete' smart constructor.
newtype CommentsDelete = CommentsDelete
    { _cdId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdId'
commentsDelete
    :: Text -- ^ 'cdId'
    -> CommentsDelete
commentsDelete pCdId_ =
    CommentsDelete
    { _cdId = pCdId_
    }

-- | The id parameter specifies the comment ID for the resource that is being
-- deleted.
cdId :: Lens' CommentsDelete Text
cdId = lens _cdId (\ s a -> s{_cdId = a})

instance GoogleRequest CommentsDelete where
        type Rs CommentsDelete = ()
        requestClient CommentsDelete{..}
          = go (Just _cdId) (Just AltJSON) youTubeService
          where go
                  = buildClient (Proxy :: Proxy CommentsDeleteResource)
                      mempty
