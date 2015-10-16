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
-- Module      : Network.Google.Resource.Blogger.PostUserInfos.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one post and user info pair, by post ID and user ID. The post user
-- info contains per-user information about the post, such as access
-- rights, specific to the user.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostUserInfosGet@.
module Network.Google.Resource.Blogger.PostUserInfos.Get
    (
    -- * REST Resource
      PostUserInfosGetResource

    -- * Creating a Request
    , postUserInfosGet'
    , PostUserInfosGet'

    -- * Request Lenses
    , puigBlogId
    , puigMaxComments
    , puigUserId
    , puigPostId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostUserInfosGet@ method which the
-- 'PostUserInfosGet'' request conforms to.
type PostUserInfosGetResource =
     "users" :>
       Capture "userId" Text :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               Capture "postId" Text :>
                 QueryParam "maxComments" Word32 :>
                   QueryParam "alt" AltJSON :> Get '[JSON] PostUserInfo

-- | Gets one post and user info pair, by post ID and user ID. The post user
-- info contains per-user information about the post, such as access
-- rights, specific to the user.
--
-- /See:/ 'postUserInfosGet'' smart constructor.
data PostUserInfosGet' = PostUserInfosGet'
    { _puigBlogId      :: !Text
    , _puigMaxComments :: !(Maybe Word32)
    , _puigUserId      :: !Text
    , _puigPostId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostUserInfosGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puigBlogId'
--
-- * 'puigMaxComments'
--
-- * 'puigUserId'
--
-- * 'puigPostId'
postUserInfosGet'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'postId'
    -> PostUserInfosGet'
postUserInfosGet' pPuigBlogId_ pPuigUserId_ pPuigPostId_ =
    PostUserInfosGet'
    { _puigBlogId = pPuigBlogId_
    , _puigMaxComments = Nothing
    , _puigUserId = pPuigUserId_
    , _puigPostId = pPuigPostId_
    }

-- | The ID of the blog.
puigBlogId :: Lens' PostUserInfosGet' Text
puigBlogId
  = lens _puigBlogId (\ s a -> s{_puigBlogId = a})

-- | Maximum number of comments to pull back on a post.
puigMaxComments :: Lens' PostUserInfosGet' (Maybe Word32)
puigMaxComments
  = lens _puigMaxComments
      (\ s a -> s{_puigMaxComments = a})

-- | ID of the user for the per-user information to be fetched. Either the
-- word \'self\' (sans quote marks) or the user\'s profile identifier.
puigUserId :: Lens' PostUserInfosGet' Text
puigUserId
  = lens _puigUserId (\ s a -> s{_puigUserId = a})

-- | The ID of the post to get.
puigPostId :: Lens' PostUserInfosGet' Text
puigPostId
  = lens _puigPostId (\ s a -> s{_puigPostId = a})

instance GoogleRequest PostUserInfosGet' where
        type Rs PostUserInfosGet' = PostUserInfo
        requestClient PostUserInfosGet'{..}
          = go _puigUserId _puigBlogId _puigPostId
              _puigMaxComments
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy PostUserInfosGetResource)
                      mempty
