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
    -- * REST Resources

    -- ** Blogger API
      Blogger
    , blogger
    , bloggerURL

    -- ** blogger.blogUserInfos.get
    , module Network.Google.API.Blogger.BlogUserInfos.Get

    -- ** blogger.blogs.get
    , module Network.Google.API.Blogger.Blogs.Get

    -- ** blogger.blogs.getByUrl
    , module Network.Google.API.Blogger.Blogs.GetByURL

    -- ** blogger.blogs.listByUser
    , module Network.Google.API.Blogger.Blogs.ListByUser

    -- ** blogger.comments.approve
    , module Network.Google.API.Blogger.Comments.Approve

    -- ** blogger.comments.delete
    , module Network.Google.API.Blogger.Comments.Delete

    -- ** blogger.comments.get
    , module Network.Google.API.Blogger.Comments.Get

    -- ** blogger.comments.list
    , module Network.Google.API.Blogger.Comments.List

    -- ** blogger.comments.listByBlog
    , module Network.Google.API.Blogger.Comments.ListByBlog

    -- ** blogger.comments.markAsSpam
    , module Network.Google.API.Blogger.Comments.MarkAsSpam

    -- ** blogger.comments.removeContent
    , module Network.Google.API.Blogger.Comments.RemoveContent

    -- ** blogger.pageViews.get
    , module Network.Google.API.Blogger.PageViews.Get

    -- ** blogger.pages.delete
    , module Network.Google.API.Blogger.Pages.Delete

    -- ** blogger.pages.get
    , module Network.Google.API.Blogger.Pages.Get

    -- ** blogger.pages.insert
    , module Network.Google.API.Blogger.Pages.Insert

    -- ** blogger.pages.list
    , module Network.Google.API.Blogger.Pages.List

    -- ** blogger.pages.patch
    , module Network.Google.API.Blogger.Pages.Patch

    -- ** blogger.pages.publish
    , module Network.Google.API.Blogger.Pages.Publish

    -- ** blogger.pages.revert
    , module Network.Google.API.Blogger.Pages.Revert

    -- ** blogger.pages.update
    , module Network.Google.API.Blogger.Pages.Update

    -- ** blogger.postUserInfos.get
    , module Network.Google.API.Blogger.PostUserInfos.Get

    -- ** blogger.postUserInfos.list
    , module Network.Google.API.Blogger.PostUserInfos.List

    -- ** blogger.posts.delete
    , module Network.Google.API.Blogger.Posts.Delete

    -- ** blogger.posts.get
    , module Network.Google.API.Blogger.Posts.Get

    -- ** blogger.posts.getByPath
    , module Network.Google.API.Blogger.Posts.GetByPath

    -- ** blogger.posts.insert
    , module Network.Google.API.Blogger.Posts.Insert

    -- ** blogger.posts.list
    , module Network.Google.API.Blogger.Posts.List

    -- ** blogger.posts.patch
    , module Network.Google.API.Blogger.Posts.Patch

    -- ** blogger.posts.publish
    , module Network.Google.API.Blogger.Posts.Publish

    -- ** blogger.posts.revert
    , module Network.Google.API.Blogger.Posts.Revert

    -- ** blogger.posts.search
    , module Network.Google.API.Blogger.Posts.Search

    -- ** blogger.posts.update
    , module Network.Google.API.Blogger.Posts.Update

    -- ** blogger.users.get
    , module Network.Google.API.Blogger.Users.Get

    -- * Types

    -- ** BlogList
    , BlogList
    , blogList
    , blKind
    , blItems
    , blBlogUserInfos

    -- ** PostsSearch'OrderBy
    , PostsSearch'OrderBy (..)

    -- ** CommentsGet'View
    , CommentsGet'View (..)

    -- ** PostUserInfosList'View
    , PostUserInfosList'View (..)

    -- ** PagesGet'View
    , PagesGet'View (..)

    -- ** UserLocale
    , UserLocale
    , userLocale
    , ulVariant
    , ulCountry
    , ulLanguage

    -- ** PagesList'Status
    , PagesList'Status (..)

    -- ** PostsGetByPath'View
    , PostsGetByPath'View (..)

    -- ** PostList
    , PostList
    , postList
    , plEtag
    , plNextPageToken
    , plKind
    , plItems

    -- ** BlogsGetByURL'View
    , BlogsGetByURL'View (..)

    -- ** CommentsList'Status
    , CommentsList'Status (..)

    -- ** Alt
    , Alt (..)

    -- ** CommentAuthor
    , CommentAuthor
    , commentAuthor
    , caImage
    , caUrl
    , caDisplayName
    , caId

    -- ** BlogsListByUser'Status
    , BlogsListByUser'Status (..)

    -- ** PageAuthor
    , PageAuthor
    , pageAuthor
    , paImage
    , paUrl
    , paDisplayName
    , paId

    -- ** BlogLocale
    , BlogLocale
    , blogLocale
    , blVariant
    , blCountry
    , blLanguage

    -- ** PostBlog
    , PostBlog
    , postBlog
    , pbId

    -- ** PostsList'View
    , PostsList'View (..)

    -- ** PostPerUserInfo
    , PostPerUserInfo
    , postPerUserInfo
    , ppuiKind
    , ppuiBlogId
    , ppuiUserId
    , ppuiHasEditAccess
    , ppuiPostId

    -- ** PostsList'OrderBy
    , PostsList'OrderBy (..)

    -- ** PagesList'View
    , PagesList'View (..)

    -- ** CommentsList'View
    , CommentsList'View (..)

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

    -- ** BlogPosts
    , BlogPosts
    , blogPosts
    , bpTotalItems
    , bpItems
    , bpSelfLink

    -- ** PageBlog
    , PageBlog
    , pageBlog
    , pId

    -- ** CommentBlog
    , CommentBlog
    , commentBlog
    , cbId

    -- ** PostAuthor
    , PostAuthor
    , postAuthor
    , posImage
    , posUrl
    , posDisplayName
    , posId

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

    -- ** BlogUserInfo
    , BlogUserInfo
    , blogUserInfo
    , buiKind
    , buiBlog
    , buiBlogUserInfo

    -- ** CommentList
    , CommentList
    , commentList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clPrevPageToken

    -- ** BlogsListByUser'View
    , BlogsListByUser'View (..)

    -- ** PostsGet'View
    , PostsGet'View (..)

    -- ** PostUserInfo
    , PostUserInfo
    , postUserInfo
    , puiPostUserInfo
    , puiPost
    , puiKind

    -- ** CommentsListByBlog'Status
    , CommentsListByBlog'Status (..)

    -- ** PostReplies
    , PostReplies
    , postReplies
    , prTotalItems
    , prItems
    , prSelfLink

    -- ** UserBlogs
    , UserBlogs
    , userBlogs
    , ubSelfLink

    -- ** PostUserInfosList'OrderBy
    , PostUserInfosList'OrderBy (..)

    -- ** PageImageAuthor
    , PageImageAuthor
    , pageImageAuthor
    , piaUrl

    -- ** BlogsGet'View
    , BlogsGet'View (..)

    -- ** CommentImageAuthor
    , CommentImageAuthor
    , commentImageAuthor
    , ciaUrl

    -- ** PostItemImages
    , PostItemImages
    , postItemImages
    , piiUrl

    -- ** Pageviews
    , Pageviews
    , pageviews
    , pagaKind
    , pagaCounts
    , pagaBlogId

    -- ** BlogsListByUser'Role
    , BlogsListByUser'Role (..)

    -- ** BlogPages
    , BlogPages
    , blogPages
    , bpsTotalItems
    , bpsSelfLink

    -- ** PageViewsGet'Range
    , PageViewsGet'Range (..)

    -- ** CommentPost
    , CommentPost
    , commentPost
    , cpId

    -- ** Post
    , Post
    , post
    , ppImages
    , ppStatus
    , ppEtag
    , ppReaderComments
    , ppLocation
    , ppKind
    , ppPublished
    , ppUrl
    , ppBlog
    , ppCustomMetaData
    , ppContent
    , ppReplies
    , ppSelfLink
    , ppAuthor
    , ppId
    , ppLabels
    , ppUpdated
    , ppTitleLink
    , ppTitle

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

    -- ** PageviewsItemCounts
    , PageviewsItemCounts
    , pageviewsItemCounts
    , picTimeRange
    , picCount

    -- ** PostUserInfosList'Status
    , PostUserInfosList'Status (..)

    -- ** PostLocation
    , PostLocation
    , postLocation
    , plSpan
    , plLat
    , plName
    , plLng

    -- ** CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtId

    -- ** BlogPerUserInfo
    , BlogPerUserInfo
    , blogPerUserInfo
    , bpuiPhotosAlbumKey
    , bpuiKind
    , bpuiBlogId
    , bpuiUserId
    , bpuiRole
    , bpuiHasAdminAccess

    -- ** PostUserInfosList
    , PostUserInfosList
    , postUserInfosList
    , puilNextPageToken
    , puilKind
    , puilItems

    -- ** PostsList'Status
    , PostsList'Status (..)

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

    -- ** PostImageAuthor
    , PostImageAuthor
    , postImageAuthor
    , pUrl

    -- ** PageList
    , PageList
    , pageList
    , pEtag
    , pNextPageToken
    , pKind
    , pItems
    ) where

import           Network.Google.API.Blogger.Blogs.Get
import           Network.Google.API.Blogger.Blogs.GetByURL
import           Network.Google.API.Blogger.Blogs.ListByUser
import           Network.Google.API.Blogger.BlogUserInfos.Get
import           Network.Google.API.Blogger.Comments.Approve
import           Network.Google.API.Blogger.Comments.Delete
import           Network.Google.API.Blogger.Comments.Get
import           Network.Google.API.Blogger.Comments.List
import           Network.Google.API.Blogger.Comments.ListByBlog
import           Network.Google.API.Blogger.Comments.MarkAsSpam
import           Network.Google.API.Blogger.Comments.RemoveContent
import           Network.Google.API.Blogger.Pages.Delete
import           Network.Google.API.Blogger.Pages.Get
import           Network.Google.API.Blogger.Pages.Insert
import           Network.Google.API.Blogger.Pages.List
import           Network.Google.API.Blogger.Pages.Patch
import           Network.Google.API.Blogger.Pages.Publish
import           Network.Google.API.Blogger.Pages.Revert
import           Network.Google.API.Blogger.Pages.Update
import           Network.Google.API.Blogger.PageViews.Get
import           Network.Google.API.Blogger.Posts.Delete
import           Network.Google.API.Blogger.Posts.Get
import           Network.Google.API.Blogger.Posts.GetByPath
import           Network.Google.API.Blogger.Posts.Insert
import           Network.Google.API.Blogger.Posts.List
import           Network.Google.API.Blogger.Posts.Patch
import           Network.Google.API.Blogger.Posts.Publish
import           Network.Google.API.Blogger.Posts.Revert
import           Network.Google.API.Blogger.Posts.Search
import           Network.Google.API.Blogger.Posts.Update
import           Network.Google.API.Blogger.PostUserInfos.Get
import           Network.Google.API.Blogger.PostUserInfos.List
import           Network.Google.API.Blogger.Users.Get
import           Network.Google.Blogger.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Blogger =
     UsersGetAPI :<|> PostsRevertAPI :<|> PostsGetAPI :<|>
       CommentsGetAPI
       :<|> CommentsListAPI
       :<|> CommentsRemoveContentAPI
       :<|> PostsDeleteAPI
       :<|> PageViewsGetAPI
       :<|> PostsUpdateAPI
       :<|> PostsPublishAPI
       :<|> PostsInsertAPI
       :<|> PostsSearchAPI
       :<|> PagesPublishAPI
       :<|> PostsGetByPathAPI
       :<|> PostsListAPI
       :<|> BlogsGetByURLAPI
       :<|> PagesDeleteAPI
       :<|> BlogUserInfosGetAPI
       :<|> PagesGetAPI
       :<|> CommentsDeleteAPI
       :<|> PagesInsertAPI
       :<|> CommentsMarkAsSpamAPI
       :<|> PagesRevertAPI
       :<|> PostUserInfosGetAPI
       :<|> PagesPatchAPI
       :<|> PostUserInfosListAPI
       :<|> PostsPatchAPI
       :<|> BlogsGetAPI
       :<|> CommentsListByBlogAPI
       :<|> PagesListAPI
       :<|> PagesUpdateAPI
       :<|> CommentsApproveAPI
       :<|> BlogsListByUserAPI

blogger :: Proxy Blogger
blogger = Proxy
