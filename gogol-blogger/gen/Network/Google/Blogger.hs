{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Blogger
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for access to the data within Blogger.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference>
module Network.Google.Blogger
    (
    -- * API
      BloggerAPI
    , bloggerAPI
    , bloggerURL

    -- * Service Methods

    -- * REST Resources

    -- ** BloggerBlogUserInfosGet
    , module Blogger.BlogUserInfos.Get

    -- ** BloggerBlogsGet
    , module Blogger.Blogs.Get

    -- ** BloggerBlogsGetByURL
    , module Blogger.Blogs.GetByURL

    -- ** BloggerBlogsListByUser
    , module Blogger.Blogs.ListByUser

    -- ** BloggerCommentsApprove
    , module Blogger.Comments.Approve

    -- ** BloggerCommentsDelete
    , module Blogger.Comments.Delete

    -- ** BloggerCommentsGet
    , module Blogger.Comments.Get

    -- ** BloggerCommentsList
    , module Blogger.Comments.List

    -- ** BloggerCommentsListByBlog
    , module Blogger.Comments.ListByBlog

    -- ** BloggerCommentsMarkAsSpam
    , module Blogger.Comments.MarkAsSpam

    -- ** BloggerCommentsRemoveContent
    , module Blogger.Comments.RemoveContent

    -- ** BloggerPageViewsGet
    , module Blogger.PageViews.Get

    -- ** BloggerPagesDelete
    , module Blogger.Pages.Delete

    -- ** BloggerPagesGet
    , module Blogger.Pages.Get

    -- ** BloggerPagesInsert
    , module Blogger.Pages.Insert

    -- ** BloggerPagesList
    , module Blogger.Pages.List

    -- ** BloggerPagesPatch
    , module Blogger.Pages.Patch

    -- ** BloggerPagesPublish
    , module Blogger.Pages.Publish

    -- ** BloggerPagesRevert
    , module Blogger.Pages.Revert

    -- ** BloggerPagesUpdate
    , module Blogger.Pages.Update

    -- ** BloggerPostUserInfosGet
    , module Blogger.PostUserInfos.Get

    -- ** BloggerPostUserInfosList
    , module Blogger.PostUserInfos.List

    -- ** BloggerPostsDelete
    , module Blogger.Posts.Delete

    -- ** BloggerPostsGet
    , module Blogger.Posts.Get

    -- ** BloggerPostsGetByPath
    , module Blogger.Posts.GetByPath

    -- ** BloggerPostsInsert
    , module Blogger.Posts.Insert

    -- ** BloggerPostsList
    , module Blogger.Posts.List

    -- ** BloggerPostsPatch
    , module Blogger.Posts.Patch

    -- ** BloggerPostsPublish
    , module Blogger.Posts.Publish

    -- ** BloggerPostsRevert
    , module Blogger.Posts.Revert

    -- ** BloggerPostsSearch
    , module Blogger.Posts.Search

    -- ** BloggerPostsUpdate
    , module Blogger.Posts.Update

    -- ** BloggerUsersGet
    , module Blogger.Users.Get

    -- * Types

    -- ** PostUserInfo
    , PostUserInfo
    , postUserInfo
    , puiPostUserInfo
    , puiPost
    , puiKind

    -- ** PostList
    , PostList
    , postList
    , plEtag
    , plNextPageToken
    , plKind
    , plItems

    -- ** Pageviews
    , Pageviews
    , pageviews
    , pKind
    , pCounts
    , pBlogId

    -- ** Post
    , Post
    , post
    , posImages
    , posStatus
    , posEtag
    , posReaderComments
    , posLocation
    , posKind
    , posPublished
    , posUrl
    , posBlog
    , posCustomMetaData
    , posContent
    , posReplies
    , posSelfLink
    , posAuthor
    , posId
    , posLabels
    , posUpdated
    , posTitleLink
    , posTitle

    -- ** Page
    , Page
    , page
    , pagStatus
    , pagEtag
    , pagKind
    , pagPublished
    , pagUrl
    , pagBlog
    , pagContent
    , pagSelfLink
    , pagAuthor
    , pagId
    , pagUpdated
    , pagTitle

    -- ** Blog
    , Blog
    , blog
    , bStatus
    , bKind
    , bPages
    , bLocale
    , bPublished
    , bUrl
    , bCustomMetaData
    , bSelfLink
    , bName
    , bId
    , bUpdated
    , bPosts
    , bDescription

    -- ** PageList
    , PageList
    , pageList
    , pllEtag
    , pllNextPageToken
    , pllKind
    , pllItems

    -- ** User
    , User
    , user
    , uBlogs
    , uKind
    , uCreated
    , uLocale
    , uUrl
    , uSelfLink
    , uAbout
    , uDisplayName
    , uId

    -- ** BlogList
    , BlogList
    , blogList
    , blKind
    , blItems
    , blBlogUserInfos

    -- ** PostPerUserInfo
    , PostPerUserInfo
    , postPerUserInfo
    , ppuiKind
    , ppuiBlogId
    , ppuiUserId
    , ppuiHasEditAccess
    , ppuiPostId

    -- ** Comment
    , Comment
    , comment
    , cStatus
    , cPost
    , cKind
    , cPublished
    , cBlog
    , cContent
    , cSelfLink
    , cAuthor
    , cId
    , cUpdated
    , cInReplyTo

    -- ** PostUserInfosList
    , PostUserInfosList
    , postUserInfosList
    , puilNextPageToken
    , puilKind
    , puilItems

    -- ** BlogPerUserInfo
    , BlogPerUserInfo
    , blogPerUserInfo
    , bpuiPhotosAlbumKey
    , bpuiKind
    , bpuiBlogId
    , bpuiUserId
    , bpuiRole
    , bpuiHasAdminAccess

    -- ** CommentList
    , CommentList
    , commentList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clPrevPageToken

    -- ** BlogUserInfo
    , BlogUserInfo
    , blogUserInfo
    , buiKind
    , buiBlog
    , buiBlogUserInfo
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Blogger.Blogs.Get
import           Network.Google.Resource.Blogger.Blogs.GetByURL
import           Network.Google.Resource.Blogger.Blogs.ListByUser
import           Network.Google.Resource.Blogger.BlogUserInfos.Get
import           Network.Google.Resource.Blogger.Comments.Approve
import           Network.Google.Resource.Blogger.Comments.Delete
import           Network.Google.Resource.Blogger.Comments.Get
import           Network.Google.Resource.Blogger.Comments.List
import           Network.Google.Resource.Blogger.Comments.ListByBlog
import           Network.Google.Resource.Blogger.Comments.MarkAsSpam
import           Network.Google.Resource.Blogger.Comments.RemoveContent
import           Network.Google.Resource.Blogger.Pages.Delete
import           Network.Google.Resource.Blogger.Pages.Get
import           Network.Google.Resource.Blogger.Pages.Insert
import           Network.Google.Resource.Blogger.Pages.List
import           Network.Google.Resource.Blogger.Pages.Patch
import           Network.Google.Resource.Blogger.Pages.Publish
import           Network.Google.Resource.Blogger.Pages.Revert
import           Network.Google.Resource.Blogger.Pages.Update
import           Network.Google.Resource.Blogger.PageViews.Get
import           Network.Google.Resource.Blogger.Posts.Delete
import           Network.Google.Resource.Blogger.Posts.Get
import           Network.Google.Resource.Blogger.Posts.GetByPath
import           Network.Google.Resource.Blogger.Posts.Insert
import           Network.Google.Resource.Blogger.Posts.List
import           Network.Google.Resource.Blogger.Posts.Patch
import           Network.Google.Resource.Blogger.Posts.Publish
import           Network.Google.Resource.Blogger.Posts.Revert
import           Network.Google.Resource.Blogger.Posts.Search
import           Network.Google.Resource.Blogger.Posts.Update
import           Network.Google.Resource.Blogger.PostUserInfos.Get
import           Network.Google.Resource.Blogger.PostUserInfos.List
import           Network.Google.Resource.Blogger.Users.Get

{- $resources
TODO
-}

type BloggerAPI =
     PostUserInfos :<|> Users :<|> PageViews :<|> Blogs
       :<|> Pages
       :<|> BlogUserInfos
       :<|> Comments
       :<|> Posts

bloggerAPI :: Proxy BloggerAPI
bloggerAPI = Proxy
