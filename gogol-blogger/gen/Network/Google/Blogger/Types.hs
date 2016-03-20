{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Blogger.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Blogger.Types
    (
    -- * Service Configuration
      bloggerService

    -- * OAuth Scopes
    , authBloggerScope
    , authBloggerReadonlyScope

    -- * PostsListOrderBy
    , PostsListOrderBy (..)

    -- * PostsListView
    , PostsListView (..)

    -- * PageViewsGetRange
    , PageViewsGetRange (..)

    -- * PostUserInfo
    , PostUserInfo
    , postUserInfo
    , puiPostUserInfo
    , puiPost
    , puiKind

    -- * CommentsListView
    , CommentsListView (..)

    -- * PostAuthorImage
    , PostAuthorImage
    , postAuthorImage
    , paiURL

    -- * PostUserInfosListStatus
    , PostUserInfosListStatus (..)

    -- * PostList
    , PostList
    , postList
    , plEtag
    , plNextPageToken
    , plKind
    , plItems

    -- * CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtId

    -- * CommentBlog
    , CommentBlog
    , commentBlog
    , cbId

    -- * Pageviews
    , Pageviews
    , pageviews
    , pKind
    , pCounts
    , pBlogId

    -- * PostLocation
    , PostLocation
    , postLocation
    , plSpan
    , plLat
    , plName
    , plLng

    -- * BlogPosts
    , BlogPosts
    , blogPosts
    , bpTotalItems
    , bpItems
    , bpSelfLink

    -- * PostsGetView
    , PostsGetView (..)

    -- * Post'
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

    -- * PostsSearchOrderBy
    , PostsSearchOrderBy (..)

    -- * CommentsListByBlogStatus
    , CommentsListByBlogStatus (..)

    -- * PagesGetView
    , PagesGetView (..)

    -- * PostUserInfosListOrderBy
    , PostUserInfosListOrderBy (..)

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

    -- * BlogsGetView
    , BlogsGetView (..)

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

    -- * BlogsGetByURLView
    , BlogsGetByURLView (..)

    -- * CommentsListStatus
    , CommentsListStatus (..)

    -- * BlogPages
    , BlogPages
    , blogPages
    , bpsTotalItems
    , bpsSelfLink

    -- * PostBlog
    , PostBlog
    , postBlog
    , pbId

    -- * BlogsListByUserStatus
    , BlogsListByUserStatus (..)

    -- * PageList
    , PageList
    , pageList
    , pllEtag
    , pllNextPageToken
    , pllKind
    , pllItems

    -- * UserLocale
    , UserLocale
    , userLocale
    , ulVariant
    , ulCountry
    , ulLanguage

    -- * CommentAuthorImage
    , CommentAuthorImage
    , commentAuthorImage
    , caiURL

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

    -- * UserBlogs
    , UserBlogs
    , userBlogs
    , ubSelfLink

    -- * PostReplies
    , PostReplies
    , postReplies
    , prTotalItems
    , prItems
    , prSelfLink

    -- * BlogList
    , BlogList
    , blogList
    , blKind
    , blItems
    , blBlogUserInfos

    -- * PagesListView
    , PagesListView (..)

    -- * PageBlog
    , PageBlog
    , pageBlog
    , pId

    -- * PostsListStatus
    , PostsListStatus (..)

    -- * PostAuthor
    , PostAuthor
    , postAuthor
    , paaImage
    , paaURL
    , paaDisplayName
    , paaId

    -- * PostPerUserInfo
    , PostPerUserInfo
    , postPerUserInfo
    , ppuiKind
    , ppuiBlogId
    , ppuiUserId
    , ppuiHasEditAccess
    , ppuiPostId

    -- * BlogsListByUserView
    , BlogsListByUserView (..)

    -- * PageviewsCountsItem
    , PageviewsCountsItem
    , pageviewsCountsItem
    , pciTimeRange
    , pciCount

    -- * PostUserInfosListView
    , PostUserInfosListView (..)

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

    -- * CommentsGetView
    , CommentsGetView (..)

    -- * CommentPost
    , CommentPost
    , commentPost
    , cpId

    -- * PostsGetByPathView
    , PostsGetByPathView (..)

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

    -- * PagesListStatus
    , PagesListStatus (..)

    -- * CommentAuthor
    , CommentAuthor
    , commentAuthor
    , caImage
    , caURL
    , caDisplayName
    , caId

    -- * BlogsListByUserRole
    , BlogsListByUserRole (..)

    -- * BlogUserInfo
    , BlogUserInfo
    , blogUserInfo
    , buiKind
    , buiBlog
    , buiBlogUserInfo

    -- * PageAuthorImage
    , PageAuthorImage
    , pageAuthorImage
    , pURL

    -- * CommentList
    , CommentList
    , commentList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clPrevPageToken

    -- * PostImagesItem
    , PostImagesItem
    , postImagesItem
    , piiURL
    ) where

import           Network.Google.Blogger.Types.Product
import           Network.Google.Blogger.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v3' of the Blogger API. This contains the host and root path used as a starting point for constructing service requests.
bloggerService :: ServiceConfig
bloggerService
  = defaultService (ServiceId "blogger:v3")
      "www.googleapis.com"

-- | Manage your Blogger account
authBloggerScope :: Proxy '["https://www.googleapis.com/auth/blogger"]
authBloggerScope = Proxy;

-- | View your Blogger account
authBloggerReadonlyScope :: Proxy '["https://www.googleapis.com/auth/blogger.readonly"]
authBloggerReadonlyScope = Proxy;
