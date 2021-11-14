{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Blogger
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Blogger API provides access to posts, comments and pages of a
-- Blogger blog.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference>
module Network.Google.Blogger
    (
    -- * Service Configuration
      bloggerService

    -- * OAuth Scopes
    , bloggerScope
    , bloggerReadOnlyScope

    -- * API Declaration
    , BloggerAPI

    -- * Resources

    -- ** blogger.blogUserInfos.get
    , module Network.Google.Resource.Blogger.BlogUserInfos.Get

    -- ** blogger.blogs.get
    , module Network.Google.Resource.Blogger.Blogs.Get

    -- ** blogger.blogs.getByUrl
    , module Network.Google.Resource.Blogger.Blogs.GetByURL

    -- ** blogger.blogs.listByUser
    , module Network.Google.Resource.Blogger.Blogs.ListByUser

    -- ** blogger.comments.approve
    , module Network.Google.Resource.Blogger.Comments.Approve

    -- ** blogger.comments.delete
    , module Network.Google.Resource.Blogger.Comments.Delete

    -- ** blogger.comments.get
    , module Network.Google.Resource.Blogger.Comments.Get

    -- ** blogger.comments.list
    , module Network.Google.Resource.Blogger.Comments.List

    -- ** blogger.comments.listByBlog
    , module Network.Google.Resource.Blogger.Comments.ListByBlog

    -- ** blogger.comments.markAsSpam
    , module Network.Google.Resource.Blogger.Comments.MarkAsSpam

    -- ** blogger.comments.removeContent
    , module Network.Google.Resource.Blogger.Comments.RemoveContent

    -- ** blogger.pageViews.get
    , module Network.Google.Resource.Blogger.PageViews.Get

    -- ** blogger.pages.delete
    , module Network.Google.Resource.Blogger.Pages.Delete

    -- ** blogger.pages.get
    , module Network.Google.Resource.Blogger.Pages.Get

    -- ** blogger.pages.insert
    , module Network.Google.Resource.Blogger.Pages.Insert

    -- ** blogger.pages.list
    , module Network.Google.Resource.Blogger.Pages.List

    -- ** blogger.pages.patch
    , module Network.Google.Resource.Blogger.Pages.Patch

    -- ** blogger.pages.publish
    , module Network.Google.Resource.Blogger.Pages.Publish

    -- ** blogger.pages.revert
    , module Network.Google.Resource.Blogger.Pages.Revert

    -- ** blogger.pages.update
    , module Network.Google.Resource.Blogger.Pages.Update

    -- ** blogger.postUserInfos.get
    , module Network.Google.Resource.Blogger.PostUserInfos.Get

    -- ** blogger.postUserInfos.list
    , module Network.Google.Resource.Blogger.PostUserInfos.List

    -- ** blogger.posts.delete
    , module Network.Google.Resource.Blogger.Posts.Delete

    -- ** blogger.posts.get
    , module Network.Google.Resource.Blogger.Posts.Get

    -- ** blogger.posts.getByPath
    , module Network.Google.Resource.Blogger.Posts.GetByPath

    -- ** blogger.posts.insert
    , module Network.Google.Resource.Blogger.Posts.Insert

    -- ** blogger.posts.list
    , module Network.Google.Resource.Blogger.Posts.List

    -- ** blogger.posts.patch
    , module Network.Google.Resource.Blogger.Posts.Patch

    -- ** blogger.posts.publish
    , module Network.Google.Resource.Blogger.Posts.Publish

    -- ** blogger.posts.revert
    , module Network.Google.Resource.Blogger.Posts.Revert

    -- ** blogger.posts.search
    , module Network.Google.Resource.Blogger.Posts.Search

    -- ** blogger.posts.update
    , module Network.Google.Resource.Blogger.Posts.Update

    -- ** blogger.users.get
    , module Network.Google.Resource.Blogger.Users.Get

    -- * Types

    -- ** PostStatus
    , PostStatus (..)

    -- ** PostsListOrderBy
    , PostsListOrderBy (..)

    -- ** PostsListView
    , PostsListView (..)

    -- ** PageViewsGetRange
    , PageViewsGetRange (..)

    -- ** PostUserInfo
    , PostUserInfo
    , postUserInfo
    , puiPostUserInfo
    , puiPost
    , puiKind

    -- ** PageStatus
    , PageStatus (..)

    -- ** CommentsListView
    , CommentsListView (..)

    -- ** PostAuthorImage
    , PostAuthorImage
    , postAuthorImage
    , paiURL

    -- ** PostUserInfosListStatus
    , PostUserInfosListStatus (..)

    -- ** PostList
    , PostList
    , postList
    , plEtag
    , plNextPageToken
    , plKind
    , plItems
    , plPrevPageToken

    -- ** CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtId

    -- ** CommentBlog
    , CommentBlog
    , commentBlog
    , cbId

    -- ** PostReaderComments
    , PostReaderComments (..)

    -- ** Pageviews
    , Pageviews
    , pageviews
    , pKind
    , pCounts
    , pBlogId

    -- ** PostLocation
    , PostLocation
    , postLocation
    , plSpan
    , plLat
    , plName
    , plLng

    -- ** BlogPosts
    , BlogPosts
    , blogPosts
    , bpTotalItems
    , bpItems
    , bpSelfLink

    -- ** PostsGetView
    , PostsGetView (..)

    -- ** Post'
    , Post'
    , post
    , posImages
    , posStatus
    , posEtag
    , posReaderComments
    , posLocation
    , posKind
    , posPublished
    , posURL
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

    -- ** PostsSearchOrderBy
    , PostsSearchOrderBy (..)

    -- ** CommentsListByBlogStatus
    , CommentsListByBlogStatus (..)

    -- ** PagesGetView
    , PagesGetView (..)

    -- ** PostUserInfosListOrderBy
    , PostUserInfosListOrderBy (..)

    -- ** Page
    , Page
    , page
    , pagStatus
    , pagEtag
    , pagKind
    , pagPublished
    , pagURL
    , pagBlog
    , pagContent
    , pagSelfLink
    , pagAuthor
    , pagId
    , pagUpdated
    , pagTitle

    -- ** BlogLocale
    , BlogLocale
    , blogLocale
    , blVariant
    , blCountry
    , blLanguage

    -- ** PageAuthor
    , PageAuthor
    , pageAuthor
    , paImage
    , paURL
    , paDisplayName
    , paId

    -- ** BlogsGetView
    , BlogsGetView (..)

    -- ** Blog
    , Blog
    , blog
    , bStatus
    , bKind
    , bPages
    , bLocale
    , bPublished
    , bURL
    , bCustomMetaData
    , bSelfLink
    , bName
    , bId
    , bUpdated
    , bPosts
    , bDescription

    -- ** BlogsGetByURLView
    , BlogsGetByURLView (..)

    -- ** CommentsListStatus
    , CommentsListStatus (..)

    -- ** BlogPages
    , BlogPages
    , blogPages
    , bpsTotalItems
    , bpsSelfLink

    -- ** PostBlog
    , PostBlog
    , postBlog
    , pbId

    -- ** BlogsListByUserStatus
    , BlogsListByUserStatus (..)

    -- ** PageList
    , PageList
    , pageList
    , pllEtag
    , pllNextPageToken
    , pllKind
    , pllItems

    -- ** UserLocale
    , UserLocale
    , userLocale
    , ulVariant
    , ulCountry
    , ulLanguage

    -- ** CommentAuthorImage
    , CommentAuthorImage
    , commentAuthorImage
    , caiURL

    -- ** User
    , User
    , user
    , uBlogs
    , uKind
    , uCreated
    , uLocale
    , uURL
    , uSelfLink
    , uAbout
    , uDisplayName
    , uId

    -- ** UserBlogs
    , UserBlogs
    , userBlogs
    , ubSelfLink

    -- ** PostReplies
    , PostReplies
    , postReplies
    , prTotalItems
    , prItems
    , prSelfLink

    -- ** BlogList
    , BlogList
    , blogList
    , blKind
    , blItems
    , blBlogUserInfos

    -- ** CommentStatus
    , CommentStatus (..)

    -- ** PagesListView
    , PagesListView (..)

    -- ** PageviewsCountsItemTimeRange
    , PageviewsCountsItemTimeRange (..)

    -- ** BlogStatus
    , BlogStatus (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** BlogPerUserInfoRole
    , BlogPerUserInfoRole (..)

    -- ** PageBlog
    , PageBlog
    , pageBlog
    , pId

    -- ** PostsListStatus
    , PostsListStatus (..)

    -- ** PostAuthor
    , PostAuthor
    , postAuthor
    , paaImage
    , paaURL
    , paaDisplayName
    , paaId

    -- ** PostPerUserInfo
    , PostPerUserInfo
    , postPerUserInfo
    , ppuiKind
    , ppuiBlogId
    , ppuiUserId
    , ppuiHasEditAccess
    , ppuiPostId

    -- ** BlogsListByUserView
    , BlogsListByUserView (..)

    -- ** PageviewsCountsItem
    , PageviewsCountsItem
    , pageviewsCountsItem
    , pciTimeRange
    , pciCount

    -- ** PostUserInfosListView
    , PostUserInfosListView (..)

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

    -- ** CommentsGetView
    , CommentsGetView (..)

    -- ** CommentPost
    , CommentPost
    , commentPost
    , cpId

    -- ** PostsGetByPathView
    , PostsGetByPathView (..)

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

    -- ** PagesListStatus
    , PagesListStatus (..)

    -- ** CommentAuthor
    , CommentAuthor
    , commentAuthor
    , caImage
    , caURL
    , caDisplayName
    , caId

    -- ** BlogsListByUserRole
    , BlogsListByUserRole (..)

    -- ** BlogUserInfo
    , BlogUserInfo
    , blogUserInfo
    , buiKind
    , buiBlog
    , buiBlogUserInfo

    -- ** PageAuthorImage
    , PageAuthorImage
    , pageAuthorImage
    , pURL

    -- ** CommentList
    , CommentList
    , commentList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clPrevPageToken

    -- ** PostImagesItem
    , PostImagesItem
    , postImagesItem
    , piiURL
    ) where

import Network.Google.Prelude
import Network.Google.Blogger.Types
import Network.Google.Resource.Blogger.BlogUserInfos.Get
import Network.Google.Resource.Blogger.Blogs.Get
import Network.Google.Resource.Blogger.Blogs.GetByURL
import Network.Google.Resource.Blogger.Blogs.ListByUser
import Network.Google.Resource.Blogger.Comments.Approve
import Network.Google.Resource.Blogger.Comments.Delete
import Network.Google.Resource.Blogger.Comments.Get
import Network.Google.Resource.Blogger.Comments.List
import Network.Google.Resource.Blogger.Comments.ListByBlog
import Network.Google.Resource.Blogger.Comments.MarkAsSpam
import Network.Google.Resource.Blogger.Comments.RemoveContent
import Network.Google.Resource.Blogger.PageViews.Get
import Network.Google.Resource.Blogger.Pages.Delete
import Network.Google.Resource.Blogger.Pages.Get
import Network.Google.Resource.Blogger.Pages.Insert
import Network.Google.Resource.Blogger.Pages.List
import Network.Google.Resource.Blogger.Pages.Patch
import Network.Google.Resource.Blogger.Pages.Publish
import Network.Google.Resource.Blogger.Pages.Revert
import Network.Google.Resource.Blogger.Pages.Update
import Network.Google.Resource.Blogger.PostUserInfos.Get
import Network.Google.Resource.Blogger.PostUserInfos.List
import Network.Google.Resource.Blogger.Posts.Delete
import Network.Google.Resource.Blogger.Posts.Get
import Network.Google.Resource.Blogger.Posts.GetByPath
import Network.Google.Resource.Blogger.Posts.Insert
import Network.Google.Resource.Blogger.Posts.List
import Network.Google.Resource.Blogger.Posts.Patch
import Network.Google.Resource.Blogger.Posts.Publish
import Network.Google.Resource.Blogger.Posts.Revert
import Network.Google.Resource.Blogger.Posts.Search
import Network.Google.Resource.Blogger.Posts.Update
import Network.Google.Resource.Blogger.Users.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Blogger API v3 service.
type BloggerAPI =
     PostUserInfosListResource :<|>
       PostUserInfosGetResource
       :<|> UsersGetResource
       :<|> PageViewsGetResource
       :<|> BlogsListByUserResource
       :<|> BlogsGetResource
       :<|> BlogsGetByURLResource
       :<|> PagesInsertResource
       :<|> PagesListResource
       :<|> PagesPatchResource
       :<|> PagesGetResource
       :<|> PagesRevertResource
       :<|> PagesDeleteResource
       :<|> PagesUpdateResource
       :<|> PagesPublishResource
       :<|> BlogUserInfosGetResource
       :<|> CommentsListResource
       :<|> CommentsGetResource
       :<|> CommentsListByBlogResource
       :<|> CommentsRemoveContentResource
       :<|> CommentsApproveResource
       :<|> CommentsMarkAsSpamResource
       :<|> CommentsDeleteResource
       :<|> PostsInsertResource
       :<|> PostsListResource
       :<|> PostsPatchResource
       :<|> PostsGetResource
       :<|> PostsRevertResource
       :<|> PostsGetByPathResource
       :<|> PostsSearchResource
       :<|> PostsDeleteResource
       :<|> PostsUpdateResource
       :<|> PostsPublishResource
