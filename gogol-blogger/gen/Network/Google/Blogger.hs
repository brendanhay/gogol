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

    -- ** CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtId

    -- ** CommentBlog
    , CommentBlog
    , commentBlog
    , cbId

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

    -- ** PagesListView
    , PagesListView (..)

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
