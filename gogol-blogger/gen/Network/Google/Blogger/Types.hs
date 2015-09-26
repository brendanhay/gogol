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

    -- * Blog
      Blog
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

    -- * BlogList
    , BlogList
    , blogList
    , blKind
    , blItems
    , blBlogUserInfos

    -- * BlogLocale
    , BlogLocale
    , blogLocale
    , blVariant
    , blCountry
    , blLanguage

    -- * BlogPages
    , BlogPages
    , blogPages
    , bpsTotalItems
    , bpsSelfLink

    -- * BlogPerUserInfo
    , BlogPerUserInfo
    , blogPerUserInfo
    , bpuiPhotosAlbumKey
    , bpuiKind
    , bpuiBlogId
    , bpuiUserId
    , bpuiRole
    , bpuiHasAdminAccess

    -- * BlogPosts
    , BlogPosts
    , blogPosts
    , bpTotalItems
    , bpItems
    , bpSelfLink

    -- * BlogUserInfo
    , BlogUserInfo
    , blogUserInfo
    , buiKind
    , buiBlog
    , buiBlogUserInfo

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
    , caUrl
    , caDisplayName
    , caId

    -- * CommentBlog
    , CommentBlog
    , commentBlog
    , cbId

    -- * CommentImageAuthor
    , CommentImageAuthor
    , commentImageAuthor
    , ciaUrl

    -- * CommentInReplyTo
    , CommentInReplyTo
    , commentInReplyTo
    , cirtId

    -- * CommentList
    , CommentList
    , commentList
    , clEtag
    , clNextPageToken
    , clKind
    , clItems
    , clPrevPageToken

    -- * CommentPost
    , CommentPost
    , commentPost
    , cpId

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

    -- * PageAuthor
    , PageAuthor
    , pageAuthor
    , paImage
    , paUrl
    , paDisplayName
    , paId

    -- * PageBlog
    , PageBlog
    , pageBlog
    , pId

    -- * PageImageAuthor
    , PageImageAuthor
    , pageImageAuthor
    , piaUrl

    -- * PageList
    , PageList
    , pageList
    , pllEtag
    , pllNextPageToken
    , pllKind
    , pllItems

    -- * Pageviews
    , Pageviews
    , pageviews
    , pKind
    , pCounts
    , pBlogId

    -- * PageviewsItemCounts
    , PageviewsItemCounts
    , pageviewsItemCounts
    , picTimeRange
    , picCount

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

    -- * PostAuthor
    , PostAuthor
    , postAuthor
    , posImage
    , posUrl
    , posDisplayName
    , posId

    -- * PostBlog
    , PostBlog
    , postBlog
    , pbId

    -- * PostImageAuthor
    , PostImageAuthor
    , postImageAuthor
    , pUrl

    -- * PostItemImages
    , PostItemImages
    , postItemImages
    , piiUrl

    -- * PostList
    , PostList
    , postList
    , plEtag
    , plNextPageToken
    , plKind
    , plItems

    -- * PostLocation
    , PostLocation
    , postLocation
    , plSpan
    , plLat
    , plName
    , plLng

    -- * PostPerUserInfo
    , PostPerUserInfo
    , postPerUserInfo
    , ppuiKind
    , ppuiBlogId
    , ppuiUserId
    , ppuiHasEditAccess
    , ppuiPostId

    -- * PostReplies
    , PostReplies
    , postReplies
    , prTotalItems
    , prItems
    , prSelfLink

    -- * PostUserInfo
    , PostUserInfo
    , postUserInfo
    , puiPostUserInfo
    , puiPost
    , puiKind

    -- * PostUserInfosList
    , PostUserInfosList
    , postUserInfosList
    , puilNextPageToken
    , puilKind
    , puilItems

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

    -- * UserBlogs
    , UserBlogs
    , userBlogs
    , ubSelfLink

    -- * UserLocale
    , UserLocale
    , userLocale
    , ulVariant
    , ulCountry
    , ulLanguage
    ) where

import           Network.Google.Blogger.Types.Product
import           Network.Google.Blogger.Types.Sum
import           Network.Google.Prelude
