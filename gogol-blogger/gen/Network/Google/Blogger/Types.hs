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

    -- * Status
    , Status (..)

    -- * Image
    , Image
    , image
    , iURL

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

    -- * OrderBy
    , OrderBy (..)

    -- * BloggerPagesGetView
    , BloggerPagesGetView (..)

    -- * Location
    , Location
    , location
    , lSpan
    , lLat
    , lName
    , lLng

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

    -- * Blogs
    , Blogs
    , blogs
    , bSelfLink

    -- * BloggerPagesListStatus
    , BloggerPagesListStatus (..)

    -- * BloggerPostsGetByPathView
    , BloggerPostsGetByPathView (..)

    -- * Pages
    , Pages
    , pages
    , pTotalItems
    , pSelfLink

    -- * Locale
    , Locale
    , locale
    , lVariant
    , lCountry
    , lLanguage

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

    -- * Blog
    , Blog
    , blog
    , bId

    -- * BloggerBlogsListByUserView
    , BloggerBlogsListByUserView (..)

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
    , bloStatus
    , bloKind
    , bloPages
    , bloLocale
    , bloPublished
    , bloURL
    , bloCustomMetaData
    , bloSelfLink
    , bloName
    , bloId
    , bloUpdated
    , bloPosts
    , bloDescription

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

    -- * Replies
    , Replies
    , replies
    , rTotalItems
    , rItems
    , rSelfLink

    -- * Role
    , Role (..)

    -- * BlogList
    , BlogList
    , blogList
    , blKind
    , blItems
    , blBlogUserInfos

    -- * Range
    , Range (..)

    -- * Author
    , Author
    , author
    , aImage
    , aURL
    , aDisplayName
    , aId

    -- * View
    , View (..)

    -- * BloggerCommentsGetView
    , BloggerCommentsGetView (..)

    -- * PageBlog
    , PageBlog
    , pageBlog
    , pbId

    -- * CountsItem
    , CountsItem
    , countsItem
    , ciTimeRange
    , ciCount

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

    -- * Posts
    , Posts
    , posts
    , ppTotalItems
    , ppItems
    , ppSelfLink

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

    -- * InReplyTo
    , InReplyTo
    , inReplyTo
    , irtId

    -- * BlogPerUserInfo
    , BlogPerUserInfo
    , blogPerUserInfo
    , bpuiPhotosAlbumKey
    , bpuiKind
    , bpuiBlogId
    , bpuiUserId
    , bpuiRole
    , bpuiHasAdminAccess

    -- * ImagesItem
    , ImagesItem
    , imagesItem
    , iiURL

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
    , paiURL

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
