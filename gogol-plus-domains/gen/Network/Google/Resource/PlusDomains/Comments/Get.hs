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
-- Module      : Network.Google.Resource.PlusDomains.Comments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more
-- details.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.comments.get@.
module Network.Google.Resource.PlusDomains.Comments.Get
    (
    -- * REST Resource
      CommentsGetResource

    -- * Creating a Request
    , commentsGet
    , CommentsGet

    -- * Request Lenses
    , cgCommentId
    ) where

import Network.Google.PlusDomains.Types
import Network.Google.Prelude

-- | A resource alias for @plusDomains.comments.get@ method which the
-- 'CommentsGet' request conforms to.
type CommentsGetResource =
     "plusDomains" :>
       "v1" :>
         "comments" :>
           Capture "commentId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Comment

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more
-- details.
--
-- /See:/ 'commentsGet' smart constructor.
newtype CommentsGet =
  CommentsGet'
    { _cgCommentId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgCommentId'
commentsGet
    :: Text -- ^ 'cgCommentId'
    -> CommentsGet
commentsGet pCgCommentId_ = CommentsGet' {_cgCommentId = pCgCommentId_}


-- | The ID of the comment to get.
cgCommentId :: Lens' CommentsGet Text
cgCommentId
  = lens _cgCommentId (\ s a -> s{_cgCommentId = a})

instance GoogleRequest CommentsGet where
        type Rs CommentsGet = Comment
        type Scopes CommentsGet =
             '["https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.stream.read"]
        requestClient CommentsGet'{..}
          = go _cgCommentId (Just AltJSON) plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy CommentsGetResource)
                      mempty
