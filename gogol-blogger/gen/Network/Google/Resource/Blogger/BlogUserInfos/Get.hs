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
-- Module      : Network.Google.Resource.Blogger.BlogUserInfos.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one blog and user info pair by blogId and userId.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.blogUserInfos.get@.
module Network.Google.Resource.Blogger.BlogUserInfos.Get
    (
    -- * REST Resource
      BlogUserInfosGetResource

    -- * Creating a Request
    , blogUserInfosGet
    , BlogUserInfosGet

    -- * Request Lenses
    , buigBlogId
    , buigUserId
    , buigMaxPosts
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.blogUserInfos.get@ method which the
-- 'BlogUserInfosGet' request conforms to.
type BlogUserInfosGetResource =
     "blogger" :>
       "v3" :>
         "users" :>
           Capture "userId" Text :>
             "blogs" :>
               Capture "blogId" Text :>
                 QueryParam "maxPosts" (Textual Word32) :>
                   QueryParam "alt" AltJSON :> Get '[JSON] BlogUserInfo

-- | Gets one blog and user info pair by blogId and userId.
--
-- /See:/ 'blogUserInfosGet' smart constructor.
data BlogUserInfosGet = BlogUserInfosGet
    { _buigBlogId   :: !Text
    , _buigUserId   :: !Text
    , _buigMaxPosts :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogUserInfosGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buigBlogId'
--
-- * 'buigUserId'
--
-- * 'buigMaxPosts'
blogUserInfosGet
    :: Text -- ^ 'buigBlogId'
    -> Text -- ^ 'buigUserId'
    -> BlogUserInfosGet
blogUserInfosGet pBuigBlogId_ pBuigUserId_ =
    BlogUserInfosGet
    { _buigBlogId = pBuigBlogId_
    , _buigUserId = pBuigUserId_
    , _buigMaxPosts = Nothing
    }

-- | The ID of the blog to get.
buigBlogId :: Lens' BlogUserInfosGet Text
buigBlogId
  = lens _buigBlogId (\ s a -> s{_buigBlogId = a})

-- | ID of the user whose blogs are to be fetched. Either the word \'self\'
-- (sans quote marks) or the user\'s profile identifier.
buigUserId :: Lens' BlogUserInfosGet Text
buigUserId
  = lens _buigUserId (\ s a -> s{_buigUserId = a})

-- | Maximum number of posts to pull back with the blog.
buigMaxPosts :: Lens' BlogUserInfosGet (Maybe Word32)
buigMaxPosts
  = lens _buigMaxPosts (\ s a -> s{_buigMaxPosts = a})
      . mapping _Coerce

instance GoogleRequest BlogUserInfosGet where
        type Rs BlogUserInfosGet = BlogUserInfo
        requestClient BlogUserInfosGet{..}
          = go _buigUserId _buigBlogId _buigMaxPosts
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy BlogUserInfosGetResource)
                      mempty
