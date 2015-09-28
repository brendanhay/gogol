{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Blogger.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Blogger.Types
    (
    -- * Service URL
      bloggerURL

    -- * BlogList
    , BlogList
    , blogList
    , blKind
    , blItems
    , blBlogUserInfos

    -- * PostsSearch'OrderBy
    , PostsSearch'OrderBy (..)

    -- * CommentsGet'View
    , CommentsGet'View (..)

    -- * PostUserInfosList'View
    , PostUserInfosList'View (..)

    -- * PagesGet'View
    , PagesGet'View (..)

    -- * UserLocale
    , UserLocale
    , userLocale
    , ulVariant
    , ulCountry
    , ulLanguage

    -- * PagesList'Status
    , PagesList'Status (..)

    -- * PostsGetByPath'View
    , PostsGetByPath'View (..)

    -- * PostList
    , PostList
    , postList
    , plEtag
    , plNextPageToken
    , plKind
    , plItems

    -- * BlogsGetByURL'View
    , BlogsGetByURL'View (..)

    -- * CommentsList'Status
    , CommentsList'Status (..)

    -- * Alt
    , Alt (..)

    -- * CommentAuthor
    , CommentAuthor
    , commentAuthor
    , caImage
    , caUrl
    , caDisplayName
    , caId

    -- * BlogsListByUser'Status
    , BlogsListByUser'Status (..)

    -- * PageAuthor
    , PageAuthor
    , pageAuthor
    , paImage
    , paUrl
    , paDisplayName
    , paId

    -- * BlogLocale
    , BlogLocale
    , blogLocale
    , blVariant
    , blCountry
    , blLanguage

    -- * PostBlog
    , PostBlog
    , postBlog
    , pbId

    -- * PostsList'View
    , PostsList'View (..)

    -- * PostPerUserInfo
    , PostPerUserInfo
    , postPerUserInfo
    , ppuiKind
    , ppuiBlogId
    , ppuiUserId
    , ppuiHasEditAccess
    , ppuiPostId

    -- * PostsList'OrderBy
    , PostsList'OrderBy (..)

    -- * PagesList'View
    , PagesList'View (..)

    -- * CommentsList'View
    , CommentsList'View (..)

    -- * Comment
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

    -- * BlogPosts
    , BlogPosts
    , blogPosts
    , bpTotalItems
    , bpItems
    , bpSelfLink

    -- * PageBlog
    , PageBlog
    , pageBlog
    , pId

    -- * CommentBlog
    , CommentBlog
    , commentBlog
    , cbId

    -- * PostAuthor
    , PostAuthor
    , postAuthor
    , posImage
    , posUrl
    , posDisplayName
    , posId

    -- * Blog
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

    -- * BlogUserInfo
    , BlogUserInfo
    , blogUserInfo
    , buiKind
    , buiBlog
    , buiBlogUserInfo

    -- * CommentList
    , CommentList
    , commentList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clPrevPageToken

    -- * BlogsListByUser'View
    , BlogsListByUser'View (..)

    -- * PostsGet'View
    , PostsGet'View (..)

    -- * PostUserInfo
    , PostUserInfo
    , postUserInfo
    , puiPostUserInfo
    , puiPost
    , puiKind

    -- * CommentsListByBlog'Status
    , CommentsListByBlog'Status (..)

    -- * PostReplies
    , PostReplies
    , postReplies
    , prTotalItems
    , prItems
    , prSelfLink

    -- * UserBlogs
    , UserBlogs
    , userBlogs
    , ubSelfLink

    -- * PostUserInfosList'OrderBy
    , PostUserInfosList'OrderBy (..)

    -- * PageImageAuthor
    , PageImageAuthor
    , pageImageAuthor
    , piaUrl

    -- * BlogsGet'View
    , BlogsGet'View (..)

    -- * CommentImageAuthor
    , CommentImageAuthor
    , commentImageAuthor
    , ciaUrl

    -- * PostItemImages
    , PostItemImages
    , postItemImages
    , piiUrl

    -- * Pageviews
    , Pageviews
    , pageviews
    , pagaKind
    , pagaCounts
    , pagaBlogId

    -- * BlogsListByUser'Role
    , BlogsListByUser'Role (..)

    -- * BlogPages
    , BlogPages
    , blogPages
    , bpsTotalItems
    , bpsSelfLink

    -- * PageViewsGet'Range
    , PageViewsGet'Range (..)

    -- * CommentPost
    , CommentPost
    , commentPost
    , cpId

    -- * Post
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

    -- * Page
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

    -- * PageviewsItemCounts
    , PageviewsItemCounts
    , pageviewsItemCounts
    , picTimeRange
    , picCount

    -- * PostUserInfosList'Status
    , PostUserInfosList'Status (..)

    -- * PostLocation
    , PostLocation
    , postLocation
    , plSpan
    , plLat
    , plName
    , plLng

    -- * CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtId

    -- * BlogPerUserInfo
    , BlogPerUserInfo
    , blogPerUserInfo
    , bpuiPhotosAlbumKey
    , bpuiKind
    , bpuiBlogId
    , bpuiUserId
    , bpuiRole
    , bpuiHasAdminAccess

    -- * PostUserInfosList
    , PostUserInfosList
    , postUserInfosList
    , puilNextPageToken
    , puilKind
    , puilItems

    -- * PostsList'Status
    , PostsList'Status (..)

    -- * User
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

    -- * PostImageAuthor
    , PostImageAuthor
    , postImageAuthor
    , pUrl

    -- * PageList
    , PageList
    , pageList
    , pEtag
    , pNextPageToken
    , pKind
    , pItems
    ) where

import           Network.Google.Blogger.Types.Product
import           Network.Google.Blogger.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v3' of the Blogger API.
bloggerURL :: BaseUrl
bloggerURL
  = BaseUrl Https
      "https://www.googleapis.com/blogger/v3/"
      443
