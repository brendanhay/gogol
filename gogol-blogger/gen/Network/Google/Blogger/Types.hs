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

    -- * PostImages
    , PostImages
    , postImages
    , piURL

    -- * BloggerPostUserInfosListStatus
    , BloggerPostUserInfosListStatus (..)

    -- * PostUserInfo
    , PostUserInfo
    , postUserInfo
    , puiPostUserInfo
    , puiPost
    , puiKind

    -- * BloggerBlogsListByUserStatus
    , BloggerBlogsListByUserStatus (..)

    -- * BloggerPostsListView
    , BloggerPostsListView (..)

    -- * PostAuthorImage
    , PostAuthorImage
    , postAuthorImage
    , paiURL

    -- * BloggerPageViewsGetRange
    , BloggerPageViewsGetRange (..)

    -- * BloggerPostsListOrderBy
    , BloggerPostsListOrderBy (..)

    -- * PostList
    , PostList
    , postList
    , plEtag
    , plNextPageToken
    , plKind
    , plItems

    -- * BloggerCommentsListByBlogStatus
    , BloggerCommentsListByBlogStatus (..)

    -- * BloggerPagesGetView
    , BloggerPagesGetView (..)

    -- * BlogPosts
    , BlogPosts
    , blogPosts
    , bpTotalItems
    , bpItems
    , bpSelfLink

    -- * PostLocation
    , PostLocation
    , postLocation
    , plSpan
    , plLat
    , plName
    , plLng

    -- * CommentBlog
    , CommentBlog
    , commentBlog
    , cbId

    -- * PageviewsCounts
    , PageviewsCounts
    , pageviewsCounts
    , pcTimeRange
    , pcCount

    -- * BloggerPostUserInfosListOrderBy
    , BloggerPostUserInfosListOrderBy (..)

    -- * CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtId

    -- * Pageviews
    , Pageviews
    , pageviews
    , pKind
    , pCounts
    , pBlogId

    -- * BloggerPagesListStatus
    , BloggerPagesListStatus (..)

    -- * BloggerPostsGetByPathView
    , BloggerPostsGetByPathView (..)

    -- * Post
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

    -- * Page
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

    -- * PostBlog
    , PostBlog
    , postBlog
    , pbId

    -- * BloggerBlogsListByUserView
    , BloggerBlogsListByUserView (..)

    -- * BlogLocale
    , BlogLocale
    , blogLocale
    , blVariant
    , blCountry
    , blLanguage

    -- * PageAuthor
    , PageAuthor
    , pageAuthor
    , paImage
    , paURL
    , paDisplayName
    , paId

    -- * Blog
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

    -- * BlogPages
    , BlogPages
    , blogPages
    , bpsTotalItems
    , bpsSelfLink

    -- * CommentAuthorImage
    , CommentAuthorImage
    , commentAuthorImage
    , caiURL

    -- * BloggerCommentsListView
    , BloggerCommentsListView (..)

    -- * PageList
    , PageList
    , pageList
    , pllEtag
    , pllNextPageToken
    , pllKind
    , pllItems

    -- * User
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

    -- * UserLocale
    , UserLocale
    , userLocale
    , ulVariant
    , ulCountry
    , ulLanguage

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

    -- * BlogList
    , BlogList
    , blogList
    , blKind
    , blItems
    , blBlogUserInfos

    -- * BloggerBlogsListByUserRole
    , BloggerBlogsListByUserRole (..)

    -- * BloggerPostUserInfosListView
    , BloggerPostUserInfosListView (..)

    -- * PostAuthor
    , PostAuthor
    , postAuthor
    , pImage
    , pURL
    , pDisplayName
    , pId

    -- * BloggerCommentsGetView
    , BloggerCommentsGetView (..)

    -- * PageBlog
    , PageBlog
    , pageBlog
    , pbbId

    -- * BloggerBlogsGetByURLView
    , BloggerBlogsGetByURLView (..)

    -- * PostPerUserInfo
    , PostPerUserInfo
    , postPerUserInfo
    , ppuiKind
    , ppuiBlogId
    , ppuiUserId
    , ppuiHasEditAccess
    , ppuiPostId

    -- * BloggerCommentsListStatus
    , BloggerCommentsListStatus (..)

    -- * BloggerBlogsGetView
    , BloggerBlogsGetView (..)

    -- * CommentPost
    , CommentPost
    , commentPost
    , cpId

    -- * BloggerPostsListStatus
    , BloggerPostsListStatus (..)

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

    -- * CommentAuthor
    , CommentAuthor
    , commentAuthor
    , caImage
    , caURL
    , caDisplayName
    , caId

    -- * BloggerPostsGetView
    , BloggerPostsGetView (..)

    -- * PostUserInfosList
    , PostUserInfosList
    , postUserInfosList
    , puilNextPageToken
    , puilKind
    , puilItems

    -- * BloggerPostsSearchOrderBy
    , BloggerPostsSearchOrderBy (..)

    -- * BlogPerUserInfo
    , BlogPerUserInfo
    , blogPerUserInfo
    , bpuiPhotosAlbumKey
    , bpuiKind
    , bpuiBlogId
    , bpuiUserId
    , bpuiRole
    , bpuiHasAdminAccess

    -- * CommentList
    , CommentList
    , commentList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clPrevPageToken

    -- * PageAuthorImage
    , PageAuthorImage
    , pageAuthorImage
    , paiaURL

    -- * BloggerPagesListView
    , BloggerPagesListView (..)

    -- * BlogUserInfo
    , BlogUserInfo
    , blogUserInfo
    , buiKind
    , buiBlog
    , buiBlogUserInfo
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
