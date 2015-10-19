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
-- Module      : Network.Google.Resource.YouTube.Comments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a reply to an existing comment. Note: To create a top-level
-- comment, use the commentThreads.insert method.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentsInsert@.
module Network.Google.Resource.YouTube.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertResource

    -- * Creating a Request
    , commentsInsert'
    , CommentsInsert'

    -- * Request Lenses
    , cPart
    , cPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentsInsert@ method which the
-- 'CommentsInsert'' request conforms to.
type CommentsInsertResource =
     "comments" :>
       QueryParam "part" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Comment :> Post '[JSON] Comment

-- | Creates a reply to an existing comment. Note: To create a top-level
-- comment, use the commentThreads.insert method.
--
-- /See:/ 'commentsInsert'' smart constructor.
data CommentsInsert' = CommentsInsert'
    { _cPart    :: !Text
    , _cPayload :: !Comment
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cPart'
--
-- * 'cPayload'
commentsInsert'
    :: Text -- ^ 'part'
    -> Comment -- ^ 'payload'
    -> CommentsInsert'
commentsInsert' pCPart_ pCPayload_ =
    CommentsInsert'
    { _cPart = pCPart_
    , _cPayload = pCPayload_
    }

-- | The part parameter identifies the properties that the API response will
-- include. Set the parameter value to snippet. The snippet part has a
-- quota cost of 2 units.
cPart :: Lens' CommentsInsert' Text
cPart = lens _cPart (\ s a -> s{_cPart = a})

-- | Multipart request metadata.
cPayload :: Lens' CommentsInsert' Comment
cPayload = lens _cPayload (\ s a -> s{_cPayload = a})

instance GoogleRequest CommentsInsert' where
        type Rs CommentsInsert' = Comment
        requestClient CommentsInsert'{..}
          = go (Just _cPart) (Just AltJSON) _cPayload
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy CommentsInsertResource)
                      mempty
