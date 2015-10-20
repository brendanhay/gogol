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
-- Module      : Network.Google.Resource.YouTube.Comments.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a comment.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.comments.update@.
module Network.Google.Resource.YouTube.Comments.Update
    (
    -- * REST Resource
      CommentsUpdateResource

    -- * Creating a Request
    , commentsUpdate
    , CommentsUpdate

    -- * Request Lenses
    , cuPart
    , cuPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.comments.update@ method which the
-- 'CommentsUpdate' request conforms to.
type CommentsUpdateResource =
     "comments" :>
       QueryParam "part" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Comment :> Put '[JSON] Comment

-- | Modifies a comment.
--
-- /See:/ 'commentsUpdate' smart constructor.
data CommentsUpdate = CommentsUpdate
    { _cuPart    :: !Text
    , _cuPayload :: !Comment
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuPart'
--
-- * 'cuPayload'
commentsUpdate
    :: Text -- ^ 'cuPart'
    -> Comment -- ^ 'cuPayload'
    -> CommentsUpdate
commentsUpdate pCuPart_ pCuPayload_ =
    CommentsUpdate
    { _cuPart = pCuPart_
    , _cuPayload = pCuPayload_
    }

-- | The part parameter identifies the properties that the API response will
-- include. You must at least include the snippet part in the parameter
-- value since that part contains all of the properties that the API
-- request can update.
cuPart :: Lens' CommentsUpdate Text
cuPart = lens _cuPart (\ s a -> s{_cuPart = a})

-- | Multipart request metadata.
cuPayload :: Lens' CommentsUpdate Comment
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

instance GoogleRequest CommentsUpdate where
        type Rs CommentsUpdate = Comment
        requestClient CommentsUpdate{..}
          = go (Just _cuPart) (Just AltJSON) _cuPayload
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy CommentsUpdateResource)
                      mempty
