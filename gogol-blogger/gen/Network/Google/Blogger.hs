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
-- | API for access to the data within Blogger.
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
    , module Network.Google.Resource.Blogger.BlogUserInfos.Get

    -- ** BloggerBlogsGet
    , module Network.Google.Resource.Blogger.Blogs.Get

    -- ** BloggerBlogsGetByURL
    , module Network.Google.Resource.Blogger.Blogs.GetByURL

    -- ** BloggerBlogsListByUser
    , module Network.Google.Resource.Blogger.Blogs.ListByUser

    -- ** BloggerCommentsApprove
    , module Network.Google.Resource.Blogger.Comments.Approve

    -- ** BloggerCommentsDelete
    , module Network.Google.Resource.Blogger.Comments.Delete

    -- ** BloggerCommentsGet
    , module Network.Google.Resource.Blogger.Comments.Get

    -- ** BloggerCommentsList
    , module Network.Google.Resource.Blogger.Comments.List

    -- ** BloggerCommentsListByBlog
    , module Network.Google.Resource.Blogger.Comments.ListByBlog

    -- ** BloggerCommentsMarkAsSpam
    , module Network.Google.Resource.Blogger.Comments.MarkAsSpam

    -- ** BloggerCommentsRemoveContent
    , module Network.Google.Resource.Blogger.Comments.RemoveContent

    -- ** BloggerPageViewsGet
    , module Network.Google.Resource.Blogger.PageViews.Get

    -- ** BloggerPagesDelete
    , module Network.Google.Resource.Blogger.Pages.Delete

    -- ** BloggerPagesGet
    , module Network.Google.Resource.Blogger.Pages.Get

    -- ** BloggerPagesInsert
    , module Network.Google.Resource.Blogger.Pages.Insert

    -- ** BloggerPagesList
    , module Network.Google.Resource.Blogger.Pages.List

    -- ** BloggerPagesPatch
    , module Network.Google.Resource.Blogger.Pages.Patch

    -- ** BloggerPagesPublish
    , module Network.Google.Resource.Blogger.Pages.Publish

    -- ** BloggerPagesRevert
    , module Network.Google.Resource.Blogger.Pages.Revert

    -- ** BloggerPagesUpdate
    , module Network.Google.Resource.Blogger.Pages.Update

    -- ** BloggerPostUserInfosGet
    , module Network.Google.Resource.Blogger.PostUserInfos.Get

    -- ** BloggerPostUserInfosList
    , module Network.Google.Resource.Blogger.PostUserInfos.List

    -- ** BloggerPostsDelete
    , module Network.Google.Resource.Blogger.Posts.Delete

    -- ** BloggerPostsGet
    , module Network.Google.Resource.Blogger.Posts.Get

    -- ** BloggerPostsGetByPath
    , module Network.Google.Resource.Blogger.Posts.GetByPath

    -- ** BloggerPostsInsert
    , module Network.Google.Resource.Blogger.Posts.Insert

    -- ** BloggerPostsList
    , module Network.Google.Resource.Blogger.Posts.List

    -- ** BloggerPostsPatch
    , module Network.Google.Resource.Blogger.Posts.Patch

    -- ** BloggerPostsPublish
    , module Network.Google.Resource.Blogger.Posts.Publish

    -- ** BloggerPostsRevert
    , module Network.Google.Resource.Blogger.Posts.Revert

    -- ** BloggerPostsSearch
    , module Network.Google.Resource.Blogger.Posts.Search

    -- ** BloggerPostsUpdate
    , module Network.Google.Resource.Blogger.Posts.Update

    -- ** BloggerUsersGet
    , module Network.Google.Resource.Blogger.Users.Get

    -- * Types

    -- ** PostImages
    , PostImages
    , postImages
    , piURL

    -- ** BloggerPostUserInfosListStatus
    , BloggerPostUserInfosListStatus (..)

    -- ** PostUserInfo
    , PostUserInfo
    , postUserInfo
    , puiPostUserInfo
    , puiPost
    , puiKind

    -- ** BloggerBlogsListByUserStatus
    , BloggerBlogsListByUserStatus (..)

    -- ** BloggerPostsListView
    , BloggerPostsListView (..)

    -- ** PostAuthorImage
    , PostAuthorImage
    , postAuthorImage
    , paiURL

    -- ** BloggerPageViewsGetRange
    , BloggerPageViewsGetRange (..)

    -- ** BloggerPostsListOrderBy
    , BloggerPostsListOrderBy (..)

    -- ** PostList
    , PostList
    , postList
    , plEtag
    , plNextPageToken
    , plKind
    , plItems

    -- ** BloggerCommentsListByBlogStatus
    , BloggerCommentsListByBlogStatus (..)

    -- ** BloggerPagesGetView
    , BloggerPagesGetView (..)

    -- ** BlogPosts
    , BlogPosts
    , blogPosts
    , bpTotalItems
    , bpItems
    , bpSelfLink

    -- ** PostLocation
    , PostLocation
    , postLocation
    , plSpan
    , plLat
    , plName
    , plLng

    -- ** CommentBlog
    , CommentBlog
    , commentBlog
    , cbId

    -- ** PageviewsCounts
    , PageviewsCounts
    , pageviewsCounts
    , pcTimeRange
    , pcCount

    -- ** BloggerPostUserInfosListOrderBy
    , BloggerPostUserInfosListOrderBy (..)

    -- ** CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtId

    -- ** Pageviews
    , Pageviews
    , pageviews
    , pKind
    , pCounts
    , pBlogId

    -- ** BloggerPagesListStatus
    , BloggerPagesListStatus (..)

    -- ** BloggerPostsGetByPathView
    , BloggerPostsGetByPathView (..)

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

    -- ** PostBlog
    , PostBlog
    , postBlog
    , pbId

    -- ** BloggerBlogsListByUserView
    , BloggerBlogsListByUserView (..)

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

    -- ** BlogPages
    , BlogPages
    , blogPages
    , bpsTotalItems
    , bpsSelfLink

    -- ** CommentAuthorImage
    , CommentAuthorImage
    , commentAuthorImage
    , caiURL

    -- ** BloggerCommentsListView
    , BloggerCommentsListView (..)

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
    , uURL
    , uSelfLink
    , uAbout
    , uDisplayName
    , uId

    -- ** UserLocale
    , UserLocale
    , userLocale
    , ulVariant
    , ulCountry
    , ulLanguage

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

    -- ** BlogList
    , BlogList
    , blogList
    , blKind
    , blItems
    , blBlogUserInfos

    -- ** BloggerBlogsListByUserRole
    , BloggerBlogsListByUserRole (..)

    -- ** BloggerPostUserInfosListView
    , BloggerPostUserInfosListView (..)

    -- ** PostAuthor
    , PostAuthor
    , postAuthor
    , pImage
    , pURL
    , pDisplayName
    , pId

    -- ** BloggerCommentsGetView
    , BloggerCommentsGetView (..)

    -- ** PageBlog
    , PageBlog
    , pageBlog
    , pbbId

    -- ** BloggerBlogsGetByURLView
    , BloggerBlogsGetByURLView (..)

    -- ** PostPerUserInfo
    , PostPerUserInfo
    , postPerUserInfo
    , ppuiKind
    , ppuiBlogId
    , ppuiUserId
    , ppuiHasEditAccess
    , ppuiPostId

    -- ** BloggerCommentsListStatus
    , BloggerCommentsListStatus (..)

    -- ** BloggerBlogsGetView
    , BloggerBlogsGetView (..)

    -- ** CommentPost
    , CommentPost
    , commentPost
    , cpId

    -- ** BloggerPostsListStatus
    , BloggerPostsListStatus (..)

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

    -- ** CommentAuthor
    , CommentAuthor
    , commentAuthor
    , caImage
    , caURL
    , caDisplayName
    , caId

    -- ** BloggerPostsGetView
    , BloggerPostsGetView (..)

    -- ** PostUserInfosList
    , PostUserInfosList
    , postUserInfosList
    , puilNextPageToken
    , puilKind
    , puilItems

    -- ** BloggerPostsSearchOrderBy
    , BloggerPostsSearchOrderBy (..)

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

    -- ** PageAuthorImage
    , PageAuthorImage
    , pageAuthorImage
    , paiaURL

    -- ** BloggerPagesListView
    , BloggerPagesListView (..)

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

bloggerAPI :: Proxy BloggerAPI
bloggerAPI = Proxy
