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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a reply to an existing comment. Note: To create a top-level
-- comment, use the commentThreads.insert method.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.comments.insert@.
module Network.Google.Resource.YouTube.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertResource

    -- * Creating a Request
    , commentsInsert
    , CommentsInsert

    -- * Request Lenses
    , comPart
    , comPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.comments.insert@ method which the
-- 'CommentsInsert' request conforms to.
type CommentsInsertResource =
     "youtube" :>
       "v3" :>
         "comments" :>
           QueryParam "part" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Comment :> Post '[JSON] Comment

-- | Creates a reply to an existing comment. Note: To create a top-level
-- comment, use the commentThreads.insert method.
--
-- /See:/ 'commentsInsert' smart constructor.
data CommentsInsert =
  CommentsInsert'
    { _comPart    :: !Text
    , _comPayload :: !Comment
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comPart'
--
-- * 'comPayload'
commentsInsert
    :: Text -- ^ 'comPart'
    -> Comment -- ^ 'comPayload'
    -> CommentsInsert
commentsInsert pComPart_ pComPayload_ =
  CommentsInsert' {_comPart = pComPart_, _comPayload = pComPayload_}


-- | The part parameter identifies the properties that the API response will
-- include. Set the parameter value to snippet. The snippet part has a
-- quota cost of 2 units.
comPart :: Lens' CommentsInsert Text
comPart = lens _comPart (\ s a -> s{_comPart = a})

-- | Multipart request metadata.
comPayload :: Lens' CommentsInsert Comment
comPayload
  = lens _comPayload (\ s a -> s{_comPayload = a})

instance GoogleRequest CommentsInsert where
        type Rs CommentsInsert = Comment
        type Scopes CommentsInsert =
             '["https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient CommentsInsert'{..}
          = go (Just _comPart) (Just AltJSON) _comPayload
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy CommentsInsertResource)
                      mempty
